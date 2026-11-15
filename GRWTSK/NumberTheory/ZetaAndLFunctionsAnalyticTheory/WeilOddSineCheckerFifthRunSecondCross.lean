/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Fifth retained run against the second

These are the original global rows 1610 through 1795 and columns 284 through 479.
Reuse the certified fifth-run prices. The second-run prices and signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [1131, 1511] and the sum window is [1895, 2275].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the three disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 1610 1795
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def crossRowSlice (b : Fin 3) : Finset (Fin 32768) :=
  Finset.Icc ⟨1610 + 62 * b.val, by omega⟩ ⟨1610 + 62 * b.val + 61, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 3, 1610 + 62 * b.val ≤ i.val ∧ i.val ≤ 1610 + 62 * b.val + 61) ↔
    1610 ≤ i.val ∧ i.val ≤ 1795
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 3 := ⟨(i.val - 1610) / 62, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem crossRowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 3))) crossRowSlice := by
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
  if j < 1512 then
    (digit 0xdb37f697c56d8c99230ab6bea69ec15b5b85f7cc6dabdf2977a6d4ff1c68a36a080c95c9b4c8a3cc9eda46d054db6d14bf7adc368317933edb3deddbc50d9d2b12c2f6cdb12dcb6b6667341e99b2fb4f3008d961b5eb166ca2fc4068364a9bf6209b21e38e1b8d8f3fec7eb6c6c8bad8b362f99a9c65b147da5012d889ab594c6c37d0daceb615742dc11b07871adaed822da8db76c04db29c8b5fc3327e59afb03bd07ed7bfaaa3476bd3b9a2d5b5e3de10e9daeef74216cd760391f8c6ba47af10cb5cc7c32609ae36548c46d704a2c78d6b772d5e4035b614a4bb5ad85156fe8d6ad0397df6b4bdecf12b5a0ae4d585acdbed8eb2d65976bcf46b229cbf1eb58c4fdc985ac3b11ff52d60a168b7e6afb743d31b578ffcbfd5aba2b61dd2d5befc79096ad671e79a3566c45c575ab130b7d08d5784114bc6ab3a1e8913555a393f85aa8c41d85ad535fc00436a930ff2b2b545a33cf69aa0e8705ded4f843e8ef6a74c73d93b536c8e378da99a06e8d6d4bf2e81006a58d28270b52919d4109a92eeb649cd48ad079276a3f3bf8efb51c9b1a1f5a8cd5c4ff0d45b3d7a356a280d54043511517e4bda8757f68a8d430881f0c6a134fbee8b5074185011a8277847dcd40ac1eeb76a010bda3734fe6f6d001a7e3685676d3e9fb56cb69f149b91d34f6df2dfb5a7a96ec248d3ce43a5f869e410deadb4f09477459a779a8738ad3b7a906dd69d9683b51b4eb92ae8bda7543002d8d3a6387b1269d1562a5534e7dceea29a7391dafacd399fdd67b69cbe06f9a34e57606609a728875762d39303bad569c90c356434e4607789da722806cb2d39153938569c8de0a4ab4e49e75cdda72719efb2d394f591aa69cb59df4bb4e631e5d31a73662666cd39df0a87a69d08305fe34e91c5c575a75065d5ead3ac4a89da69d85c2eecb4ed5f1d5e1a7752dbbead3c007a34769e2e7680cb4f2fb1b73da7a4c10902d3d92b1afb69f0261b6034f9f0f7019a7df241b6ad3f7b6cd696a00190db8350240fdb2da82458ba58d41bab4af46a12c05d9c350beb29eeda8745e11e2d44507d5fd6a281b8258b516ef22639a8cf30af88d473ca61316a40294b3135234c39a41a934ca7f46d4a7ef8e306a5ae7debc3531016ddb1a9a522c94cd4e172ac716a7854ba6035400d688ddaa202e3048d5204db8826a986cb1fbb5506e7e765aaa5deb04cd564795b8c6abb2befb2356222af6cdab36239e58d5adeceb2d6ae08df3e1b57527a6695abd0e9a876d5fc9e69976b088d953d35897ab994dac761ad67cd6508286066b33250112b59f18ea70dad259e8b6cd6a98c9d876b604dbbb5b5b5fee6125addf598772d707aebc046b9000a11135ce2905705aea32dea7cd76ad99daa6bc235e565b5e7934dc5daf70fb377ad7d2fcb09e6bf6e5162936023971095b0489e583cd8400616f76c2e051b13b61e16ce761b129f1a1e6d8b1e2a9196c678c3752363b26732bdb214ccda16d9287df84d6ca3700ae1b659631adf5b309053c94d9a3c251b96ce1a5940eb678c730a25b4066d81aada2398c19e6d2221312236994ccfbc1b50cd5e524daa7e916e26d64d6a230b6baedc4971b61c0c2dd4db3099e6f26da9b90b12b6dda38dc15b733dbb5ccdbbd9091ea6df0baf583b701675d025b8540d731cdc4eb1470c6e39ce5368b7263218809b97c680142dce3df09886e84e48139b74bfc5bfd9baacafab16dd7cfbb5886ed1ee48943772be7a229bbe4a67564de19e8058b6f20dbe2f3b79a707de11bd240c2a14deba83980f6f719cfc8b37c30a2be51be6a9e63dadf5eacf57c6fc420b74737ec830419dbfb8189a8ae00641965d701855adf1b816d243415c10c342fe8e0b11de9de706e29f77ab841eee49c5c266a87d1ae15f1d5c9070c58b2a63386dcfa3a31c3c72ae092e2101a5f74711e66604b389a6afdd29c52d6ecc86e2c3ee6f497178a8399e38c7b734869c69925d5f6e37a721c1a71d43ce167b8f5aa4ee5dc809ffc428e4337d1110723110113f39243a1bdf1c97faaa0aae4eee61c85728f0d155cb9535c3434dcaf9d2c7d4e5ac83384e72ee1ed0c4b98305fc989cc7822f9c0e66c29924a734e2fc195b9b32ca7d4dcdfa446bb8e72dad952873af2a0573b9e3c539065cf7fdeda18e7f0e2f1657410f75e0f3a14c485e25d108989aa6e8b59ca68674738135c63a461f390c5d29416af4ae97bad0c8074d6b0a461ba77c9d4769d421fcd93eea42e5dd60753a6e73ed3aa9b8b3d0dd5b1edac92eb0b183f14759ea325a53adbe00f045d7438aa422ebd414cd79760336f6ffbb0e33fcb85d8d67435dcec9daba483766811e6c7bb40a874e59da6a49e766ed67ac6a9e76cd1bba54bb733153719dbfeaa6318ee31e65b3377323c02cf3ba5c25ad69dd93338d3eeefc28515877975a22903bd84f36d25df278299bcefc640d2a377fc5d528d3c0acb7f219e0bb3421def08ffe1a2178612ca7d8bc3d2aba401e24de43a80f1592e237078c5af1933bc6f6060345e3df2e8a6af2219eb5f57929cb84ab3ca15fdd5f9e56eae60eaf2e91d7031798d68b5473cd31c9556de6fbfecca8f3af77d32a79f06d68c2bd0489e5c1de886bab29af4747b4df67a52c055513d359b293d9ea0e7ce53ef537f549567ab4482f713d6643ba46deb92e03bdaf5f9b3335b7b14ebafc13d9676f6271ed137faa02f6b9828b2e7b749198e2bdc6283fe49ee8ff65714f77730ecd3 (j - 1131) : ℤ) - 1000000000000
  else
    (digit 0xdd4d161a116e9fb7a81fb74c7cf34d9ba4947a0a6dd177f98546e8543b1adb73f6edbb95b9e237efa8dce4a93a626e6c31b915b73312b6891b980bf5938dcb4a2233e6e54893b8637276c38185b924fb2ddcdc8778d1b86e3e51638e371c7eeb31db8cf076f78dc5d3b1c4e6e2991071037124e3009db87efec94adc35f62d2c6e164ea54c3708dd3b451b834fa882adc11b67e5a6e049064f6b7002f15081b7f1129316dbf087d6106df45c126a36f84698111b7b35d6420dbd275432c6de5b71de736f12670dc1b77bf00196dbb78919db6dd8a699ed36ead11cd09b74addf794db9fccf0696dcd2f39a836e548e97bdb7203951dedb8b499c376dc3554f7236e08ff3d45b6fc12961edb7a072ee76dbb1ccb6e36dca82789db6de78be6cdb6c0cf3b06db4893a36b6d9933e5f9b6c779344cdb61616cdc6daf9dc3a5b6d752bf939b6b71fcbeadb5a0a51816dac5d29b1b6d5e7ff4fdb6ad76bfcadb560c8b5a6daac9c767b6d5541e291b6aa86acd4db556c34dd6daae58ff4b6d59808a9db6ae568eb6db582c977a6dacb20dd0b6d6b476e71b6b8ebbcc0db5e502a106db03061fd36d8a9ec251b6ca49e706db67d88f926db561435cb6db78b6869b6e27313fcdb74c695db6dbc44fe2736df20eec79b701679e76db851a34be6dc4db7373b6e3a278089b727263400db98d28d3d6dcf2418deb6e8fcffa25b753abd3aedbafede9026ddb1df847b6ef2ffd0a5b786f3cd48dbca69b9fd6de8c7afacb6f63ab1c11b7c0f7c0e4dbe8429a416df81f711bb6fe1c29505b801af9ee8dc09744c126e092302c03706d339541b84911a876dc2df9ba246e1bcfbf0bb7105e81929b897127038dc55ccf8176e302294f7b71abc6c205b8eba4dbacdc80e743216e46180861b725eb2d911b946ba24b8dcaf4102ec6e5dac32823731e8c537db9a841dbccdce0d1caaf6e76dac27f373eb2fd71dba1029ea52dd15905a766e919efe16b74c476bffdba7e5e9594dd4d72a0a26eadf3c264375aa3726c5baf2ca820add886dbb9c6ecbd384c23769c43e7fdbb6d56b704ddc675fbb96eeb3853c2b779a6cabf1bbedeaa2dade077ee55c6f0c1bd844b78a47defa5bc746c1f5ade4b7b333e6f2e7756a1379ba410e65bd00bf76c0de925cd8f16f5243aff1b7adb7c4c31bd92c76902dedc1505976f77796372b7c07f2e101be2a653184df289426ca6f9e108ffb37d3f6504b1bec7788d32df77c9ebac6fc600f590b7e818ffbddbf69dfc0f4dfc9a5483e6fef41f71137fce2e2551c01177a094e01e1478cc7019ca9bf7b8124f7085dc0be1b95f6e0750505a37045919234382859f63e5c16fa5a8b4e0ce63c6e370728d3022383efd93e15c225ee8610e12a1ce88970a0b3768eb856353f4e1c2e0cd8956e1881beea470cffa12dab86dfbc4f2dc3a018c476e1e84bb9ba7100566130b8864bc8ec5c463a50920e24a968b4e7131bd6ed1b89f1fc82c5c52b45f20ee2aee60aa2716423fc75b8b87219af1c5f6cdecc0e31523499371977e80c3b8d23cefb81c6c60e4374e37d36c9a871cbc12adab8ec7a591a1c798d72784e3e70881427200dfe4f239072442895c86ef7bc04e4527fe0fb7236ce570ab9223477f61c9483e20a8e4bf83d921726d7fe9b1b93da4a5f11ca24777d00e52dfadf5c72a4e7c8d939596e5b1a1cb03700bf2e59dcaf47572dcf8e6bf39758b09945cbe4f32782e60ed9aa3d7315a5fee6b991f408861ccc8cb54cae6810c2999734ee1991e39aea2959e5cdaec25042e6f44738ab73889e0c9b39cb8fd6a2dce96a11a40e7686f411573c2cd831eb9e8b4db059cf803003ace7dd68566173fd61fc2a3a060a9d80dd06b36baf0e853163c7a74384d5044ba238a05b9dd1577c5920e8c95c6e467473813445ba412be9e95d244c76f46e9401e245874aeef3cb23a5ee9108bdd332de13e4e9b73e5bb274ea88e1223a7cba32141d42185f0a8ea2e9fdca175263f7fb0ba9a97faa55d510845038eaa62541b07562046075bab87b0bd11d5ff9e2c2eeb1db0fea3759dc8b9073ad65bfe58dd6ee983b2eeb9525678a75d97db005baf43363f51d7dd36ff22ec0c64b7e176151460ab3b11f9c91ddd8cb3ed38aec835119b976507dde63bb2fa7b6d81d9b873fbe8ecf9ccacf5768bab386b3b4d35b4839daa49ab238ed6fb98e8676c68d7d6dbb6a9c49adddb8f773584ede4f9dfb5770115bf2cbb87d3ffe31dc78cdd878ee596fcd74773b3516293ba4d564845dd60631012eeccfd97ad7774dca549bbc1990a9c5de45fb823eef3f85989f77adfd9d8a3bde178cb41df295c1496efb0ea4c2c77e68941a4bbfa498ea9de00a49fafaf0210e5737781e70e9bbbc1627bf855e0e88ac64af08fd48ef37855a607053c31aadb4d5e1c3e472fcf0fd200031788c1a2770bc4ccbacd91e29c1d77b6f168d3f6ae78c1bef949bc67830fa2de370fcd3d2f1d2d4044e78f6864ed83c81c9f1965e4424a1dd2f23b040858792a6221fc3c9b9954dd9e50fcd91bef2a148369d795d4497bdbcb4ea51a9de5d9501f68f305851e9c798f2003df3ccdb617f99e69e9b7892f3679fb28c79bfe6ec603ce5f5f15a1e75f7a1ef4f3c77d4e5f79ef8c0cfb3cfda342a59e81bb7721ef42503beab7a1e025a99bd14b78dbb1e8d31fbd36f4801947877a4b3d06be3d2b2c73321e985804482f4d8a4ab467a772f82dfbd40fbb4081ea32a752d0f52e8d3128 (j - 1895) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem columnPrice_eq_all :
    ∀ j : Fin 196, columnPrice j = secondRetainedRunPrice ⟨284 + j.val, by omega⟩ := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 381, crossSinc (1131 + j.val) = sincEntry (1131 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 381, crossSinc (1895 + j.val) = sincEntry (1895 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 1131 ≤ j) (hi : j ≤ 1511) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 1131, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 1895 ≤ j) (hi : j ≤ 2275) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 1895, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 284 ≤ i.val ∧ i.val ≤ 479 then columnPrice ⟨i.val - 284, by omega⟩
  else if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then
    fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    rw [crossPrice, dite_eq_right (show ¬ (284 ≤ i.val ∧ i.val ≤ 479) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := fifthRetainedRunPrice_eq ⟨i.val - 1610, by omega⟩
    have he : (⟨1610 + (i.val - 1610), by omega⟩ : Fin 32768) = i :=
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

private def sliceTotal (b : Fin 3) : ℕ :=
  #[64808903442706329272456583296824013161610384591192,
    97152483711227520597208917270227999135451531135144,
    32664102716183848935569840974769015273353882452024][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 3) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 194625489870117698805235341541821027570415798178360 := by
  calc
    _ = ∑ b : Fin 3, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 3, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the fifth retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem fifthWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (1610, 1795)) (retainedRunCells (284, 479)) =
        194625489870117698805235341541821027570415798178360 := by
  have hrows : retainedRunCells (1610, 1795) = crossRows :=
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
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
