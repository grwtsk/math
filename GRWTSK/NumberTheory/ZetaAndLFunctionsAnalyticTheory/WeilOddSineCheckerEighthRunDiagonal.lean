/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross

/-!
# Exact diagonal subtotal of the eighth retained run

These are the original global cells 5271 through 5331 paired with themselves.
Use the existing certified eighth-run prices. The signed sinc entries on
[0, 60] and [10543, 10663] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The kernel evaluation retains weight one on the diagonal,
two strictly below it, and zero strictly above it. This gives 61 diagonal
entries and 1830 strictly lower entries. The pair majorant retains the absolute
value of the signed sinc difference and the literal variation allowance.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def eighthRun : Finset (Fin 32768) := Finset.Icc 5271 5331

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def diagonalSinc (j : ℕ) : ℤ :=
  if j < 61 then
    (digit 0x1c93a5ba666e4c07b65d7f2719bc2887941587775fca4df43d04e547fff6ba72b4398bc4b96214ccd43cb4f3ffbaee5c6592c3772f23f3a7a398083e3f9dcc3e186ca0e63b7422cef32ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0xeb9f294bae75cfbff8afbae7f2dbe31d740178900eba040eeaf75d035765dbae8226f5c9d7413abfa4eba0a5d30075d0518b293ae8254a529d740f81728eba057bd0d75d0141edd3ae7fb63749d73f4f5b68eb9f569dee75cf7d2f9dbae7a4bca09d73c40b1aceb9da2937a75ce8cd1ecbae72162e3dd737cc98c2eb9b3be84475cd4330abbae6716e7a1d731f3e8deeb9823139375cba08d133ae59502c99d72ab7d380eb9458b94b75c9a53ea63ae48c4e5c9d72219e336eb8fdda9cf75c751b322bae3578ad71d7181bfb46eb8ab2e1d475c4a66e693ae1f6fcec1d70cc05754eb84d98a2975c1a40a60bae06af44c9d700098ad0eb7e52f77975be4b36d3badeb3cb97dd6f1fa8074eb7720a9fb75ba9cb948badcd1e8451d6e2967990eb6f444d1d75b6996cd53adac5ba8d1d6d1e10d52eb66bfb71f75b24241ecbad88fbd50dd6bfde27e4eb5d94e8a775ad983e24bad63075fb1d6ac920996eb53c60c4a75a89c7bfc3ad3a87462dd6980145c6eb4955760875a3502a953ad0f852a89d68230c1e2eb3e45a2c0759db48d6fbace20b511dd66b25b430eb329937987597cafc1b3acb2249e21d652e5a292eb2653015c759194e1e5bac7fdc9315d63976613eeb1975f3d4758b13bd83bac4b3f4bf9d61ede114aeb0c05290c75844920b5bac14597c71d603231f3eeafe03e097757d36afe63abdb386cadd5e64c4184eaef757ec57575de21c53ab9fe9f62dd5c86076c8eae05d8bd3756e413eddbab627c8079d5a9670444ead0bfb30f756661e1263ab22fefd95d589677406eac09fc1f3755e41f390baae180e665d568699312eab001a73c7555e3718f3aa9e1236edd546756f7cea9ee971ef (j - 10543) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 61, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 121, diagonalSinc (10543 + j.val) = sincEntry (10543 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 10543 ≤ j) (hi : j ≤ 10663) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 10543, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then
    eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ eighthRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 5271 ≤ i.val at hl
  change i.val ≤ 5331 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
  have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc eighthRun eighthRun = 57589607038825782442164158341589156094654355864785 := by
  decide +kernel

/-- The exact self-pair contribution of the eighth retained run in
`total_eq_retainedRunBlocks`. -/
theorem eighthRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (5271, 5331)) (retainedRunCells (5271, 5331)) =
        57589607038825782442164158341589156094654355864785 := by
  have hcells : retainedRunCells (5271, 5331) = eighthRun :=
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
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    change 5271 ≤ j.val at hjlo
    change j.val ≤ 5331 at hjhi
    have hd : Nat.dist i.val j.val < 61 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
