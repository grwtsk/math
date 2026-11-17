/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross

/-!
# Tenth retained run against the ninth

These are the original global rows 8652 through 8758 and columns 6208 through 6270.
Reuse the certified ninth-run and tenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [2382, 2550] and the sum window is [14861, 15029].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 8652 8758
private def crossColumns : Finset (Fin 32768) := Finset.Icc 6208 6270

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 2551 then
    (digit 0xf3187b76dc79872079073cc0f6dd25de5f2963e70f2ee9013627971d5399c3cb62698629e59ac003b0f2c1fb7852795b3674e9bcaaad1efa1e53da4a990f292c69b59794348bb95bc9e8cc41f5e4db572070f260fb1ff0792a10f4f1bc91c8063ede473ebb190f22ca35586790f945e0c3c84618e829e40777fb18f1f5ca357a78f3d888a8bc765c304d9e39612ebe4f1bc7b60f378d6e35a253c67bae8aa9e31fd4bed6f180c31e8478b8bb0a47bc5880ddb0de2a4d6f5f6f142ae57ae78996621f93c48b15dde5e225345528f1024a96307878eb79e93c384fdf675e1a108dc96f0bfa60132785752391ebc275fff7bde11871c2c6f07acf5a497834a1d372bc15e581839e08b8d6e64f033d5fa4e7810e207f8bc03e44e4f1dffa7b6fb8efeac9ce1277ec1adf543bf160733e1df655c79ceef9fbb52e477c654a9f5bbde5e215f5decc525b50ef52bb92fd779f97fe4b3bcae1ac845de2f7ff720ef03dc21b97777edb6dabbb6ef8a4b5dd8f093c94eeb32f17b5774f5ef04abba28c51239dceb131f80ee60c70ec57725f50759bb8dbcb7459dc43c38fe8ee0cb71dc876fbb996c23b788591a31db99417176edb712d45a76d0b675123b62ebd2d19daebb492b2ed5fee366576a4f5b26ebb4cf489e81da3b45a3eced075db79276788196463b36a4e158dd9881e2df8ecad76369e764b649cfa3b20021dc29d8d2688898ec524cf886761da97570bb09119cb81d81a4fd0c8ebf5f7a3a875ef5afe9ebaf1d8d3839d75fffdeb4eb988c3ab675c08445043ada5d4de2dd6a3a53b90eb3a21179a75913080143ac2a4acb9dd5e56d172ceadacce63f75616b0f9abaaab4a4c41d525853d62ea7aa69f3c75313f790c3a9292fd3b9d4641c0b4eea19c5826d7500b964d2ba7a458e7c5d3a160645ee9b841117574cfe49b893a61d240a29d2dd81a732e956310a2c749ecd03313a493f0a239d218afa260e8f3ad60f6746d7e9c5dba3091ee615d1531a8906e890ce3b0f743c057f52ba17d0fc3a5d08cf2e748e82dabe8be740a6dd92139ff024c969cfc669969ce7ca5edf8173d8c3e8b939e62c00ee9ceffafb210e766ffb42473a713fbf439cd5441d09ce38f68a6ae703a714d073756a6c99b9b4813d631cd726f9a26e6a06dc30d7343d39d62399bb925e31ccac4c797ee63d6c8dba73125bf6ef39830230229cbe6bed242e5dabc4b02 (j - 2382) : ℤ) - 1000000000000
  else
    (digit 0xe7003840fa7380dda25439c0d16852dce09aea1f2e706704dab738408489eb9c26e055b9ce16cda7bee70d1cc61473876cf2bab9c4278ad31ce24d3218ce7143c0ef5738b0acf65b9c5fd8e489ce33bbad66e71bcc701e738ee0fef339c7ef9e1c5ce4383b016e723cc14e17392ee938439c9fd419d9ce54275610e72c390c7f739732914039cc25f9255ce65a2945ce735114aa0739babee9239ce693e369ce77f1298ee73e52a7d573a059946ab9d0c6839f1ce8b0e9ed2e747fae21c73a53a5e8039d33d35995ce9ef648fee752079d6e73aa4d1b9ab9d5ccb9f01ceb3a349c0e75c76645273af908ddab9d87470255cec91090c2e76744a87573b5036b08b9db33b1985cedf38dceee7726fc34e73baa45ce5b9de09d1af5cef616bdb2e77df4f6c173c072017f39e0f61e015cf0da49464e789d16dce73c66aeb85b9e3f7de819cf25dc958ce796023d3f73cc8da2a639e70e55addcf3eb8ca6ae7a284646473d2d8a3e839ea38c0bc5cf58331256e7af54cdce73d94a620b39ed7657cb9cf72452456e7bc70501273dfe145ea39f0c64e139cf8ce8909ee7c9d3ae9173e69baeddb9f427d2199cfa816c22ce7d77b9a4273ed77f325b9f79a0de19cfc3c90068e7e564b28773f4746050b9fb1c27255cfdff870c8e7f38b860073fb8f3ba7b9fead3f891cffc9e1888e801ec93677402c6c29b3a024c74d2dd019b2de64e810844a6b740a192b33ba05f8e1229d0372f8c56e81f4f0c95741184a482ba09b19b2b1d0550cd162e82e492e2c7419075715ba0d75b66c1d073434364e83d6ef71e74209f656aba1144436bdd091cb60ece84cbca3ef74284aec693a151c4ff3dd0b09d9316e85c2e66a474300803d6ba18fce74c9d0cfb22f6ee86bc067b67437d4bed1ba1ce5127a5d0ef0179dae87b6ec70b743faf2c4cba20d3d87a1d10e83a682e88b359ce6744795578a3a24c83e809d12e30dbc8e89b10fae4744f8548963a28c148379d14e013432e8aafcecf874577d04c83a2cbdf7fd9d16decc06ee8baf57a61745f7a8f3eba30bd4f245d18deb8942e8caf6a6af74677be95dba34be4e311d1adf5918ae8dafc72bb746f7f1350ba38bff51bdd1ce02d840e8eb02ddac7477820c86ba3cc1438f5d1ee0b5a6ce8fb05e5f2747f82d436ba40c139295d20e071532e90b018a4974877f69dbba44bed5ba5d22dee07cce91af1cab9 (j - 14861) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 169, crossSinc (2382 + j.val) = sincEntry (2382 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 169, crossSinc (14861 + j.val) = sincEntry (14861 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 2382 ≤ j) (hi : j ≤ 2550) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 2382, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 14861 ≤ j) (hi : j ≤ 15029) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 14861, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_right (show ¬ (6208 ≤ i.val ∧ i.val ≤ 6270) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1492183987783337601919522223721082718673660215742 := by
  decide +kernel

/-- The exact lower cross contribution of the tenth retained run against the ninth
in `total_eq_retainedRunBlocks`. -/
theorem tenthWithNinthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (6208, 6270)) =
        1492183987783337601919522223721082718673660215742 := by
  have hrows : retainedRunCells (8652, 8758) = crossRows :=
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
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    change 6208 ≤ j.val at hjlo
    change j.val ≤ 6270 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
