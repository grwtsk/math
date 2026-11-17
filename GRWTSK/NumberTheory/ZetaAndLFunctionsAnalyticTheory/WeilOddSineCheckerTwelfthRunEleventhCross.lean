/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross

/-!
# Twelfth retained run against the eleventh

These are the original global rows 15678 through 15741 and columns 13225 through 13271.
Reuse the certified eleventh-run and twelfth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [2407, 2516] and the sum window is [28904, 29013].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 13225 13271

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 2517 then
    (digit 0x1e2c406ed86f1526b7afb78a1572bd73c4cb310fc9e2458aeef2f1129a2a947881254b183c3c75bcf49e1c27efb3af0d0846e4b785fd300993c2ba91c8f5e13afffbdef08c38e163783d67ad24bc1a50e9b95e0af2c0c1cf045c6b7327819eafd273c087103fc5e01f227278effd3db7dc77f564e7093bf60d6faa1df8b0399f0efb2ae3ce777cfdda9723be32a54faddef2f10afaef66292da877a95dc97ebbcfcbff259de570d6422ef17bffb907781ee10dcbbbbf6db6d5ddb77c525aeec7849e4a7759978bdabba7af78255dd1462891cee75898fc07730638762bb92fa83acddc6de5ba2cee21e1c7f477065b8ee43b7ddccb611dbc42c8d18edcca0b8bb76db896a2d3b685b3a891db175e968ced75da495976aff71b32bb527ad9375da67a44f40ed1da2d1f67683aedbc93b3c40cb231d9b5270ac6ecc40f16fc7656bb1b4f3b25b24e7d1d90010ee14ec6934444c7629267c433b0ed4bab85d8488ce5c0ec0d27e86475fafbd1d43af7ad7f4f5d78ec69c1cebafffef5a75cc461d5b3ae04222821d6d2ea6f16eb51d29dc8759d108bcd3ac898400a1d6152565ceeaf2b68b96756d66731fbab0b587cd5d555a52620ea92c29eb1753d534f9e3a989fbc861d49497e9dcea320e05a7750ce2c136ba805cb2695d3d22c73e2e9d0b0322f74dc2088baba67f24dc49d30e920514e96ec0d39974ab1885163a4f6681989d249f8511ce90c57d1307479d6b07b3a36bf4e2edd1848f730ae8a98d44837448671d87ba1e02bfa95d0be87e1d2e8467973a4 (j - 2407) : ℤ) - 1000000000000
  else
    (digit 0x1d29730bb1ce949c36d7174a3f650493a5184ff905d288731bb2e9425d56bd74a03fb02a3a4fa7ec83dd2797ca6c8e93adb4bd2749c7b516eba4dc418045d26a5115fce9333f2b3e7498aa24373a4bd9fa8d1d25af43076e92b8ada327494cd1be8ba49ea0e34dd24b69c9f6e923c044107490e52eef3a47f4ce8e1d23bb5c1e6e91be159ed748cf35682ba45fab8889d22bdc025ae913f012157488f88e673a43fc4a535d21be07f1ee90bee67927484f5d4ad3a41fa033b9d20bc734b2e903de59a77480ec2975ba3ff4638e5d1fb942752e8fbc1eb56747cdc8eae3a3debec775d1eb4b61f8e8f39b22dc7478c807d3ba3be11fe1dd1daf0f54ce8eb6c09347474af99b03a39d48056dd1ca88f6b2e8e336a98e7470944a18ba37c690de1d1ba177f38e8dafd10d5746c771faf3a35b7d4dc5d1a9a0aa92e8d2c14d23746859219d3a33a8cff29d19928961ee8ca856d4574643b5754ba319a05dd5d188b35fcce8c24b803474601ec84d3a2f8bfa545d178452522e8ba159490745c047bc23a2d7f30e85d167e20232e8b1e5b81f7457ed78703a2b742ce2dd1578e1096e8a9bdf7487453dac455ba296b7125dd1474d665ee8a1a05c92744fcd646e3a2765800a1d137241518e8998ef01c744bc65c743a2562db3f1d1271628c6e8918bb7227447c6ae9d3a236403aa9d11727a6d8e88998b3757443cf5b5b3a216979479d1075c8d2ae881b7e2fe743fe1611c3a1f73bb079d0f7b8d10ce879eb3f3e743bfdbc093a1d8346b1dd0e8405e3ae87234bcce (j - 28904) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 110, crossSinc (2407 + j.val) = sincEntry (2407 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 110, crossSinc (28904 + j.val) = sincEntry (28904 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 2407 ≤ j) (hi : j ≤ 2516) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 2407, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 28904 ≤ j) (hi : j ≤ 29013) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 28904, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ (13225 ≤ i.val ∧ i.val ≤ 13271) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 113961735716096368700608990226289653674519908862 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the eleventh
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithEleventhRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (13225, 13271)) =
        113961735716096368700608990226289653674519908862 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (13225, 13271) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    change 13225 ≤ j.val at hjlo
    change j.val ≤ 13271 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
