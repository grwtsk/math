/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Sixth retained run against the second

These are the original global rows 2790 through 2913 and columns 284 through 479.
Reuse the certified sixth-run prices. The second-run prices and signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [2311, 2629] and the sum window is [3075, 3393].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 2790 2913
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def crossRowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨2790 + 62 * b.val, by omega⟩ ⟨2790 + 62 * b.val + 61, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 2790 + 62 * b.val ≤ i.val ∧ i.val ≤ 2790 + 62 * b.val + 61) ↔
    2790 ≤ i.val ∧ i.val ≤ 2913
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 2790) / 62, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem crossRowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 2))) crossRowSlice := by
  intro a _ b _ hab
  apply Finset.disjoint_left.mpr
  intro i ha hb
  have hne : a.val ≠ b.val := fun h => hab (Fin.ext h)
  simp only [crossRowSlice, Finset.mem_Icc, Fin.le_def] at ha hb
  omega

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def columnPrice (j : Fin 196) : ℕ :=
  digit 0x12cade92d8186969aad813b3e3a3c00d97e2281108a9f5e307854373d0530318a9adf801c7a276bdb10160f4c3588f6bd292444f0cd71ee22b2e45ac4a176922d3038c9c8ba0c6c6c1b87529239a4c8e1591e9b812d6010310d2bd10889849cd8447ce987a8925a5aaac9493b0887a720a4658a1f8a559d062df22c805695339717609c5b0bf669df2546301dc44c833247a33e39a6218824c8d97fe0cd906fef6b582a398b4fa8f71d8d565a2e8f296cea8507c589771e23fae5c64352095e6c28a90a921d30168830e484734587774af6a378bfd26dd2159d3ad6c936c822fac4b10ce8308263303f318936d761712a9e0056c69e5044ecdd4128c20488bcd4af5b2b676a7e2098d9c551ebedaaaab2344682f55da143e668b1080c2740599997481fad547a171996ec8332cfab969a3278d5db1336c4e2f5391d51317e5a5050b0c0feedc7216161bec492311eaf6b9358c492abeaac7c0ecaef564a7d64d97b2b42fc39bd98881dc116cda987d7e667808b552ab412aa3f855a30c5ad508d2b393792269e965d303b538f1d82d1abccf21970d6dad4020f6be06646e3b62615fc965b2c2d8cfeeda1c011cf46d64071af8b6d963337ddb7e8ededa4dc74c7b8c96e733d896cb752637ea6dbb3bfcb82edde3cb19766f0d7a0585b790de7fb49bcbabd6ffade68a4eec26f32a827d93794d95ecc5bc65d409e6de03e473246ee32e1ef0375e9673911ba3fccfb52dcb70c94ba6e1feba53cb6ee94b0cf9b64d181f4cda84912b666cea387e1a36458ed41ddb09401bbb4d76fd340456b43e27c1635647a5a44da91ca9b09ed37d1c6b2d692f2b12c4344c8639f559ff0f8db9eceb1994c3b66aec477bdb2ff196651d951c94be54c91353283563c5ce5583317dd11af4588acd1744ec2a928aec46077d214b0afca7ef39cd7ab0a209babb7ac5f3715cc8bebf4eade726d18b96b388744e2b3909ba1ea58bce4834eabd5fc90ea95a567cf4bcaaf3d577a85458efd8aca9996190d45481de5d986a1ae500d3c4fa1e450f6a733e210a5134a3763d3e97ca8dfa2e4a9d171580a4a832656251ffd1d532c8d53ac5f7a4550291a62a1f92c0a4390a41ed75d8825556e47f3fc1010c1e1f29ca8f7a8f38a035dba76dbbb331c39f5c4fecd9c3d286a498dbee6c69786af37c007233f4d3e4d599367ba9ff0c3890c12aa5ea9a3aec92dc4bed472161912950fcaa7480abd8520b9697d7276c4222a112e85031cfc90cc0781f64527050c3a20f23e5ada0fa7a8be60876ab607ea63809dd170e1a5db11a6e8c5a9e1b7885c2eb1687a2ac23c13ae13b5add6d58904bc2d78c417268dd261d5e6024cc0d0156966c85a99537a4826932123800fec999a660647d4a2a0024cbe34f640bad82f29a027b3c564c j.val

