/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross

/-!
# Thirteenth retained run against the ninth

These are the original global rows 20236 through 20275 and columns 6208 through 6270.
Reuse the certified ninth-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [13966, 14067] and the sum window is [26445, 26546].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 6208 6270

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 14068 then
    (digit 0x1d1e76a7c10e8f7f0929c747e15c0b7ba40197e649d2093fd430e908d94214748688f84dba445279315d22b021b5ae919b75a6d748ef65d13ba488846fedd24ca8de20e92a86a28e74975bd2d23a4cb9d9e05d26e2baebae93b42e471749fb73efe3a50e624d11d28f822724e94be7ee3574a80689423a550c1bf65d2b0a3eb32e95c71932b74b0479c003a592ab4e3dd2d188aab0e96cdbace074b87864dc3a5d40e6dd9d2f2282372e97d221c2b74c096d53e3a614dab1a5d3127a236ae98d40ca2f74c8a0e2d83a654ffd069d332768ab6e99d33a96b74d09488273a6946da84dd352154da8e9acf6b6b774d86fc4f7ba6d31442edd3714e76cee9bc85fa4a74e0309ee4ba710e3d965d3901a28f2e9cbdd88b774e7d521d83a74dccd839d3ae70a116e9daf983ee74ef5b6087ba789bfe351d3cc4a3866e9e9d61c3274f6c174f2ba7c4add9d1d3e99f6628e9f86f910d74fe0580db3a7fe87d9e5d40668c1a0ea06c23247750525ae3eba8373f4485d4229f03eeea14ca60d2750c202fce3a86ec5c135d43e3b09eaea22848fb57512f341613a8a50d418dd45935d5f0ea2fed44f075199d2868ba8da0804d9d47388919cea3d011a5e75201c345fba90da89b85d48d2c8f94ea49bcbe9375266ebf383a93fe1ea99d4a61b4d2cea561cf5b3752c932dc53a970a72ef9d4be4e7414ea621e9a40753287f025ba99fec00add4d5bfdbf6ea6dbe9dee (j - 13966) : ℤ) - 1000000000000
  else
    (digit 0x1d1c37099b2e8df7a1910746e9dd76fba36bf45d01d1b17cb654e8d67f8399746a204cc3ba3480697bdd19f85639ae8cd83c61e7465a275edba32418b00dd18d8f1f1ee8c4891f7b7461257260ba30033a171d17b9e6688e8bb91ce72745caa616eba2dc6065e9d169b7b67ee8b2a0111e74583262043a2b8a7f3b9d157df8978e8a9b6245f7453be925fba295133b11d1461a56a6e8a0d6434d744f500fc93a271ab23f9d1346c90d4e89802a6ad744ae7f64c3a24e788bf1d122daa54ae88f3d8459744687606f3a22b8443d1d11168faace886890ebd74422f66ee3a208d70d85d1001befeee87de77443743de120733a1e67999e9d0eef7db2ce8755adecb74399da151ba1c4748691d0de01089ce86ce5731c743565fb403a1a2d05ba1d0cd3bb97ae86489505f74313b3d143a1819589b1d0bcac22f2e85c488f94742d1e727e3a160cc67a9d0ac566d18e85425430d742910a3c73a1407d30a1d09c3eb1dae84c2175e8742512d58cba120b001e9d08c68fbfae8443f2b8974212608803a1016cd8e5d07cd94604e83c805f20741d4b39283a0e2bb9119d06d937956e834e703207419835f9dba0c4a3e22dd05e9b6d22e82d7500c97415cf6f50ba0a72d5df9d04ff4e576e8262c37aa74123056c83a08a5f6ea5d041a3924ae81f0e7d2a740ea6ff6a3a06e4154c5d033ab0e8ee8181d9c0f740b344d3bba052da2589d0260edf4ae8115b540d (j - 26445) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 102, crossSinc (13966 + j.val) = sincEntry (13966 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 102, crossSinc (26445 + j.val) = sincEntry (26445 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 13966 ≤ j) (hi : j ≤ 14067) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 13966, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 26445 ≤ j) (hi : j ≤ 26546) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 26445, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (6208 ≤ i.val ∧ i.val ≤ 6270) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 13737729907818701183345314520917756875983278622 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the ninth
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithNinthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (6208, 6270)) =
        13737729907818701183345314520917756875983278622 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (6208, 6270) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    change 6208 ≤ j.val at hjlo
    change j.val ≤ 6270 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
