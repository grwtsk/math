/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Eleventh retained run against the fourth

These are the original global rows 13225 through 13271 and columns 1177 through 1294.
Reuse the certified fourth-run and eleventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [11931, 12094] and the sum window is [14403, 14566].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1177 1294

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 12095 then
    (digit 0x74b441529bba58ee7fd1dd2bdddd23ce95a2175cd74aaa8dc373a541ff10a1d297575852e946d583a974a0feaef5ba4f48d38e5d2708ecfcae93369be4b7497453266ba4a6a5bb55d2498ddfaae91fe2fb46748d7ed253ba4585bfdf5d2225e3eaae90c4617bf7483adfe29ba409c382b1d1fb09b0d8e8f897f7377479d5285c3a3baefe26dd1d39a0524e8e4dd8251746ff6c5c83a36bf4c821d1ac1912eee8d11ba59a7466154d19ba31ce5ec09d18490b796e8bd575051745c33362cba2cdd70e99d15d0ad3fee8a9957326745252f96fba27edbf3b1d135914a1ce895daff057448770f473a230085d8dd10e2dfa7ce8822ce3d5743ea1ef6d3a1e17007edd0e6eac1cae86e900f3f7434d61055ba19326a31dd0bfd1765ae85b096b6f742b15e68f3a1453fcefdd098ebe5aee8479ddddf742163e4263a0f7cf1631d07243d208e8345246137417c27807ba0aae7e919d04be2eff8e8212b7c6d740e340d66ba05e9d990dd025d2e3e2e80e2e50ea7404bb0b1d3a01303537dd0001d3fa0e7fb5f89f473fb59d315b9fc82c1d15cfdacb8010e7e8c3e32d73f212c1b039f7e2acd01cfb5e70abce7d6600c3d73e8e82d2ab9f35120829cf91792b70e7c438a7a673dfdc6508b9eecf43c8dcf6d8b11eee7b252499973d6f1b181b9ea5e39c85cf4a25cf98e7a0b176cc73ce2a52ebb9e5ff21a51cf2752552ae78f5aa35a73c5888129b9e1b31636dcf05197072e77e5231a373bd0e6b1d39dd7b2dc31cee383ca22e76d9c712d73b4be361939d95879b65cec299e392e75d3d9d9173ac99fd5639d54c065f5cea26414a6e74d39dd6573a4a3d16a39d156daaa5ce82ea89aae73d954134739cddb7c3b9cd79f7dedce6435413ee72e53c26f739549aa25b9c9b6595edce464c0a58e71f794274738de99626b9c60cf4665ce2936823ce7110989887386bf5cb439c27eb7cd5ce0cfc1296e7030845e8737fccd19839bf0c8bcb5cdf1a3ef92e6f5790ad5737913bb0239bbb751bb1cdd735160ce6e85f4faf737295d112b9b87fe3e25cdbdb649bee6dbbe6f0b736c54bd6ab9b56715399cda52e138ce6cf99a5e17366521ac139b26db135dcd8da2bfd6e6c3f412ae73608f747639af947b94dcd771a5ce0e6b8d0b4b0735b0e463039acdc302adcd619ab938e6ae326b1c (j - 11931) : ℤ) - 1000000000000
  else
    (digit 0x7512f1d30aba88b1574e5d43f437f6cea1c78d9eb750ca55c24ba8585d9d71d425bde782ea0fa16a2a75062f6bb13a8245d210dd40b959380ea027968dc74ff919959ba7ef20d1bdd3f0d0f6a6e9f50414b274f8cd86f9ba7b8b5d245d3d576ac30e9e744c02774f1e4e038ba7812992e9d3b98d75ace9d93ed0ae74ead95a1dba74889ce1dd39d1c395ae9caf5bdda74e3acb2a53a70ee4852dd3802a0072e9bc6d108374dc60b052ba6d447fcb1d362bdf566e9ada861e774d4f721c03a698c2b919d344df6222e99eab5ac674cd71dd2b3a65c637b0dd32695ae36e98f79b27974c5d2c0023a61f393bc9d307e85d08e980172e0874be1bae6bba5e153295dd2e8df0bf2e970879f3974b64e92cfba5a2c0a2f5d2c9817060e960cee39f74ae6d5d5dba563913505d2a9d755e6e950f0e3a274a67a03923a523d49565d289e89c56e940f1918a749e767fb83a4e39a9f7dd269bd35bee930d4e881749664d06e3a4a2f35039d2495d247ce9209eeb95748e46f823ba461eec225d228d07936e91053a4bd74861efc9c3a4209d2961d2081f50dee8fff723d2747deee66d3a3df0ecf95d1e751d2aae8ef8d7d8e7475b8c07bba39d540fedd1c6702e0ee8df1aca8b746d7e977bba35b7d52fdd1a58298aee8cea32637746542796a3a3199b0aa1d184914c54e8be2aadd3745d06750e3a2d7bdadf5d163a484dee8adb57f697454cc9970ba295f5b531d142c47e3ae89d47b8c7744c96f55c3a25453957dd121f9724ce88ce5767574446796d8ba212e7bcedd1014b96e4e87c92d2af743c408aa53a1d1c28e4dd0e0c31bb0e86c53e461743423dbb8ba190f45d19d0c0682830e85c2cbe19742c1392bbba1508d6955d0a042d9aae84c216d0d742411b587ba1109ddb95d0805b4120e83c35f80b741c2046a4ba0d135c0c9d060b9614ee82c6e5e8274144144c83a09265065dd041652ca6e81cce9777740c76aa54ba0543b7621d02266834ee80d5a908d7404c26cdbba016c8b25dd003c53126e7fe162d0673fd267c9e39fda1c31ddcfe588ebdce7ef0544c873f5a4c41039f9e453c11cfc7b950ece7e02ba36773ee3f275e39f6352e531cfaa5de3bee7d18d072f73e6f783f2b9f29540a75cf8d7e0bc8e7c32d203473dfcfaffe39ef0574e59cf712112a0e7b50f8f64 (j - 14403) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 164, crossSinc (11931 + j.val) = sincEntry (11931 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 164, crossSinc (14403 + j.val) = sincEntry (14403 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 11931 ≤ j) (hi : j ≤ 12094) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 11931, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 14403 ≤ j) (hi : j ≤ 14566) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 14403, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1177 ≤ i.val ∧ i.val ≤ 1294) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := fourthRetainedRunPrice_eq ⟨i.val - 1177, by omega⟩
    have he : (⟨1177 + (i.val - 1177), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 140589591889469140670011383192838051217827677776 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the fourth
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithFourthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (1177, 1294)) =
        140589591889469140670011383192838051217827677776 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (1177, 1294) = crossColumns :=
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
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
