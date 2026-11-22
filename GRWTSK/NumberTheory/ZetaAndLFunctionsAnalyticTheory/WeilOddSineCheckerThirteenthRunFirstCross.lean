/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Thirteenth retained run against the first

These are the original global rows 20236 through 20275 and columns 0 through 96.
The new row prices and the signed sinc indices 20140 through 20372 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. The kernel checks the exact subtotal using
the original triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

/-- The clipped prices on global indices 20236 through 20275, indexed from 20236. -/
def thirteenthRetainedRunPrice (i : Fin 40) : ℕ :=
  digit 0x18f1aab980c886d40240bd9a039ca0891d963a905888849cf035a94396d41f3aeebcb411aa62cfb409c879ed9c8554433cd8c2dd524baf2185d6a32f20cd4be317b06b3acaceb83799f1870e1ca43c0a790eaa35ed5f07775e589143c7eaf562c1e79fb9c700f46adfdac079e5c5ac383c7c6cdb9a1ddba764e90ea8e148a507282204e1c378ff3d8081ac81bfaef0cd07a00178614a266cdc2db9cc95561540156c0a09be121d94846448746c81efe3e4ce20d462f0c6b05733319250217f6c84280b654c76a802dee1bbf6 i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0xea1c4090e9750ed68690ba87c51b94dd440ed5d84ea21d3c8c3751195db60ba891f9cce9d44b97f186ea2714420475142ba4dd3a8a6542addd4559affc4ea2c00a4387516973964ba8b95b9af1d45ef3f69cea3097abce7518d7f9d1ba8cb0b3929d467a06eaaea34d82a6a751aed51a3ba8db5e76f9d46f9e2b70ea38c10735751cd6b7243a8ea511c75d476eb1be6ea3c513f23751e93ab8d3a8f7df4969d47d855afeea3f87e538752023bb26ba904057665d4836b3026ea426422c37521867d663a90ec07595d4889b0fb8ea44e537987522bb950aba9180d7395d48d139b68ea470a7a427523c2b033ba91fe9f849d490d3a294ea48d3582d75249b88773a92653e765d493da22a4ea4a3f55d2752545e2f5ba92b498115d496264740ea4b4e0ed47525c19067ba92ec96261d497b76a96ea4bff361d75260e6d2dba930d285a1d4988d1580ea4c5295f475262c61573a9316442c5d498a6ffaaea4c48100a75261b60ac3a9307e4f7dd498050faaea4bdf9d887525db6aafba92e20bf5dd496a75b08ea4b194f1275256c8aa33a92a4c03e5d4948e2640ea49f54cc27524ced781ba92500ec6dd491b9e4b2ea4873d62575240273ffba91e40a5edd48e2b3890ea4695422a7523078e7eba9160cbad1d489e2f2b4ea4459ff107521de61073a90c671291d484e21274ea41c2924c75208731383a90151f145d47f29c564ea3ecf986c751f025038ba8f4cff719d478bb6714ea3b81c4f1751d501aa3ba8e6e41fb5d4719880b8ea37d9e222751b70f8733a8d791c185d469c2c8d0ea33d8d0e17519655ce5ba8c6dc8cf1d4613c22baea2f7f886f75172dc6653a8b4c88b69d458069e42ea2acf16377514cabe65ba8a15a1e81d44e24771eea25c89d8775123cd945ba88c95fed5d443981468ea206d574b750f84b629ba876813ae9d438640806ea1abe91c5750ca2fed6ba85f2135edd42c8b0e0cea14bdb03675099867863a8467ba665d420100c0aea0e6c2a8b750665aebd3a82c9694d5d412f61066ea07cb8cff75030b9d1b3a811785a31d40540518aea00dd77ba74ff8b052b3a7f5279e65d3f6f22d2ae9f9a39e6e74fbe4c32e3a7d7ab56a9d3e80f2768e9f21fc7e974f819bce63a7b90ac3c1d3d89ae9f6e9ea53cda674f42ae15cba7994d7049d3c899433ae9e2419b5874f01928aa3a7787b2ecdd3b80e254ee9d9eb2e7374ebe593b63a7569c17e1d3a6fda516e9d15295ad74e7912bfa3a733b88819d3956bf938e9c879f07b74e31d033dba70fd91e09d3835d790ce9bf636e8c74de8a33553a6eb06b811d370d69b96e9b6114f4174d9d9dddc3a6c54a7239d35ddbf660e9ac85e11b74d50d2bebba69eada3f5d34a723c62e9a2c3812974d0254dd1ba67739ddbdd3369e3cd0e998cc9a7674cb237ac73a64ef8e6d1d32264e1eae98ea3a56c74c608f0a13a625f4baa9d30dcb2fc8e9844b273b74c0d6f3833a5fc37869dd2f8d6431ce979c5b13374bb8ecd8cba5d1cba745d2e38b4fe8e96f15e02774b631ce8bba5a6bba5f5d2cdefa03ae9643e5bc374b0c14ba33a57b123619d2b80892d6e95941d5e874ab3e9efcba54eda328dd2a1db99e2e94e2309fa74a5ab276e3a5221e9aedd28b6e3990e942e4bc3774a0084822ba4f4ea90e1d274c606b8e93789b904 (j - 20140) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem thirteenthRetainedRunPrice_eq_all :
    ∀ i : Fin 40,
      thirteenthRetainedRunPrice i = price literalRawDeficit ⟨20236 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem thirteenthRetainedRunPrice_eq (i : Fin 40) :
    thirteenthRetainedRunPrice i = price literalRawDeficit ⟨20236 + i.val, by omega⟩ :=
  thirteenthRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 233, crossSinc (20140 + j.val) = sincEntry (20140 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 20140 ≤ j) (hi : j ≤ 20372) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 20140, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then firstRetainedRunPrice ⟨i.val, h⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact firstRetainedRunPrice_eq ⟨i.val, by omega⟩

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 32836787054544585338034549778279134771180342996 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (0, 96)) =
        32836787054544585338034549778279134771180342996 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (0, 96) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have hv : j.val ≤ 96 := (Finset.mem_Icc.mp hj).2
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
