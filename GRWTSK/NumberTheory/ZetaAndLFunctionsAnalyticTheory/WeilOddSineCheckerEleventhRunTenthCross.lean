/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross

/-!
# Eleventh retained run against the tenth

These are the original global rows 13225 through 13271 and columns 8652 through 8758.
Reuse the certified tenth-run and eleventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [4467, 4619] and the sum window is [21878, 22030].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := Finset.Icc 8652 8758

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 4620 then
    (digit 0xe26262d8617131501ebd3898bddcb6dc4c6d0f408e263f3540f71324c00d7389955a0cb9c4cc5db0e6e2672100fc7134167defb89a54b1f31c4d524c618e26bebcb807136af7f51389bbafe619c4e12571b0e2725338dc713a16bab8b89d885a835c4f05e2380e27a566732713e4bb252b89fbc80fcdc502cc7d22e283f40d8a71434db4c2b8a25712b09c5186d5230e28f2a7bfa71491bdd39b8a55796ca5c5313ca8b6e29bf79be0714fb51396b8a8bd7ad39c54d35b9d2e2aa58f0407157180c9738ac8812cadc56c52f28ce2ba4b962c715f434a1238b0b699441c58e8df4dce2cbcc45577168351b40b8b5482f8edc5b3df98eae2ded750b67171eb9d1338ba3bdde1dc5dc3fee72e2f368a73a717c64ba9338bf90938cdc607a63e74e3097bd4ae71879e2d5238c54527335c636090cf6e3210c029f7193957de438cb585709dc6675e1b1ae33a13f96971a0480467b8d1c8c91c1c69b9a6942e3548e215971adb2e917b8d8950b979c6d2b23988e3707483e171bbd324ed38dfbb951ddc70c991246e38dc0ccf171caa5824ab8e73ac51b1c74941c0eae3ac6c4c5a71da269db338ef10e4241c7889e5ce4e3cc6ff75271ea52e68db8f73c2458dc7caa04acee3edc46a0e71fb269ff538ffbaa1ce1c80f383fbae41061e96c720c9de191b9088a62fb1c8565644bce4344064be721eb4987eb911a9592edc89fe9ba90e4595777a1723166883ab91b1561085c8ebe15d6ae47f9e6bf17244af4ba3b924cc42f6dc93a2b490ae4a70c3bd072588a55fcb92ecbb3bd5c98ab4fcd8e4cf9793bc726cf2f3fd39391154fc1c9dd6b6042e4f936d4c77281e44ceb39439ab5be9ca323ac732e523e016d272975963c1394e65530f9ca890ef6b6e54f892ae772ad4d185839596e98905cae1d329c8e57c279da272c3ba28a23964b3e1151cb3c72163ae5a9b0b9ab72da9b31e7b9703277469cb98d5f1c6e5d8198a4672f1eab210b97be796471cbf6e87744e60756dde97309a308f5b987d06a5b5cc5692ebfae6375d48f27321be79b83993ea1198dccb7be250ee668212861733a372c23b9a0319c96dcd1a528d1ce69996a4a3 (j - 4467) : ℤ) - 1000000000000
  else
    (digit 0xe9aded8e5574d804e03eba6c88a4661d3686ff25ae9b649eed474dc2c35183a6e98d8bcdd378d5a1b6e9be6eabb674e03775b03a709ae1f05d388c8f1a4e9c659b69a74e4259c96ba728e3e2c1d39845daa8e9ce090f5c74e7f5ab8c3a74726f3a1d3a7487278e9d57ac49274eba6abbd3a7646faa41d3b5cced06e9dcacf41174ef37ae03ba780b69d11d3c3cf9d6ee9e39dcb5d74f2a7cb23ba79bf4a24dd3d14cf6e8e9ea4b882974f5f624033a7b622d1b9d3de418daae9f0b478c274f921e1e63a7cf3a8669d3eaaa17d0e9f6d6fc8174fc2a36a1ba7e7356075d3f6836e22e9fcb1843274ff0e5cd2ba7fe0d4691d401ca8ceeea0242927b7501cd980fba813bc6799d40c7c94c6ea0788bc3d75046735173a8283d3c11d41696cb3eea0c82a8f07506da89ffba83b8a8795d420169b9cea112f12fb750926f6603a84d9f5a11d428f99784ea158cc808750b4be37cba85e77112dd4313d7790ea199aa94f750d48c468ba86e0d5959d438e01bf0ea1d57abe5750f1d16303a87c5e2f09d43fdf8ceaea20c2d8fb7510c85ff43a88965df99d44639fb66ea23db4e2275124a330dba895210a69d44bedc160ea26a03d847513a22b28ba89f8ca19dd450f96256ea2910ee177514cfee5e3a8a8a5eaf5d4555b8ba8ea2b2cbbd17515d32d4bba8b06a8085d4591314faea2cf317d07516aba329ba8b6d85159d45c1f0078ea2e63888275175915daba8bbeda1edd45e7e7b20ea2f7da9c37517db55fd3a8bfa90cc9d46030dcf4ea30412cfb7518323ef83a8c20982b5d46135a930ea30add93175185db704ba8c30e4b2dd4618c8e6aea30c38b1b75185daf34ba8c2b7047dd4613566a2ea3082352d7518322379ba8c103a3edd460303764ea2fe9df997517db1aa5ba8bdf475d1d45e7d31b2ea2efaa853751758a6693a8b98a1d69d45c1cb20eea2db4c3097516aae352ba8b3c594ddd4590f4062ea2c1879187515d1f8c5ba8aca82ce9d455558fdaea2a2629817514ce18f43a8a4338cadd450f07ecaea27de48cb75139f80d23a89a69b131d44be11670ea254160ee7512467805ba88f4ced09d446288ab4ea2250112f (j - 21878) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 153, crossSinc (4467 + j.val) = sincEntry (4467 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 153, crossSinc (21878 + j.val) = sincEntry (21878 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 4467 ≤ j) (hi : j ≤ 4619) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 4467, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 21878 ≤ j) (hi : j ≤ 22030) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 21878, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_right (show ¬ (8652 ≤ i.val ∧ i.val ≤ 8758) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 822221029800635445180164952524703964704682693636 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the tenth
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithTenthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (8652, 8758)) =
        822221029800635445180164952524703964704682693636 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (8652, 8758) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    change 8652 ≤ j.val at hjlo
    change j.val ≤ 8758 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
