/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Eleventh retained run against the second

These are the original global rows 13225 through 13271 and columns 284 through 479.
Reuse the certified prices for both runs. Signed sinc entries are stored as
base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [12746, 12987] and the sum window is [13510, 13751].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 12988 then
    (digit 0x1d5571daf26eaa8d5f62975530ad42fbaa8d37e3a9d540fde53eea9da8a06f754d6586b43aa5f9912e5d529f4a356ea92073fa57547868d153aa302fb375d5120786f2ea85f4a9d975416f55f9ba9ff075761d4f93c676eea7973d1d8753b215e513a9cc2c024dd4df99548eea6c87c67575349e30f73a997aa2671d4c524950cea5f33b1cb752de76652ba9618ea19dd4a9e4a4feea517ad8737526fea3f13a929e6ba15d48de03456ea436098bf751fe59c21ba8f0c01b3dd4711e252cea34e869df75189e0d86ba8b628d259d453a58a12ea2615db0b751129c2ac3a87a2f4b09d4357da462ea16ec92a275098a9194ba83ce24bc1d416ade264ea07704d447501c25b463a7fe50f21dd3f73ddd88e9f7a4dce774f9d30b53ba7be8aaf41d3d735587ee9e78e27e674f1be9763ba77d9f43edd3b69c3d50e9d730280974e986feb5ba73b9ebcadd3957a9b6ee9c68ee98f74e12e49a1ba6f8996dd5d373d8a5ace9b5ae8a2574d8b6891a3a6b49fef8dd351beb042e9a49337eb74d021d6273a66fc31999d32f352eb6e99341306474c7725162ba62a13ff41d30c44b1c8e981bcbf6d74beaa2270ba5e3a3eb15d2e8f5e554e9700a3e2b74b5cb77773a59c845a9dd2c5518e24e95e2e11f774acd884943a554c6fa05d2a16087cee94c2cab4974a3d383503a50c7d9fb5d27d2bc274e93a0a8499749abeb2123a4c3ba47f5d258bc409ae927cc214674919c538f3a47a8f1055d2341b14dce915760c7574886eae3cba4310e3345d20f515fb2e9030cd7f0747f380bbdba3e74a038dd1ea684d2ae8f0951b047475fab8513a39d54e7a1d1c56912a0e8de137159746cb902403a353415529d1a05cec6ee8cb8c79cf746375394b3a30921cc51d17b4d1ba2e8b904d555745a31ae143a2bf08d345d15642e3b0e8a68125c37450f0b18c3a27508f16dd13147881ae894060caf7447b494603a22b34aae5d10c644a2ae881982a48743e7fa6623a1e19e7be1d0e7a2669ae86f3c1c2a74355435f8ba19858d3f1d0c30b1348e85cf67c3b742c348f86ba14f761181d09ea77ce6e84acbdf80742322fcdd3a107087d2dd07a80c4ace838c0d4f9741a21c4a3ba0bf22452dd0569ffe12e826d9e47b74113329c93a077d578d9d0330e2c88e8151b8d907408596af2ba031340401d00fd4412ee8038a465273ff96c1e839feb4faa89cfecfb189ce7f22a7a4f73f6ed630939fa63a03ddcfca8b78a4e7e100896a73ee5f7cbc39f62047695cfa88e0e20e7d010c6c673e5ef36e3b9f1ec03411cf870b6abce7bf5f77a873dd9eb25239edc7e3415cf660c02d8e7aef0d26b73d5700841b9e9b4f3091cf45982b5ae79ec8fd6a73cd6549cbb9e5b43a171cf25b817a0e78eec0df973c5807f6339e1c6bb859cf0673d768e77f5e075873bdc3a852b9dded75ca9cee7d354c6e77022d9b673b630ba3ab9da296276dcec9de5224e7613e612a73aec9a09039d67b75f69ceac9c684ee752b464c073a7903c24b9d2e49f535ce90150480e74488957f73a08662a8b9cf65c7f85ce744f668ce736be8d7d7399adde3539cbffd3765ce59529efce72959cef17393086cd939c8b39f4a9ce3f258d46e71c5dc351738c97c026b9c58202a51ce25cede14e70fcdba7773865d7cc439c26bce33dce0d550988e703ace9c073805b3a01b9bf71cbec1cdf5be519ce6f7fe6b45737a928172b9bc94bed75cddf10c084e6ecc53d09 (j - 12746) : ℤ) - 1000000000000
  else
    (digit 0x1d429ff8330ea11792c477506f6c0f9ba82973426dd40d8e4c9eea032c913874ffc68fc8ba7efa37e9dd3f07fbfbee9f4922eae74f86fed4f3a7b4a3c92dd3d2db08cce9e5ad9fb174f0f4a97fba77882b4e1d3b4a77aa8e9d682925e74e9569db93a73b4f1ef5d395ec8cfae9c714c70074e197ac53ba6fd182b85d376b1da5ce9b7680f1d74d9b9c0273a6bded41bdd356ff1e7ce9a7804c8874d1becc13ba67dde0815d336dc3434e99761706b74c9a8ca85ba63cfa606dd316511390e9870f7a4d74c179bcf83a5fb526419d2f565cfdce9768e771374b933ab763a5b8f65fedd2d422959ee965e27fff74b0d8a417ba575f6d02dd2b28fa896e9550fb9af74a86aba81ba532645c6dd290b561a6e9441a5311749fec0761ba4ee4fd381d26e9c2ccae93306845a74975ea7e5ba4a9ca2739d24c4c86fce921d88dfd748ec4bd39ba464e46841d229cefc12e91094b7967486206bfc3a41fafc1d1d2072c24a4e8ff3f4ee1747d73dbb8ba3da3d7569d1e46ca3eae8eddca69f7474c1365c3a3949ed68dd1c199258ce8dc711589746c0aa7ab3a34ee54665d19eba5b80e8cb00f5387463525cb9ba309222f7dd17bd8fbdce8b990a110745a9a835bba2c367014dd158fdbea8e8a82475287451e5499f3a27dc52c01d136315bb6e896c0cd35744934dd3b3a2384e1c01d1137c886ae8856a037274408b6b08ba1f31335a5d0f0e7f598e874246f897437eb1e753a1ae25d0d5d0ce7c4d50e862f46580742f5620f8ba1699734b1d0ac4230b4e851de349e7426ce998a3a12578934dd08a4235d0e840e6265b741e56ac15ba0e1db0541d06884e570e830107d4b7415f078f33a09ecf857dd04712b902e81f61740d740d9e1c5eba05c66ecfdd025f4186ce80edd3c3c740561adefba01ab1ee89d0053157fce7fe87fd5e73fd3d401239fd9c11289cfe4d2b644e7ee65d3de73f532df8239f99a4b2d9cfc4e05a0ee7de7acffd73ed4492c8b9f5a6cf6adcfa562504ee7cecaf4d373e57459b5b9f1c29ce7dcf86608a1ce7bf5a374673ddc42ce439edeeaf00dcf67e2daace7b02c7d0f73d635fd36b9ea2bfd269cf49f0f564e7a1459bbe73cecbb35b39e67b7a9fdcf2c926bdae792a957bf73c7872f51b9e2de164d5cf0fceabf6e7845b636973c06a47f0b9df54ba6b5cef3acfe0ce7765f5e1173b976ca6db9dbe04c581ced834830ae768b8d31973b2ae79ebb9d881ac591cebd6c329ee75b6b391073ac130f0539d539b5625cea35ad982e74e79f0d073a5a6375f39d2093cde5ce8a0717b4e741e844a1739f69953a39cef112795ce71775ed4e735b9676273995ebf09b9cbf1ffea9ce59b1f076e729f073bf7393873f0bb9c90cc8c2dce42bcdc8ee71e906b5e738de492e4b9c6422a395ce2c9dffece7139c36237388782b3db9c392dafc1ce175b02aee70916a16d7383436b6839c0ff8b011ce02f956e0e6ff025f60737e47a900b9be88e3599cdef7e3708e6f56206347379862b98b9bc2f86065cddceea4dae6ec380f8f7375002c6339b9f40dce5cdcb4f67e4e6e386d7dd7370b6d5e339b7d70e175cdbaa50c62e6db509db6736cab439eb9b5d912be9cdaaf3e206e6d397814c7368de81d6b9b3fa9ff6dcd9c3ffadee6cc5d83df7365518d41b9b23c32249cd8e8d2a4ae6c5a4873273620552c839b09e3dbddcd81df03f8e6bf6e4d14735efaaf4ab9af212f2c9cd7638dafce6b9bc76eb (j - 13510) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 242, crossSinc (12746 + j.val) = sincEntry (12746 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 242, crossSinc (13510 + j.val) = sincEntry (13510 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 12746 ≤ j) (hi : j ≤ 12987) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 12746, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 13510 ≤ j) (hi : j ≤ 13751) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 13510, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else secondRetainedRunPrice i

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 479 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_right (show ¬ (13225 ≤ i.val ∧ i.val ≤ 13271) by omega)]
    exact secondRetainedRunPrice_eq hi

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 242269528062551855671832414403975046956493208692 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (284, 479)) =
        242269528062551855671832414403975046956493208692 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (284, 479) = crossColumns :=
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
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
