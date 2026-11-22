/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross

/-!
# Exact diagonal subtotal of the twelfth retained run

These are the original global cells 15678 through 15741 paired with themselves.
Use the existing certified twelfth-run prices. The signed sinc entries on
[0, 63] and [31357, 31483] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The kernel evaluation retains weight one on the diagonal,
two strictly below it, and zero strictly above it. This gives 64 diagonal
entries and 2016 strictly lower entries. The pair majorant retains the absolute
value of the signed sinc difference and the literal variation allowance.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def twelfthRun : Finset (Fin 32768) := Finset.Icc 15678 15741

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def diagonalSinc (j : ℕ) : ℤ :=
  if j < 64 then
    (digit 0xe42fdfb94a722a6fd345b91e53c861dc93a5ba666e4c07b65d7f2719bc2887941587775fca4df43d04e547fff6ba72b4398bc4b96214ccd43cb4f3ffbaee5c6592c3772f23f3a7a398083e3f9dcc3e186ca0e63b7422cef32ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0x3a653d90a61d3279eda90e992a5967e74c8bc616a3a64123dbc5d31e2c6f12e98de0895a74c653f897ba62db1cf75d3145c2c8ce988ecdd5974c3d467073a61987b5a5d30a3080f6e983cbcc5e74c13e4b1c3a604aa8cedd2ffabf148e97e7e9bb974be9248e63a5ef1f80f1d2f4d118dee979069bd874bbd109fa3a5d8ebe929d2e9a2a8d6e9736527f474b8fb3d45ba5c2154781d2de23675ae96d9ba5b774b61196e63a5aaa1470dd2d2562efce967ab84e874b314cffb3a59295ba91d2c63dedf8e961963f0c74b005a677ba579f89b19d2b9dda57ce95b5d570a74ace4dcf43a560d00675d2ad3868ece9550258cc74a9b33a7e3a547223db5d2a0515d1ee94e86d8d974a6718a65ba52cf5a3a9d2932bb78ce947ec73f674a3209c0bba51250bb39d285cabd90e94134ceb9749fc142adba4f73a25c9d27831c38ae93a619524749c5455333a4dbb8a19dd26a642c16e933747a3c7498daadf4ba4bfd30825d25c656730e92c6f37987495552a88ba4a3904c45d24e38f156e925538cf87491c4ab8b3a486f778a5d23fe252b0e91e233fd2748e2a14653a46a0fadd9d231651e26e916e01ae2748a864b143a44ce020b9d222c4f086e90f8bedb87486da37f23a42f701881d214056f94e908288c44748326c579ba411c6ed01d2052a492ae900b7ce63747f6ce00e3a3f3ec04d1d1f6373248e8f93b8f67747bad75bcba3d5e6d371d1e72fe624e8f1b5ad9f7477e97605ba3b7bed775d1d8182544e8ea2809e6747421d19c3a3997b989dd1c8f3b48ae8e29487257470577a2dba37b24a5f5d1b9c65c40e8dafd09db746c8b6223ba35cc193f5d1aa93e728e8d36377a77468be7c683a33e59fa9dd19b602190e8cbc9b6cd7464f1bc273a31ff57395d18c2ed858e8c431adba (j - 31357) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 64, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 127, diagonalSinc (31357 + j.val) = sincEntry (31357 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 31357 ≤ j) (hi : j ≤ 31483) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 31357, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ twelfthRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 15678 ≤ i.val at hl
  change i.val ≤ 15741 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
  have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc twelfthRun twelfthRun = 195488751839816131407507161586799158467732845764681 := by
  decide +kernel

/-- The exact self-pair contribution of the twelfth retained run in
`total_eq_retainedRunBlocks`. -/
theorem twelfthRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (15678, 15741)) =
        195488751839816131407507161586799158467732845764681 := by
  have hcells : retainedRunCells (15678, 15741) = twelfthRun :=
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
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    change 15678 ≤ j.val at hjlo
    change j.val ≤ 15741 at hjhi
    have hd : Nat.dist i.val j.val < 64 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
