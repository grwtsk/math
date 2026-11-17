/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross

/-!
# Exact diagonal subtotal of the eleventh retained run

These are the original global cells 13225 through 13271 paired with themselves.
Use the existing certified eleventh-run prices. The signed sinc entries on
[0, 46] and [26451, 26543] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The kernel evaluation retains weight one on the diagonal,
two strictly below it, and zero strictly above it. This gives 47 diagonal
entries and 1081 strictly lower entries. The pair majorant retains the absolute
value of the signed sinc difference and the literal variation allowance.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def eleventhRun : Finset (Fin 32768) := Finset.Icc 13225 13271

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def diagonalSinc (j : ℕ) : ℤ :=
  if j < 47 then
    (digit 0x732ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0xe8dafd1740746c5f2d953a359fe0e65d1a881330ee8d201a5ef7467e158e6ba3360f1879d19689d7b6e8c9062c03746363c7c7ba312247dedd18495c982e8c00ce85c745ee799a23a2ee4739c9d172a985bae8b718197a745a6ded9fba2ca804479d160c98810e8ae29fcee7455f7e25e3a2a6d8917dd14efa497ee8a544cec474518695a9ba283590d35d13d403f24e89c6ac8fe744d1b24353a2600a9ab5d12b9fd930e8939e22fc7448b6a952ba23cf61165d11a1d81bce88ae110f474445a3eab3a21a243af5d108bd9bb8e88235c361744006fbfbba1f79dd10dd0f78481cce8799e667a743bbdf6cb3a1d56b7b2dd0e6768546e8711d21a474378042273a1b395cc71d0d597ed00e868b416e874334eee5eba19225417dd0c4ecf450e86065626c742f2b08bcba171223e51d0b479c9f8e8583319ea742b159b463a150950c35d0a4428f1ce8501f4c2874270fac76ba13085d7a1d0944b5632e8482c007a74231a3efeba110fcae25d084982200e8405b3639741f3651813a0f2017c81d0752ce4a0e838aee446741b64de55ba0d39c0c81d0660d7e76e83128f88b7417a6db48ba0b5d40325d0573dbd42e829cb577e7413fd395dba098b0dea9d048c15b20e82297dba9741068e492ba07c39f4a9d03a9bfda8e81b905531 (j - 26451) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 47, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 93, diagonalSinc (26451 + j.val) = sincEntry (26451 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 26451 ≤ j) (hi : j ≤ 26543) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 26451, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ eleventhRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 13225 ≤ i.val at hl
  change i.val ≤ 13271 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
  have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc eleventhRun eleventhRun = 29045649623210791872735387413099700351276462003300 := by
  decide +kernel

/-- The exact self-pair contribution of the eleventh retained run in
`total_eq_retainedRunBlocks`. -/
theorem eleventhRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (13225, 13271)) =
        29045649623210791872735387413099700351276462003300 := by
  have hcells : retainedRunCells (13225, 13271) = eleventhRun :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hcells]
  refine Eq.trans ?_ diagonal_cached
  symm
  apply triangleBlock_congr
  · intro i hi
    rw [Finset.union_self] at hi
    exact diagonalPrice_eq i hi
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    change 13225 ≤ j.val at hjlo
    change j.val ≤ 13271 at hjhi
    have hd : Nat.dist i.val j.val < 47 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
