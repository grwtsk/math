/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross

/-!
# Ninth retained run against the sixth

These are the original global rows 6208 through 6270 and columns 2790 through 2913.
Reuse the certified sixth-run and ninth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [3295, 3480] and the sum window is [8999, 9184].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 6208 6270
private def crossColumns : Finset (Fin 32768) := Finset.Icc 2790 2913

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 3481 then
    (digit 0x1e0d27379b0f071b218d9783d069ed43c2092c1679e114d6970ef0926dea9c784d295f44bc288668da9e15384eb98f0b14d12b0785c5cabc4bc3001c88fde18e6ca25af0ce46c323786a9c2bb33c3702bb6cde1c57ccc76f0e952a1a97877e3c08e3c3d87398bde1f8a565e6f10268c9f378842f871b3c438d58ce9e227d759f2f11981cfea788f7bd87f3c49134d68de253048788f12e96c1c97899c54b4c3c4e176a655e27a1fc546f141a12a2478a308b47d3c529822219e29d1ce554f1529b11c978ab432863bc569406c2de2bbf0b8f6f1617f018378b271fb87bc5a09caa45e2d69113f6f16e4803c678b892c3773c5cf840bcde2ecf4cfb8f178f1a63378bda357843c5f5e5cfcde2ff13ce1ef18177fb0078c1a1d177bc613b34a39e30ce6fc2af187d79a4378c48c8e303c628dfe8ede31668545cf18c0da31778c6622e303c6356137f5e31b92e0cef18e17bca478c72196213c6392ee565e31c62bd16f18df4170578c6c9ef3e3c63442c4c5e318d517def18ba16c0c78c55aa7b4bc62698d1c5e310e83436f1871effe778c2d372f23c6102f32a1e3049b6aacf1806ca19f78bf3449ddbc5f10639c1e2f3ef2a20f1778aab7678ba7d6b063c5c9206715e2dee4f840f16c7a032978b4af5ababc5988268a1e2c57f71def15f3c1a0278adcae3143c55f331abde2a7c24ae4f14fd2ecda78a5d113ebbc51d3b879de285b24e20f13e4103e7789cc342c43c4d2a6e66de25f555ca8f12a8972707892a30a9b3c47f8299d9e234b26d1cf114afd6617887724bafbc423de2dfde205d18a86f0fcb857b5787b332b343c3bfcb55e1e1d2bbd30ef0e2a7a7c3786de812ef3c3535de855e19b7b7652f0c6830064785f93b0cbbc2deabdc65e1601bb38af0a8502300785038f658bc261cd4519e120a8d762f08815576a783fdb1835bc1dcdc4cd1e0dd30398ef065d96aa9782e7d8d71bc14ff53001e095c03a1af041a3ad96781c240ed6bc0bb363781e04a683e80f01b7bf35d7808d296233c01ebfb22ddffb38ae70eff36a8fd877f48d5d39bbf7ab3ee3ddfa842f05eefc97855d077df58dd363becf3731e1df519965c8ef9dae951877c939cd7c3be1c6fb37ddef74f6744ef7017188c77b23522b03bd62859161de9979404aef40bc23ea779a500da23bca1a2c8fdde382c2abcef0fa8719777818ffa283bbd9f32d91ddd37e4a3aeedce730357767fa8decbbb0ba45e81dd6b86a72ceea884002e774d95a7273ba36e5bd15dd005d299cee728af1117732675b4f3b95be861c1dc921a93d4ee3b087ed9771675f5b7bb87adf1119dc20d87cbcee02098f1b (j - 3295) : ℤ) - 1000000000000
  else
    (digit 0x1d4cf7bd20cea6d72e3e6753990e66dba9e32a3351d4fcda19aeea840936037544cf78c7baa3cb8a325d5296d8a34ea9a38b001754fd9e98cbaa94a0605dd5552ad192eaaffbaf17755aad6a833aaeacb12d1d58006d0baeac54caa577565473a8abab3f22cc99d5a9f69e70eada263413756fa4a650bab91920f99d5d2ef8a0aeaee82fb437579c308ffbabe203d2f1d5fae71e32eb025dccd875839fccec3ac3063886dd621d32386eb15b19515758d386c3a3ac7c9d21a5d647a9a338eb287960d975968a71873acc69d1539d66c60e998eb3ab05ee3759f9378873ad0e5063b9d68fef8894eb4c51e10c75a8512ea23ad53a49c99d6b24c5a1ceb5d595d7d75b0c1538dbad9687e2d5d6d36e8280eb6dc26fd875b8e1b9e03add6e8f195d6f34d72b0eb7d88da5675c0b047a13ae14b720a1d711e0ea7eeb8ca886e675c82af6d23ae4fe268b1d72f20fab4eb9b1d883475cf4fd5f63ae885b6779d74b06071eeba8e41ab375d61d08933aebe1363c9d76588c896ebb5f8a59375dc90c7abbaef0fc5145d77ea24ed2ebc257bbb175e2a962363af2108d421d7964c0240ebcdfe1c8075e8653d8fbaf4e2c448dd7ac7fa5c4ebd8e8b4de75edc2d5e4baf785ab219d7c1375848ebe3149fe475f2c0be9a3af9f88e6cdd7d46d9662ebec7f27ac75f75da2aa3afc3ac6a21d7e61d3bb2ebf525c60775fb9845023afe4bb83cdd7f6418450ebfd06252875ff6f80d53b002ad3e59d804d60e0cec041e20477602e249eb3b01d79698dd811d6d9a0ec0a6bc4337605eface93b035189ca1d81d404bc0ec0fed4fdb760896cf953b04984384dd8270f2e1cec14a134c7760ad6f10f3b05ab66895d82f40b042ec1886178d760caf6a0abb068aa2671d835d2686cec1b9ad02b760e1facfcbb0735b3941d83ac2542cec1dde6a63760f2746433b07ac637fdd83e0ed90aec1f502602760fc5dc4abb07ee88a49d83fb6c4feec1fef771a760ffb2fa9bb07fc06941d83fb94ed4ec1fbc0632760fc71b34bb07d4ce025d83e16167aec1eb5b068760f2994103b0778dccbdd83acd252cec1cdc8787760e22a9b6bb06e83df99d835deed86ec1a30d20b760cb285fd3b062309c05d82f4c4b88ec16b30b1d760ad96d0cbb0529657edd827168474ec1263e281760897bd57bb03fb83b65d81d3f468eec0d443c757605edef8a3b0299a4021d811c8a8d4ec075531867602dc966ebb010413091d804b52a82ec00980e5275ff645ed23aff3b2a6edd7f607b29aebf90e534375fb860f5cbafd3f50c01d7e5c38f32ebf0b9b43b75f7428866bafb10f95add7d3ec74c4ebe79c1832 (j - 8999) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 186, crossSinc (3295 + j.val) = sincEntry (3295 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 186, crossSinc (8999 + j.val) = sincEntry (8999 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 3295 ≤ j) (hi : j ≤ 3480) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 3295, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 8999 ≤ j) (hi : j ≤ 9184) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 8999, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then
    ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_right (show ¬ (2790 ≤ i.val ∧ i.val ≤ 2913) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1314130193689852711637201739176317550416884019682 := by
  decide +kernel

/-- The exact lower cross contribution of the ninth retained run against the sixth
in `total_eq_retainedRunBlocks`. -/
theorem ninthWithSixthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (6208, 6270)) (retainedRunCells (2790, 2913)) =
        1314130193689852711637201739176317550416884019682 := by
  have hrows : retainedRunCells (6208, 6270) = crossRows :=
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
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    change 2790 ≤ j.val at hjlo
    change j.val ≤ 2913 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
