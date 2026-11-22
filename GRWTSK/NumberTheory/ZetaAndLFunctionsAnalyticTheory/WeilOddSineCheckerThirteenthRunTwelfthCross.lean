/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross

/-!
# Thirteenth retained run against the twelfth

These are the original global rows 20236 through 20275 and columns 15678 through 15741.
Reuse the certified twelfth-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [4495, 4597] and the sum window is [35915, 36017].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 15678 15741

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 4598 then
    (digit 0x389fbc80fcdc502cc7d22e283f40d8a71434db4c2b8a25712b09c5186d5230e28f2a7bfa71491bdd39b8a55796ca5c5313ca8b6e29bf79be0714fb51396b8a8bd7ad39c54d35b9d2e2aa58f0407157180c9738ac8812cadc56c52f28ce2ba4b962c715f434a1238b0b699441c58e8df4dce2cbcc45577168351b40b8b5482f8edc5b3df98eae2ded750b67171eb9d1338ba3bdde1dc5dc3fee72e2f368a73a717c64ba9338bf90938cdc607a63e74e3097bd4ae71879e2d5238c54527335c636090cf6e3210c029f7193957de438cb585709dc6675e1b1ae33a13f96971a0480467b8d1c8c91c1c69b9a6942e3548e215971adb2e917b8d8950b979c6d2b23988e3707483e171bbd324ed38dfbb951ddc70c991246e38dc0ccf171caa5824ab8e73ac51b1c74941c0eae3ac6c4c5a71da269db338ef10e4241c7889e5ce4e3cc6ff75271ea52e68db8f73c2458dc7caa04acee3edc46a0e71fb269ff538ffbaa1ce1c80f383fbae41061e96c720c9de191b9088a62fb1c8565644bce4344064be721eb4987eb911a9592edc89fe9ba90e4595777a1723166883ab91b1561085c8ebe15d6ae47f9e6bf17244af4ba3b924cc42f6dc93a2b490ae4a70c3bd072588a55fcb92ecbb3bd5c98ab4fcd8e4cf9793bc726cf2f3fd39391154fc1c9dd6b6042e4f936d4c77281e44ceb39439ab5be9ca323ac732e523e016d272975963c1394e65530f9ca890ef6b6e54f892ae7 (j - 4495) : ℤ) - 1000000000000
  else
    (digit 0x3a015ee5abdd00a469cb2e804ce42ce74023e3ab73a010b79e2dd007c534d6e8039a8f497401aae3a7ba00c510e71d005ac0a86e8029b0d49740131ae52ba008bbd105d003fba9fae801cfffa77400d2ba823a005f8d725d002b4853ee801399c2374008e21713a00408dd7dd001d6f41ae800d80b54740063f5c6ba002ec6c15d0016333f6e800ab68a1740054438dba002a3d60dd0015967c2e800b3c23474005f10353a0032f399dd001b997fee800f118fc7400845a8bba0048e7ff9d00283b2a6e8016360a77400c41ac03a006c15d65d003b78b36e8020a7fa674011e42653a009c7512dd00554dac2e802e64f34740192bc70ba00d9fa5e1d0075b3ff4e803f69b5d7402216d443a01249715dd009ca3f30e8053b230b7402ca32b1ba017c39525d00ca142aae806b3981574038ce4043a01e0cbe85d00fdf9a8ee8085f9f537404695208ba025236705d013847d2ae80a3ed0b474055f471b3a02d05d4a5d0178f071ae80c50b75474066e87333a035b21a71d01bfe3b88e80e94d19f740796cff0ba03f2618cdd020d10460e8110a91687408d7d8af3a0495f7e21d0260632a0e813b15c16740a3152953a0545bc74dd02b9c7e96e816888abf740ba2e8a8ba06018405dd031928836e8198f6a5b740d2c3fe43a06c920529d037e6d776e81cc53be9740eccf74cba079c60205d03e97dc9ee8202934a3741084a808ba087b0f495d045a3f0b8e823ba7e2a (j - 35915) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 103, crossSinc (4495 + j.val) = sincEntry (4495 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 103, crossSinc (35915 + j.val) = sincEntry (35915 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 4495 ≤ j) (hi : j ≤ 4597) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 4495, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 35915 ≤ j) (hi : j ≤ 36017) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 35915, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (15678 ≤ i.val ∧ i.val ≤ 15741) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 71897216939539594793217493734576650078443951540 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the twelfth
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithTwelfthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (15678, 15741)) =
        71897216939539594793217493734576650078443951540 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (15678, 15741) = crossColumns :=
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
    change 15678 ≤ j.val at hjlo
    change j.val ≤ 15741 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