private def crossSinc (j : ℕ) : ℤ :=
  if j < 2630 then
    (digit 0x3d058f08a55e833dbe77cf41d7363c47a10662dfe3d08fe3198de84df11b4ef429cb9d1d7a1638f0673d0bbad15a9e8626f70a8f43357279b7a1aa4c0febd0dc3adba5e8714d6cfaf43a1171867a1da76cc0bd0f17b8279e87a82f37af43df698707a1f3f187cbd0fb60e139e87e09482ef43f036aae7a1f6a41913d0f9df94c9e87bdb12a6f43d3568ad7a1e27be8ebd0ecef04c9e873f46064f4388ac6167a1b76bfc63d0d48967e5e86652a6e8f431026acd7a1756cfc33d0b0abc769e852f4c56ef4269bf3c37a11c7d3ad3d081560235e839db0646f41957b39b7a0aca0b95bd0468acef1e81b071fe0f40936b3217a025e12aebd0004fbda1e7f67c3582f3f63ab19879f884df6cbcfaead3885e7cc3ed792f3e06624dd79ed3fc3903cf51ae8431e79c5503a2f3c7bc395679e0906c1abcee961bf09e766c6240af3ac40d1bb79d278e12bbce75d7e009e72b9b0f34f38df886b179c2fb85c83cdf724b4c9e6eade0690f36ce8a63679b21b178bbcd6d5eded5e6a49ab524f3491732e0799fdaae42bccd89fd065e658de2dd2f3228ae2ef798c3dbb6e3cc3903c839e607b6e92ef2f94b1f3879774809b13cb8ea9cce1e5b134c314f2cd6001d87960fdbc293cad9b3a74de55568f7d0f29ed254c87949634dacbca1a45dcade4f46620faf26dab903879307d8ff83c95087a78de48e4031f6f239f5d8c8791651aac33c87ca2f061e4230c7414f203bbfd8c78fae51abd3c79ec44545e3b2e1826cf1cb0975f278de3db079bc6b71ad129e33dd74554f18fea5f6b78c0618f423c5c5d8523de2c406ed86f1526b7afb78a1572bd73c4cb310fc9e2458aeef2f1129a2a947881254b183c3c75bcf49e1c27efb3af0d0846e4b785fd300993c2ba91c8f5e13afffbdef08c38e163783d67ad24bc1a50e9b95e0af2c0c1cf045c6b7327819eafd273c087103fc5e01f227278effd3db7dc77f564e7093bf60d6faa1df8b0399f0efb2ae3ce777cfdda9723be32a54faddef2f10afaef66292da877a95dc97ebbcfcbff259de570d6422ef17bffb907781ee10dcbbbbf6db6d5ddb77c525aeec7849e4a7759978bdabba7af78255dd1462891cee75898fc07730638762bb92fa83acddc6de5ba2cee21e1c7f477065b8ee43b7ddccb611dbc42c8d18edcca0b8bb76db896a2d3b685b3a891db175e968ced75da495976aff71b32bb527ad9375da67a44f40ed1da2d1f67683aedbc93b3c40cb231d9b5270ac6ecc40f16fc7656bb1b4f3b25b24e7d1d90010ee14ec6934444c7629267c433b0ed4bab85d8488ce5c0ec0d27e86475fafbd1d43af7ad7f4f5d78ec69c1cebafffef5a75cc461d5b3ae04222821d6d2ea6f16eb51d29dc8759d108bcd3ac898400a1d6152565ceeaf2b68b96756d66731fbab0b587cd5d555a52620ea92c29eb1753d534f9e3a989fbc861d49497e9dcea320e05a7750ce2c136ba805cb2695d3d22c73e2e9d0b0322f74dc2088baba67f24dc49d30e920514e96ec0d39974ab1885163a4f6681989d249f8511ce90c57d1307479d6b07b3a36bf4e2edd1848f730ae8a98d44837448671d87ba1e02bfa95d0be87e1d2e8467973a47416d5f45f3a0536ec909cff81264b4e7e334cb4e73e52f6fc0b9ec61f45c9cf31600774e77fd7d90873b37fda1239d389fdfa1ce6aa20e84e71c7b45357381d38a6839bab5364cdcda409eb18e6b937cd13735036e186b9a1e9ceb11ccddc92f18e656263cbf731eb646dd39892dfb779cc18118114e5f35f692172ed5e2581397087f2621cb53149014e590fc29d972bc3ae91eb957fde91d5ca8f04076ae52f155325728b58faeeb93f9613ba1c9cc11827ae4cdc3afc3725ac4bea5b92756a3241c90a6e8070e46d1fface722a8a8f61b90f45c39b1c84a4c5802e40d42d99c71fab6bc9ab8f7699b285c78bdc2b2ae3ae44d59d71cb558710b8dfc84817dc6cf4edadae3503e5636719c731dbb38c867df6f1c614d4fad2e2f3479aa9716e1b9abc38b14e6b675c55c9ec552e29778b3f771405b0052b89a81e9e71c4a6dc0f0ce23ce97ed071133d35d43884084aff1c3f3bc3af4e1e3b19d8870e6ce04a6386de76f689c3436e2e42e18be8721570bb19153fb8582527055c29620447ee135a51815709029ec2fb842c72f649c1ec0043a0e0e0fe5ee870660be727382dd332489c1453b5052e08e0ac3cd703cca3a0eb8194ec4325c0a1fde244e03ce06c1970146fec1f38053f62eedc00273b8b0dfed951f766fed07d50637f1aa742b5bf66c7cef8dfa03e4236 (j - 2311) : ℤ) - 1000000000000
  else
    (digit 0x3c5c9206715e2dee4f840f16c7a032978b4af5ababc5988268a1e2c57f71def15f3c1a0278adcae3143c55f331abde2a7c24ae4f14fd2ecda78a5d113ebbc51d3b879de285b24e20f13e4103e7789cc342c43c4d2a6e66de25f555ca8f12a8972707892a30a9b3c47f8299d9e234b26d1cf114afd6617887724bafbc423de2dfde205d18a86f0fcb857b5787b332b343c3bfcb55e1e1d2bbd30ef0e2a7a7c3786de812ef3c3535de855e19b7b7652f0c6830064785f93b0cbbc2deabdc65e1601bb38af0a8502300785038f658bc261cd4519e120a8d762f08815576a783fdb1835bc1dcdc4cd1e0dd30398ef065d96aa9782e7d8d71bc14ff53001e095c03a1af041a3ad96781c240ed6bc0bb363781e04a683e80f01b7bf35d7808d296233c01ebfb22ddffb38ae70eff36a8fd877f48d5d39bbf7ab3ee3ddfa842f05eefc97855d077df58dd363becf3731e1df519965c8ef9dae951877c939cd7c3be1c6fb37ddef74f6744ef7017188c77b23522b03bd62859161de9979404aef40bc23ea779a500da23bca1a2c8fdde382c2abcef0fa8719777818ffa283bbd9f32d91ddd37e4a3aeedce730357767fa8decbbb0ba45e81dd6b86a72ceea884002e774d95a7273ba36e5bd15dd005d299cee728af1117732675b4f3b95be861c1dc921a93d4ee3b087ed9771675f5b7bb87adf1119dc20d87cbcee02098f1b76f9c7f623bb793fe303ddbacb14a04edc79b6e1176dc640f483b6a77bb8cddb35c02a16ed8bcbcb8c76be5125423b5b58f2c89dabc210ddeed4ea8b7cf769f964c013b4be71888dda3ff0a246ed1040a04d76803ac5a1bb3c25d37f9d9c14c4996ecd0a24c4d76604600bdbb2c18e0675d94052149cec8fdcd97b763fbf96b03b1bc411225d8bd20bb9eec4dffb85a761eaf49cf3b0b2b4bd65d837d7972aec0b1aa8a675fd1d03943afa5289ffdd7b09698aaebc73db59b75db10d2c33ae93dd783dd7277e42e4eb8279322d75b892e97f3ad7f151b95d69cafa23ceb3cddb5257595ab9b593ac671266e9d6104c44d6eaf67c152f7572635b53bab4c192eb5d5827632a2eaaf6564d8754ec2b9dfbaa2e6e2ec9d4f34fe526ea67aaee75752ad262cd3a90e56f9d1d462fc3f4aea1f5e2ffb75069b1b37ba7ec19e8a1d3d19e84e8e9d690d6cd74e225bf693a6c7fe0931d33f5a524ee98d54bb7474bd7b40b5ba5a24b0d85d2ac5393a2e943bbdd537498a4a350ba47b493a45d218ae7c2ce8f9d85e417473aafc1e3a353415529d1848f7d8ee8afbc7e28744e976e7b3a22a7c9345d0f01b3ed6e8657a968b7429732a043a10144872dd05b769398e81b251610740447685539fd7e30ef1cfc6c672dce7d0ce7bf573df1d6ac739eaea241f1cf322fee16e78689538b73b9fe7827b9d85cc5eb9ce9dd82802e73c682fa17394f3da7339c5dabb8a1ce09e44b76e6f27da5ee737006dc86b9b368aa575cd76798234e6a8dc4a7a734b40c7d3b9a10b36b05cce3bcebbae65f96ab007326aae211b98ec702cbdcc51d393fae616bf4a5173024e6af0397ca0ad925cbc0e26a2ae5ce689bb872de3499c6b96a9cd1765cb310e3786e586a4fe5a72ba669b483958c0034e9caa27b961ce53f86b8a17296ed8f3539470ed12f5ca154ee794e4f91ff39e7273d28610b9358dc1449c989ac4c16e4b382b67d72511e7ed6b9244150ae5c8ffb7991ce46ec0e1ef722eda64b8b9132df25ddc87794506ae42aec2bad720d0f0cd7b902580df55c7f165970ce3e81619f171ebc5340838f1c3fea89c76d4e2c5ee3a64fff0371cb057c9738e17612211c6eb706136e365aaf4cb71aad86c1538d17287639c66bee0f18e32637d873718b46692838c1bd8dba9c5eee88f84e2e807460f716c57b961b8b25b43a15c57480b362e2ab299456714e147f1d38a34fb5b45c4fcd6ba88e26faed069713084b763b8949edda4dc4880a4b5ee235a6b9a87113b037dc38864ca1305c4163a6aa2e1fd20bd9b70f79eacbdb8785cd11cdc3a7857352e1c62bf3e870dc5796d0386ad32837dc33c090eb2e190d71a6070c1e24972385db34a5d9c2d3e22c8ae15d30911970a845e8acb85100c3819c26f2cfb72e12b4656a7708f89674db844bf06be1c20e04e16ae0fb2604627077b38510b838f16d6a1c1b0847480e0ccdccac37060cacccfb82d9b36335c156c573b4e0a0776de0704ad592c2b822bf843f5c100e0c014e0760241f57035d9f2cab818615e521c0aeee55f0e04d8928137021ddcec8b80e83adfbdc061054660e027178ade (j - 3075) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem columnPrice_eq_all :
    ∀ j : Fin 196, columnPrice j = secondRetainedRunPrice ⟨284 + j.val, by omega⟩ := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 319, crossSinc (2311 + j.val) = sincEntry (2311 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 319, crossSinc (3075 + j.val) = sincEntry (3075 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 2311 ≤ j) (hi : j ≤ 2629) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 2311, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 3075 ≤ j) (hi : j ≤ 3393) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 3075, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 284 ≤ i.val ∧ i.val ≤ 479 then columnPrice ⟨i.val - 284, by omega⟩
  else if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then
    sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    rw [crossPrice, dite_eq_right (show ¬ (284 ≤ i.val ∧ i.val ≤ 479) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := sixthRetainedRunPrice_eq ⟨i.val - 2790, by omega⟩
    have he : (⟨2790 + (i.val - 2790), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 284 ≤ i.val at hl
    change i.val ≤ 479 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := columnPrice_eq_all ⟨i.val - 284, by omega⟩
    have he : (⟨284 + (i.val - 284), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h.trans (secondRetainedRunPrice_eq hi)

private def sliceTotal (b : Fin 2) : ℕ :=
  #[11396707409656853470002348849258651688036153606960,
    10342728222180174241688424351370765208796105363688][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 21739435631837027711690773200629416896832258970648 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the sixth retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem sixthWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (2790, 2913)) (retainedRunCells (284, 479)) =
        21739435631837027711690773200629416896832258970648 := by
  have hrows : retainedRunCells (2790, 2913) = crossRows :=
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
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
