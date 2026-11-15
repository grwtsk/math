/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Third retained run against the second

These are the original global rows 666 through 853 and columns 284 through 479.
Reuse the certified third-run prices. The second-run prices and signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [187, 569] and the sum window is [951, 1333].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the four disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 666 853
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def crossRowSlice (b : Fin 4) : Finset (Fin 32768) :=
  Finset.Icc ⟨666 + 47 * b.val, by omega⟩ ⟨666 + 47 * b.val + 46, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 4, 666 + 47 * b.val ≤ i.val ∧ i.val ≤ 666 + 47 * b.val + 46) ↔
    666 ≤ i.val ∧ i.val ≤ 853
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 4 := ⟨(i.val - 666) / 47, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem crossRowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 4))) crossRowSlice := by
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
  if j < 570 then
    (digit 0x2d93e5f74e56ca9d39774b65b0ae1ec5b30fde27b2d9a6f460196ce49ef886b67bb390d45b42f4f96aada43ccf5716d39a012e2b6a980ee0b5b5b83400a2db1585497d6da923eb56b6e498f89d5b7abb73df2dc1cb135e96e3373643ab72d1f9bd35ba0af474f2dd59dc31796ed8d3298cb78336a55f5bcd6f5cc2adecd8929816f99839dd6b7e6fdbbe75c010b41f12e078325cbd7075c0c7ceb8589255e75c3b916b652e25a4937ad716dc240c4b8d80fb1035c7d0f302c2e47436328d7281bb23b8b9658ec9ad5cc590c5b8ae6c658b0c973b1d9fd54ba0126533a5d15213bf92e95106e21974fe48bca8baaaeab05c5d6bca79a12ec148da53176672ca4c0bb62edec005dc99538a7aef11306c1d77eca63efcbc293fb2a15e2e8902faaf247292251798ed14e56bcfded4bfb5e9aac2f6aaf5b6a814697b4dc4c378bde10195365f0e03deca2f95fd3d9a57d2992b1a8bed284fb7c5f8893f9482fd42c93f197f224844acbfd27d7701600a5f2c03b015f9b34bd8137edb77ac0e0ee8678609366e6d3b05b652bc39836a864bdec1fdd92b0a6123ab5a4e30a46eed97585ba104300c3293be4af61bb2b7609b0f11648529882684d6dac46312af0a6259e4e713b14159ea1098aafd8349cc5ab56feb462ffd416a9b19537dedf58d55f977f4c701ffbf0863acf4292ab1ecad9040d9018d2a75cc86701505b64613efd44b247b7c4ca592f848b136c9da4d86b6651cad2b61b2a6529fde595f43b6a0ecb5bd3a90c65df36054c330879a18c5990c858b9ecceb8070d966a8cf9617b36e27a68819c40fcb4e0ce893e0a5667796ea24033d756e84319f91716b1ed034f41514685106a80cb44400fd255a2fdaf1be4d1ee87a515692f89e02bb4b41ed8e29a6857c1ff4d3b5db446b6a14e93e8d3527a8ccf0daa2899bf2ed58acef5476b01147380b59e96891b9ade6c43574d76d40348a6bf3f9ed043618df1c381b1bfb2b876d95d09fcca6ced86d860369678f4f55b5b3177e92db5a04c9df6deda723f4b71759e2cf9b9c09fc680dd64069cde6ef445814b379b77171c9bde7f3e018df7ae3009270014b6760b822c5263b5c228b735fae19e6b0e717114a11530b8ad3808df5c682885826e3ce6d740d722e2d9479b93ac31d7b9caf5010792e60ab678f2734dd6bcbf39cb5929c99cf7fb642a0e85310050874738136863a5eec5c70dd42238528eeaa741a766759f107ecebaf56e4ec95d8dc12d9d4ed07109d9776d066eac7bb8ed006bd5ddaccce35cef723fdb5f780765abb9bc2b01f8c71e293e8f2acf1e89012e67943ecd330bcc9f40a0b1e790e514faf469bfbd5e7a85db575a3d6b95928edeca33af314f6f58b24187bcd0f179e3e0fd55f8cdf1ca5fe438f98bac6a027d1964e16dbeb6a1b5e1df705c501bafc2bdb95a07e6ab875483f5fe854981fc54d73b84fed5ce9b647fc0e48bfac00b96778aa01b6ff6d7b0189396873811bc2dc0dc0b998da256072ba275a50445cdeddd827b2c1f6a4169dbba3ca0cb2214b23070b3c2c2d83def81933c21c4adb0121249d915f309d9323f678546fd9bcfc2d0d1880a217f22347830caf5c6b6386b3128f23c3875a987961daa55b3f90f8d65289388230bf6fdc43fd07235e2371c2ac391272f531138996bdf9afc4fa1d0d4062947b918b5155fb38e2e8b0dfbe6d645b629f71a22f2b8494d7185345a62d8c88983e4dc673e05647a351c6d8b371b4d4f4a7a8e0664b751473328ede2a3b19b952611e4d72c6238f873247c447f3ec2145a4122aa4a4f215350ecae910ad12ba1c8b611f7c9e47367ffa87245e89292f929110ec9c497982209824d547730c7276eb98dbd9419c069d64a3e23f68d6537bca204f2a837ee32095a4addfc9cb03de8431a59abb081b92d9c74b8d89731a6f04f4bca9887bf65fe35fb35930b935755398c078aac6cc9238773c266220ada1d33d95a66769a50ef945f4d5aa484a1a6c66e302f936fc7bd25d9be2d7b07fce23c2a214272b11744bd3a223108599d75fc894cceed788629278ffd4e2573d4a1072199f0a2938474fb7abb03ae7f52476d9f4073afa520a09f286f09d082416cc9a85a798ea5f439ea37459a234c48017d14d1ed9e6e8bfef1f1d946ca8001dca3cac767cb521828ebaca925779d69349f6d8d0e7a560fad54f52e34470c1a98b056c87d4d2340d7f5a6f72833b7d3ae5616e169f08adf95d504f4a9303a88d18b3205479426f736a55fa3c185537a8815e9aa229551e35543edf4256abb45bc4b556a48b1edfabb766e5da560e3d0b8eeb205f9175359cce52912ad4b5625afd6d8140dd8eb8539e63a55cf3277f50aede2bb237d7a157496e6be9c6e0f5b6016e34ecfb06fb01fd05869eb07ac2c4df8a612b6337a9b9fab1ffabffd05931b39198acb1c15a67d66550beb52b38de7e9f2d9f895349c6d15132593d696e9b284eb51a2c85cf5abe74473a6d77e0345ab6c83e8e44fb6a4429449db83352dccedda1abb02b6f9486d381b82bf2f90fdc46bc5f3eee3bb4f7b2572a006fdcdb9b106c404dd08ee69c86e9ca134ccf75a5fbd1b9bb33473aba5dc9aff7a22efcd1cb4e178a5f83742bcb27de1d65e88e5d3be6f5c39252397b9f8fa2aebe2e748678df4674ee78efbac9bf85d7e9256273dbfa6f5479c60024262433018762d4e1817de089e7c11bca9f62e0bc33784df075311948b8461c453d5c28cbf6c5ae1742dad2630d0ed48843873d97e4e6 (j - 187) : ℤ) - 1000000000000
  else
    (digit 0x35897ab994dac761ad67cd6508286066b33250112b59f18ea70dad259e8b6cd6a98c9d876b604dbbb5b5b5fee6125addf598772d707aebc046b9000a11135ce2905705aea32dea7cd76ad99daa6bc235e565b5e7934dc5daf70fb377ad7d2fcb09e6bf6e5162936023971095b0489e583cd8400616f76c2e051b13b61e16ce761b129f1a1e6d8b1e2a9196c678c3752363b26732bdb214ccda16d9287df84d6ca3700ae1b659631adf5b309053c94d9a3c251b96ce1a5940eb678c730a25b4066d81aada2398c19e6d2221312236994ccfbc1b50cd5e524daa7e916e26d64d6a230b6baedc4971b61c0c2dd4db3099e6f26da9b90b12b6dda38dc15b733dbb5ccdbbd9091ea6df0baf583b701675d025b8540d731cdc4eb1470c6e39ce5368b7263218809b97c680142dce3df09886e84e48139b74bfc5bfd9baacafab16dd7cfbb5886ed1ee48943772be7a229bbe4a67564de19e8058b6f20dbe2f3b79a707de11bd240c2a14deba83980f6f719cfc8b37c30a2be51be6a9e63dadf5eacf57c6fc420b74737ec830419dbfb8189a8ae00641965d701855adf1b816d243415c10c342fe8e0b11de9de706e29f77ab841eee49c5c266a87d1ae15f1d5c9070c58b2a63386dcfa3a31c3c72ae092e2101a5f74711e66604b389a6afdd29c52d6ecc86e2c3ee6f497178a8399e38c7b734869c69925d5f6e37a721c1a71d43ce167b8f5aa4ee5dc809ffc428e4337d1110723110113f39243a1bdf1c97faaa0aae4eee61c85728f0d155cb9535c3434dcaf9d2c7d4e5ac83384e72ee1ed0c4b98305fc989cc7822f9c0e66c29924a734e2fc195b9b32ca7d4dcdfa446bb8e72dad952873af2a0573b9e3c539065cf7fdeda18e7f0e2f1657410f75e0f3a14c485e25d108989aa6e8b59ca68674738135c63a461f390c5d29416af4ae97bad0c8074d6b0a461ba77c9d4769d421fcd93eea42e5dd60753a6e73ed3aa9b8b3d0dd5b1edac92eb0b183f14759ea325a53adbe00f045d7438aa422ebd414cd79760336f6ffbb0e33fcb85d8d67435dcec9daba483766811e6c7bb40a874e59da6a49e766ed67ac6a9e76cd1bba54bb733153719dbfeaa6318ee31e65b3377323c02cf3ba5c25ad69dd93338d3eeefc28515877975a22903bd84f36d25df278299bcefc640d2a377fc5d528d3c0acb7f219e0bb3421def08ffe1a2178612ca7d8bc3d2aba401e24de43a80f1592e237078c5af1933bc6f6060345e3df2e8a6af2219eb5f57929cb84ab3ca15fdd5f9e56eae60eaf2e91d7031798d68b5473cd31c9556de6fbfecca8f3af77d32a79f06d68c2bd0489e5c1de886bab29af4747b4df67a52c055513d359b293d9ea0e7ce53ef537f549567ab4482f713d6643ba46deb92e03bdaf5f9b3335b7b14ebafc13d9676f6271ed137faa02f6b9828b2e7b749198e2bdc6283fe49ee8ff65714f77730ecd37bd320bd613df54b0338df007dfb5f4f8328c1d037c3080059c3e23d2b7859f17ad79cb4f8eb62150b7c8c9675bb3e51b2e2cd9f2e87a5c6af9a1810eb07ce74b339d3e7edf1caedf45064d8f2fa54b790197d40858ccfbeab4b115cdf5b234a0cefb04d477b47d982cfc81bed6ea849adf70d8804eafbb1a708247dee2931783f01b154b41f861fe306efc5afef41c7e426213fdbf2b937d755f9af374074fd00ac6a437e94bfcbcf3f54851b225faf4d45bb4fda28021017ee52ac604bf7c7a6d675fc3277ca16fe404b62447f338bbaf1bfa367da4b1fd67c50c28fed9e0173c7f7fcbb3febfc941f1191fe9460f26eff6f10d3fc7fc9d411793fedfd6d481ffb7f1b49affffb0e30a80118e9059c0118f395c600d21f0877008b9450dd8056e54ffd4033ec71c2e01e29238c901128ff73b8099c2d7d1c0550a67a5602e8f63bdf019479887a80da121cf54074dea3b8603e4f7c9e90211279aac8117be87c3c0935ee900204d6457317028871b29d8152b3f955c0b081378ca05bc8fb56302fa304eb5818aded0eac0cc3bcf2de069789122703663cf1b581c02bf14040e685321c20766e6233d03cc722d4081f288c5d6c0ff5427982082a5daff7042cabac478221e3481cc1169fbe7ce08e1a8c1910486c63d3c824e2a0485412c5f4fc8a098c82b76104da9fdc1a82774c1f8441408a8117a0a2aa95a93052817bc38829d395a71c15319471320abbdcf189056f0e51e782bfe21853416403e7d160b3fe052b705af655bda82df376287417342fd27e0bb678f72505e8ffec5182fb2aed534180cf76f020c1f6f0c6f061bc2720b8313af1c55418ca29d3b60c7a8d863d064792c0f88328b706d64196b6127760cc7a22f55066c581aaa833a367bf7419f03d58260d067dba130689fb368283482206c441a58643ade0d36f3d06106a066499f83526ef21d41aa381ab120d58db231f06af850e7d8359134c8041ad147a88a0d6c0d790106b744cc4e835c05ebacc1ae16e742a0d7067bccb06b7945e0d835b3e702141ad3b4aba20d65ca0b0706b064393e8356b54873c1aa7df63d60d4c17bf0f06a1a67464834e63b48241a5dba421a0d23377f77068b4ecd23834243c877c19f517940a0ceb1349e9066d52ae118332506fae4196dd0663e0ca3987e3b0647a93435831e856f5fc18c7c499820c4cb7e8f7061a4b34328306df693341802daf6e60be665cd2305e5333f1482eb5bdd974171f0142460b7099ed6305a85da6ce82cbf92df6c161c2c4b720aeb4f94690563c88258 (j - 951) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem columnPrice_eq_all :
    ∀ j : Fin 196, columnPrice j = secondRetainedRunPrice ⟨284 + j.val, by omega⟩ := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 383, crossSinc (187 + j.val) = sincEntry (187 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 383, crossSinc (951 + j.val) = sincEntry (951 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 187 ≤ j) (hi : j ≤ 569) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 187, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 951 ≤ j) (hi : j ≤ 1333) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 951, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 284 ≤ i.val ∧ i.val ≤ 479 then columnPrice ⟨i.val - 284, by omega⟩
  else if h : 666 ≤ i.val ∧ i.val ≤ 853 then
    thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 666 ≤ i.val at hl
    change i.val ≤ 853 at hu
    rw [crossPrice, dite_eq_right (show ¬ (284 ≤ i.val ∧ i.val ≤ 479) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := thirdRetainedRunPrice_eq ⟨i.val - 666, by omega⟩
    have he : (⟨666 + (i.val - 666), by omega⟩ : Fin 32768) = i :=
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

private def sliceTotal (b : Fin 4) : ℕ :=
  #[322015278224214528032303795057359623147104127880786,
    466820443971783337706670060982981445092459468192024,
    360964190148735739720591307797305744572674882940068,
    161478481511457270229631162865063209590667291341956][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 4) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1311278393856190875689196326702710022402905770354834 := by
  calc
    _ = ∑ b : Fin 4, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 4, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the third retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem thirdWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (666, 853)) (retainedRunCells (284, 479)) =
        1311278393856190875689196326702710022402905770354834 := by
  have hrows : retainedRunCells (666, 853) = crossRows :=
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
    change 666 ≤ i.val at hl
    change i.val ≤ 853 at hu
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
