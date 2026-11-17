/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross

/-!
# Thirteenth retained run against the eleventh

These are the original global rows 20236 through 20275 and columns 13225 through 13271.
Reuse the certified eleventh-run and thirteenth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [6965, 7050] and the sum window is [33462, 33547].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := Finset.Icc 13225 13271

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 7051 then
    (digit 0x1c93fca3c94e49eedc6b9724f039a52b9274c5b381c938d8e7eee49bb84e37724d8a7fd4b926a0a3055c93401edf8e49990439f724c983a7db9263863725c931472100e498767f53724c2d2e18392613ca311c930a9cceee4986b966e724c499cc5b92632f41a5c9322ab6c8e4996fda91724ceda6e1b92695ed225c935ca1c58e49b8359b6724e194af3b9273cb0509c93b87b400e49ea5de1a724fcc65a2b9282727bc1c94362ac94e4a2d6ee3a725206b1b3b929552c8cdc94d59ad76e4a815ccdb7254c7c814b92ac686fedc9596ad6bee4ae61792372580f1fe9392c7aee6c5c96793c188e4b5b8aecc725bdc0ea3392e72095b1c977d1806ee4be19e65a72602dc8253930ab6d8d1c98a20a010e4c783556f7265035ee9b93326a016dc99e7d27d6e4d1f2ef26726a5bc436b935e315785c9b4e29abce4dd666483727035c855b938e031bc1c9cd4bf856e4e9db24f77276901ad6393c1d48985c9e7b3bddee4f74e5eed727d694ad9b93f999d965ca0413e770e505bd00697284bfc763b94354643b1ca2265f16ce51523b7c1728c91dfb739474cc0375ca42a2d9e8e5257ef4567294ddc3b6b94b81c5991ca64c32250e536cae76b (j - 6965) : ℤ) - 1000000000000
  else
    (digit 0x1cfef294434e7f7ff7d6173fc36e67339fe37e3bf5cff2a983d8e7f9cd63eb73fd24b99339feb23b6e9cff697a36ce7fbd21d1c73fe2de6f0b9ff3a387a9cffaf2ae20e7fe0d2b2073ff522deb39ffcfb9b91cfffb993d6e8007e028374009147193a00729a9d1d004eb296ce803240a597401eae457ba0122b33f9d00a8628fee805fe9c5e74035eb0dd3a01dfd868dd01089323ee8090d05257404ec5150ba02a9db9bdd016f2cac4e80c4e843d74069363dd3a03808b209d01dc15e6ce80fc24c66740853804c3a0463b211dd024f33fbce8136783be740a2c381eba055318685d02c86a84ee8173d43ff740c1d16a6ba064e830a5d03479b93ce81b429aae740e25a126ba0755b3d8dd03cca7b9ce81f76895f74104556ee3a086869c01d04576e0f4e823d805ee74127bb17a3a098660c69d04e7cc3c6e82865fac57414c824963a0aaf521edd057d9e810e82d1f471e74172a1e7f3a0be2f4381d0618bfbdee83202bf4c7419a10807ba0d20fad11d06b9097dce8370f2d05741c2c44bc3a0e69170a9d075e53feee83c434fae741ecb330bba0fbaf77b9d0808763d0e8419ddcad74217d2c6f3a11164844dd08b745fb2e8471d7fb6 (j - 33462) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 86, crossSinc (6965 + j.val) = sincEntry (6965 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 86, crossSinc (33462 + j.val) = sincEntry (33462 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 6965 ≤ j) (hi : j ≤ 7050) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 6965, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 33462 ≤ j) (hi : j ≤ 33547) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 33462, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_right (show ¬ (13225 ≤ i.val ∧ i.val ≤ 13271) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 18584794845249682075580585836342038742977686820 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the eleventh
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithEleventhRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (13225, 13271)) =
        18584794845249682075580585836342038742977686820 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
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
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    change 13225 ≤ j.val at hjlo
    change j.val ≤ 13271 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
