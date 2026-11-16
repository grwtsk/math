/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross

/-!
# Exact diagonal subtotal of the ninth retained run

These are the original global cells 6208 through 6270 paired with themselves.
Use the existing certified ninth-run prices. The signed sinc entries on
[0, 62] and [12417, 12541] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The kernel evaluation retains weight one on the diagonal,
two strictly below it, and zero strictly above it. This gives 63 diagonal
entries and 1953 strictly lower entries. The pair majorant retains the absolute
value of the signed sinc difference and the literal variation allowance.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def ninthRun : Finset (Fin 32768) := Finset.Icc 6208 6270

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def diagonalSinc (j : ℕ) : ℤ :=
  if j < 63 then
    (digit 0x722a6fd345b91e53c861dc93a5ba666e4c07b65d7f2719bc2887941587775fca4df43d04e547fff6ba72b4398bc4b96214ccd43cb4f3ffbaee5c6592c3772f23f3a7a398083e3f9dcc3e186ca0e63b7422cef32ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0xe78399ceed73c3c545cb39e2e0297cdcf1ef81cc8e7937cb53473cbc1454c39e6e35fab9cf3f3b0302e7a3b2830673d3e6398fb9eafad0661cf601dbc50e7b437387473dc32200739ef25791c9cf81982a16e7c506c13073e4a2ec1339f3625247dcfa3a20678e7d61cf58b73ed368784b9f7b04fa8dcfc632e664e7e7759b8073f5ead323b9fc0e608c1cfe9423ba8e7f90c67bd73febda7323a007b700d1d00cc75714e80adcfeb37407acd3f6ba04f6655a5d030b96a98e81ce2f5aa7410b62245ba097e23fb1d0550f8b76e82f19d3da7419d7540fba0e118c159d079c0b478e8417d138674230e24ee3a12af7ab6dd09ec3c830e85408231c742c584ab33a1756ca1b1d0c40f9336e866b666567435b375fcba1c0651f59d0e99ace70e879833760743f1d52c63a20bce7bb9d10f5c2166e88c69e80274489388fd3a25795eed9d1354a2494e89f65c2c3745213bd16ba2a3a8962dd15b5b63bae8b2720c1f745b9b90a4ba2eff3793dd181866042e8c58a03ad746528a2ef3a33c638e6dd1a7c19396e8d8a8e552746eb89188ba388e5bfadd1ce03717ee8ebc9ea6d747848f8ea3a3d566ef49d1f4426a8ce8fee84b117481d77508ba421d3fca5d21a74ee76e911ff3f2b748b61a1f03a46e19c909d240916e7ae92509ffbe7494e51c5b3a4ba253c6dd2668e5fc8e93803c80e749e5f824d3a505e34a31d28c623de0e94ae7d6d674a7ce73a8ba55140f5f5d2b2038cf8e95db16f7574b12f92caba59c2b584dd2d768dc54e9705bdb2074ba8085203a5e68fa379d2fc88c8b0e982e26a1274c3bef3be3a6305b2835d32159fe8ee9954074b574cce88bf73a6797b5a45d345d33c94e9a7715ccf74d5fafff13a6c1ddd541d369eb55e4e9b9708eae (j - 12417) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 63, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 125, diagonalSinc (12417 + j.val) = sincEntry (12417 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 12417 ≤ j) (hi : j ≤ 12541) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 12417, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then
    ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ ninthRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 6208 ≤ i.val at hl
  change i.val ≤ 6270 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
  have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc ninthRun ninthRun = 117820722750899871394213233462114240230154239736903 := by
  decide +kernel

/-- The exact self-pair contribution of the ninth retained run in
`total_eq_retainedRunBlocks`. -/
theorem ninthRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (6208, 6270)) (retainedRunCells (6208, 6270)) =
        117820722750899871394213233462114240230154239736903 := by
  have hcells : retainedRunCells (6208, 6270) = ninthRun :=
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
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    change 6208 ≤ j.val at hjlo
    change j.val ≤ 6270 at hjhi
    have hd : Nat.dist i.val j.val < 63 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
