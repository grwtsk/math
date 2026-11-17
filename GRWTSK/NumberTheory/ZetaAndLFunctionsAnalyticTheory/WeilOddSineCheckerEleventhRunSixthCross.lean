/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross

/-!
# Eleventh retained run against the sixth

These are the original global rows 13225 through 13271 and columns 2790 through 2913.
Reuse the certified sixth-run and eleventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [10312, 10481] and the sum window is [16016, 16185].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := Finset.Icc 2790 2913

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 10482 then
    (digit 0x1d2cc866a22e960b3148174ad903f0b3a5562e1ff1d29fe890cee94a5ad59674a25fa2e9ba4fc86bdc1d273045194e933e0c84374971ed2253a4a2634d55d245e4d7bee91d4a846e748bd099c6ba447da3f3dd218955f98e9069daa23748077cabcba3ed0221ddd1eb21339ae8efdfe02d7475173928ba391f19bc9d1bd93a9a2e8d916d2b07469b1bbaa3a336bf6615d18ff8201ce8c24831b9745e4a2aaa3a2db8246b9d16259fb2ae8ab79afda7452e35fa53a280510ad9d134c4a1d8e894b100b974478034753a22542811dd107437b34e87df3d7a8743c23829a3a1ca6d73f9d0d9e1eb80e86747e6357430d022873a16fe8a3f5d0acab5154e850b2dabc742588eae8ba115cac209d07fab02c6e83a3a5f00741a50afef3a0bc2a69e9d052ec4a96e823e416bd740f2a429bba0631e1c55d0267a6552e80db59e3e7404187009ba00abc3979cffa607e92e7f7b488f573f91e00bb39fb31afb55cfcea9ae1ce7e1e6601473ee3db7e4b9f5c507015cfa360f524e7cc50a12a73e37a52beb9f067274a5cf78913b80e7b6f8bcc373d8d687d1b9eb196af15cf4e454cf2e7a1e4150373ce550649b9e5dd28929cf2487d66ce78d17fc5573c3f8754839e0b3b2b09cefb63635ce77899b40973b9c3733939db9e575cdced2e25b08e7646e6b0a73afb89528b9d69e5fe51ceab0efdece7509b3c8673a5da661e39d1b5107edce83f3631ee73d252eab739c2b6676b9cce3a7f6dce5d9975c8e72a11315c7392ae0b4139c82b5f5edce380af2a2e717641cf6738964bda2b9c38d69be9ce13516576e70522b110738051da3539bf0af3c6dcdef7626bae6f351934b737777b072b9baa523845cdcc82592ce6e1f54e1f736ed8821c39b65d1814dcdaa7ee782e6d1124fb873667682a6b9b233e95e1cd89748222e6c0ace8d3735e53d6ac39ae2aa7c69cd696b9ceae6b0c94ba3735672935fb9aa425bf09cd4a6c6d0ce6a16b8ac1734ed4be0539a67c06759cd2c7ee6f0e69297981f73477c4b6cb9a2d89fa4dcd0faabc2ae68451440573406b1f71b99f5917441ccf3f7598ae6769c3c197339a30c7fb99bfe54511ccd96be524e6697c0a6c733325d319b998c934c79ccc00f3c86e65cf4148f732cf521663995ba8d669cca7e7f2ece651079ab473271292c1b992d3297a5cc90fc4f8ee645b9b6d573217faf51b99013caa71cc7b524c00e63b0d5be8 (j - 10312) : ℤ) - 1000000000000
  else
    (digit 0x1d441660586ea1e18784a750dbc596d3a8634ef31dd42c5340f6ea137a68757508630fa3ba838333e65d4169d0852ea088b47c67502e192aaba80bd89f41d40048b482e9fd4dc7ca74fd393dcf3a7de4a040dd3e95bc6a6e9f1c4adfb74f76b763d3a7af92a98dd3d1dbe6b2e9e5f2d31374f179aaad3a77fbe1821d3b9cee212e9d9db225a74eb6553053a74ed820e5d3a13aaa30e9cd8098e874e52feffdba71cecdad1d388255308e9c0e644ef74dedb0ac3ba6ea089fb5d36e9511a4e9b40f44f674d86834953a6b638092dd354903a8ae9a6fec71474d1d906603a68187ed85d33a1d4038e999b8082474cb2f205bba64c055c91d31f42b186e98c3e52fd74c46c29a1ba615bd9c59d304073804e97e94ff9d74bd91cfc5ba5debe25f1d2e8719650e970bf725674b6a1c66aba5a714a201d2cc88a678e962c11af874af9dc6d6ba56ecee57dd2b0535832e9549d73f274a8878f84ba535faee19d293d8af32e94658017b74a160e3b6ba4fca6dee9d2771fc162e937f450ac749a2b8b053a4c2e0fccdd25a2fb52ae92975f6a47492e950edba488b7aaf1d23d0fbf9ce91ae08f9e748b9c045fba44e396725d21fc722b2e90c37be10748445774b3a41374c655d2025d2b78e8fd7f29bf747ce77e2aba3d87870ddd1e4d93046e8eeba7eda747583ef8f3a39d531ee1d1c7428edae8dfed6d09746e1ca3acba3621394a5d1a9a0aa94e8d11ba68b7466b373dfba326c89eddd18bfaea8ee8c248df41745f4a3a3c3a2eb810efdd16e58b7d0e8b378cbc67457e2d1143a2b04bb77dd150c17b70e8a4af208174507f12823a275376829d1333c9cb4e895ef90b8744920d7f23a23a52ea79d115d17f40e8873dcda27441c9f9abba1ffacfdc5d0f8878136e8789d857c743a7c4e5bba1c55453b1d0db65f962e86a12629d743339aa9e3a18b578c61d0be743566e85ba00a8a742c03e0893a151c532f1d0a1b977dce84d4a1d0c7424dcbf37ba118abb9a9d0853cf68ee83f143349741dc61255ba0e0197681d06905d89ee83101dedb7416c1a1adba0a81c9f71d04d1b34c6e82316a8ec740fd130b3ba070c346e9d031840f84e8155611517408f67e16ba03a1b5849d016475960e807c38dac740233434fba004329459cffb6bed26e7fa62888973fb89343139fcf168de1cfe0f88e32e7ed36608873f4f9fe7b39f9ad4a62dcfc6f3e6bee7e042677c (j - 16016) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 170, crossSinc (10312 + j.val) = sincEntry (10312 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 170, crossSinc (16016 + j.val) = sincEntry (16016 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 10312 ≤ j) (hi : j ≤ 10481) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 10312, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 16016 ≤ j) (hi : j ≤ 16185) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 16016, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_right (show ¬ (2790 ≤ i.val ∧ i.val ≤ 2913) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := sixthRetainedRunPrice_eq ⟨i.val - 2790, by omega⟩
    have he : (⟨2790 + (i.val - 2790), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 151518659489965702407036531995947466506148256040 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the sixth
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithSixthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (2790, 2913)) =
        151518659489965702407036531995947466506148256040 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (2790, 2913) = crossColumns :=
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
    change 2790 ≤ j.val at hjlo
    change j.val ≤ 2913 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
