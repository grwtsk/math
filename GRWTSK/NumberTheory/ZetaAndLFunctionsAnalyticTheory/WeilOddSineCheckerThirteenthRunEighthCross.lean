/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEighthRunFirstCross

/-!
# Thirteenth retained run against the eighth

These are the original global rows 20236 through 20275 and columns 5271 through 5331.
Reuse the certified eighth-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [14905, 15004] and the sum window is [25508, 25607].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 5271 5331

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 15005 then
    (digit 0x739732914039cc25f9255ce65a2945ce735114aa0739babee9239ce693e369ce77f1298ee73e52a7d573a059946ab9d0c6839f1ce8b0e9ed2e747fae21c73a53a5e8039d33d35995ce9ef648fee752079d6e73aa4d1b9ab9d5ccb9f01ceb3a349c0e75c76645273af908ddab9d87470255cec91090c2e76744a87573b5036b08b9db33b1985cedf38dceee7726fc34e73baa45ce5b9de09d1af5cef616bdb2e77df4f6c173c072017f39e0f61e015cf0da49464e789d16dce73c66aeb85b9e3f7de819cf25dc958ce796023d3f73cc8da2a639e70e55addcf3eb8ca6ae7a284646473d2d8a3e839ea38c0bc5cf58331256e7af54cdce73d94a620b39ed7657cb9cf72452456e7bc70501273dfe145ea39f0c64e139cf8ce8909ee7c9d3ae9173e69baeddb9f427d2199cfa816c22ce7d77b9a4273ed77f325b9f79a0de19cfc3c90068e7e564b28773f4746050b9fb1c27255cfdff870c8e7f38b860073fb8f3ba7b9fead3f891cffc9e1888e801ec93677402c6c29b3a024c74d2dd019b2de64e810844a6b740a192b33ba05f8e1229d0372f8c56e81f4f0c95741184a482ba09b19b2b1d0550cd162e82e492e2c7419075715ba0d75b66c1d073434364e83d6ef71e74209f656aba1144436bdd091cb60ece84cbca3ef74284aec693a151c4ff3dd0b09d9316e85c2e66a474300803d6ba18fce74c9d0cfb22f6ee86bc067b6 (j - 14905) : ℤ) - 1000000000000
  else
    (digit 0x73ec63592539f5e1f4739cfac99bee0e7d515e03073e9f16c7eb9f4acf3ae1cfa3118c62e7d061c42973e79f66a939f387f9929cf9a0a2746e7cbee59dd73e56ddeb439f27350a8dcf9185dbbae7c7bcc35573e35d639cb9f16f3f699cf8986d550e7c3ce123d73e16e7c2739f07c082d5cf820f1e7ae7c023479d73dfa1a6be39ef99e91c1cf7b209ffce7bcbd539973ddf7595239eec91c1c1cf74bd2076e7b99d153473dc70013bb9ee09d6c3dcf6ee643eae7b6c35a1273db0c031d39ed5c4a4c9cf699d8b58e7b430de4973d9cbbacbb9ecc0a3851cf64e45452e7b1e64c2f73d8af7b36b9ec370ac61cf60bbd8a4e7afe43c2c73d7b78e51b9ebbfa3e8dcf5d252e0ce7ae2b349473d6e43500b9eb5a8e3c1cf5a2145e4e7acbba98473d635a70939eb07e47d9cf57b0eceae7ab95fcc473d5ac130239eac7bcd19cf55d4cb0ae7aaba7dab73d5479e4839ea9a28be1cf548d632ee7aa29690b73d50864f1b9ea7f3525dcf53db1320e7a9e2e92373d4ee79c9b9ea76ea43dcf53be1368e7a9e7158e73d4f9e649b9ea814baa1cf54367742e7aa35f33d73d52aaa94b9ea9e583fdcf55442c90e7aacf747873d580bd78b9eace0a415cf56e6fbdee7abb378db73d5fc0c7039eb105740dcf591e8870e7ace1cd5f73d69c7ba2b9eb6530299cf5bea5054e7ae5a2c6773d761e5f0b9ebcc81425cf5f49ac7ae7b01c3dcb (j - 25508) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 100, crossSinc (14905 + j.val) = sincEntry (14905 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 100, crossSinc (25508 + j.val) = sincEntry (25508 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 14905 ≤ j) (hi : j ≤ 15004) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 14905, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 25508 ≤ j) (hi : j ≤ 25607) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 25508, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 5271 ≤ i.val ∧ i.val ≤ 5331 then eighthRetainedRunPrice ⟨i.val - 5271, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (5271 ≤ i.val ∧ i.val ≤ 5331) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 5271 ≤ i.val at hl
    change i.val ≤ 5331 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := eighthRetainedRunPrice_eq ⟨i.val - 5271, by omega⟩
    have he : (⟨5271 + (i.val - 5271), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 3890616638098419276154284460255516128174475824 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the eighth
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithEighthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (5271, 5331)) =
        3890616638098419276154284460255516128174475824 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (5271, 5331) = crossColumns :=
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
    change 5271 ≤ j.val at hjlo
    change j.val ≤ 5331 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
