/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Fourth retained run against the second

These are the original global rows 1177 through 1294 and columns 284 through 479.
Reuse the certified fourth-run prices. The second-run prices and signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [698, 1010] and the sum window is [1462, 1774].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 1177 1294
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def crossRowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨1177 + 59 * b.val, by omega⟩ ⟨1177 + 59 * b.val + 58, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 1177 + 59 * b.val ≤ i.val ∧ i.val ≤ 1177 + 59 * b.val + 58) ↔
    1177 ≤ i.val ∧ i.val ≤ 1294
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 1177) / 59, by omega⟩
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
  if j < 1011 then
    (digit 0x106516e0dac832d6c24eec198f445eaa0cd8b0355506746cf7ee833e07ab04c1a0cfb74260d13f66d050690440d88834b0c875bc1a6de7a0c20d40cc933f06a4dde43a835470356241ab1b6463e0d5f0a1cfb06b2269900835a28f51141ad81af2020d6e89989d06b80bd759835c2dce8541ae0cf79960d6f28bc1b06b67ce042835a76957441acb94160e0d60c8727d06ad6a90e78354fbec7ac1a982f7e1e0d434ce8c9069cc76904834bb7484341a466efeee0d169d9a4706848790ef833ea2f281419d62693d20cdaa55c230664a0df5c832dba0cc7c194730fc760c8f52686b063d0adebf8318f89330418996fd1ee0c34966865060dbed26683005b5edcc17cccb9a460bca667e2905d6b7bb2e82e3e02848c16e133dac60b50bb4d9d0597f25bed82c385896e415d69f28d20ac79104b105516d3d75829f4affc3c14ad0b39560a2ee762e9050328b248827730ee02c13647ceeba0986c1c02f04ad26d9e5824b389dc7c11fd00658608cf2712ed044f6ba3bf821b64410141076a8ff62080821f56303e9fcd1d281e7b6f32b40ed1916cba0731c0aa49037ce1fad781b034ba60c0d0ddbb4c2064c15209d0308248c1b8174e2883940b2bb13c1a055734f6c9028bcfcaf18135c63a76c092b42c9ce0453397ceb0207f0d5c280f2e69b80c070cc88ad203403fb66d017c96a4bf80ac4b62af404d08213fa021e685ac500e9d20a298061fd346540276b6625e00edd7d575004fb5b236801405a1f4bffffb3da1dffaeb6453effae5622967fc26f2954bfd6bd043b5fe612f7a9cff05c9b98e7f6d4534a33fabb68c78dfd0572f554fe5628acb17f14941972bf7eee1e81dfb9bb3e150fd9f8d072f7eb86917e8bf506a77a65fa242912b8fce212a7c57e58d259a5bf2032c9ccdf89f0d0122fc1dd73e447df5def07c3eee4ebac8df70c9dc210fb52fa48ae7d8f9ed4f53ebac66394df56d1d0298fa819d0ff87d2622e4a0be85a24f755f3c0d00046f9a9e2a45b7cb97ce0363e4eeb7b01df207ff8130f8cbefd9497c49bf697ebe16ab5314df042f7cb44f7e7eb40f97bd6fe010ebddcebb3a1dee72089ac6f6fdfd27927b614d03d0bda1b6e6741ec95851818f60e4f8deb7ae8c1a8593d6517a1d35eaadc3cca0f5190e23f47a6d71fc0c3d2719070f5e8bb1e970af41e6642b279ef74e011bce7c6a0f49e6bdf29eaef31e86e5df796ee206173ca72c6227de4b6a0463cf219a0a52878ebd1ece63c6556a368de2a58b1da8f10fe5ad0e78665ddcc3bc225221bf9e08b19d360f00189b76177de9fe3a83bde2bfc8f5de67b624beeeeec203697754b2d1433b98f1b3945dc3bcccdbaedd7c54da976c8b232d2bb52b124ca9da07cd77fcecbccbc74a763aba4ed03b0b788a3c9d7cc2aa924eb9e0f0d3175aae8206dbac35677bd1d58959b06eea7bca1eb475195952e63a7a59d88b1d33fd293a6e95639540474862c3ca73a3091ece09d0f00ffb66e82d9a543673f17fda4cb9e60e476a1ce9a8f1ec6e7022c0b00735b73c974399adecaac9cc3fcfae44e5d42e9e2572c4284368394f13a6565c9e053be36e4a3e3628e722bbe17a23902bd547a5c77c9fb07ae3718cd115719256a62a38b5ec96ba9c5153a1da2e23d6e7b0870f813d9cab868b2735f5c2aaabbd82e107ccfe5e705d182225381b20325b1c03d7f4f3adfd0edf9a76fc1866d9e37cd475a3d9bdce4180a8de9917ffb66f2582232db77f39ad16dbb5d80d550dd60928b066e892f1c0637310925479b8ebcd8cd0dc27a5f0e26decb19d2236e2c7f2421b679b988cadaee9b54496d502e50aeb69488753e5b407d8324cd9b5bc989a6cb3ca3f58b6465d3ddb5b196be5ee6d87d5454046c17aac97fb5f85906b55af2702351ed745adc1c36b7bf5a04bb5aa8eb1ed5acb93b10a4d60f14b41f6ae0d0bea8355d1145a45aa4e01660cd4d9d586446a4662622a350ff3e8699a7e5eea62ed3a63d0de669acd103d934c349dd9e9a5819d212ad274988cb269144350e7b4772681ce9a321a7e918d14535a1a5687ce02353b42b9d46fd9a0c6aab460d018623a2a67e6ce7a7733e0c1b0ee19e7141bfdcceee6c832167523573823396a7515bd9c2209b0a8cdc7a2d9c066bf3c41ea334d61c431999d99f75aecca453bc53662e0a27c6330504abb599798a0290ccb84cdbae7659ec66e1fb2bda3acb11955fa8f13aca695f67d96511985d393277526a909932f56e206c95257484d (j - 698) : ℤ) - 1000000000000
  else
    (digit 0xf8fc71cc697c7ab746813e3b8a2ea01f1cd40bce8f8ded583767c6b641a923e339e20095f18bcce44cf8bd1219df7c59fdc386be2aa8b29d9f1420febd2f8972b1c3a7c468628a43e20aaea7e9f0f012787af86d251f067c30ffb52abe15a60dcb5f095df3f3af83f05beba7c196d584fbe099ba49c5f0338304b6f80cd39f8e7bffd28521bdfc8d78eedefc90c9c74f7d6966d0e7be4333243bdee7d967fdef568ce7a6f79c56d9647bc693d98dbddf6e4a98deedc16d358f75e1e9c6b7ba6f9778b3dcf6223ca1ee59bf563ef71bf872797b85698adc3dbe5bf1979edcf9d6de0f6d5f01af07b61ea13723dac5ec413ded3dca1b66f68c1256917b3c8191b3bd996deb6c9eca4605fd4f63e6ce5847b153705783d858cf7661ec037d37c6f5ed0e852f7aec11ecea3d70bfb6c85eb5b3f96baf59806edc77ac11a43493d5b0a36ba1eaabc861ccf53f66cf9e7a94587f89bd4470c20f5e9f53a6a04f4e33fd03b7a65d592d7bd2cf7e0855e937ba6620f483a487327a359ae6fb3d14a455f19e8736eebe6f420a87ab77a03b25c9bbcfb7b215f5e7a88068f2f3ba601c0179d0264967bce1817c201e6d7191b22f350e0c364799b01761c3cc6bcd8ca9e5ff650870f2e440ac3879644f1c6fbcab32e22ede52191f662f27496f081792c1ae4e03c8ee97a361e43dcf610ef201fb846078f270e4623c71e6b8ba1e3544e719cf18c87314578b75d99f5bc5430ea4a1e26541f458f1145390f2787aedec1d3c35ce8ee31e170de4e64f0997b083a783d2f263a3c16c6589b9e0775972ecf01c18c19877fe2ef5cd3bf71f2a3f1df78ead7f4ef9c48a78277bdfb679dbbd6e015e05de75cb6abeef1a275e94777ca2e4c6bbb6105b59ddd6e3583ceee95d23f81773a342fa83b94b766c5ddc6264da7eee0f6750d476f6be60c2bb72dccee8ddb52967838ed8705407e76b250e378bb5088538d9da3f08ab54ecfccb5d3c766cfb72b9bb2dc1dbda1d927faf98aec70d98fc57626ce1596bb0a917494dd80dae1224ebe35053d275dfd91bbebae6ff4e615d6f063bfbaeb5450b0f975982d19e73ac313bbf29d5d05ed9b4eac3fc3362754fdae6203a9ed730315d4ade3356eea3274e44c7506f39415ba7a523c5a9d389359710e99fdd426f74bd887139ba558d8e129d2629ba220e90c583a437473ab00e03a3091ed70dd13a5bc9c6e878091e1074296cf849ba0b683b029d010bd40d0e7e3139def73dee03a99b9e6196dc4dcee607e978e74d9bbfa2739416d4c139c0ae91171cdba8444eae6b7c5d651734922f959b99b30c2a71cc8e7b628ce621b67a2472fe16fc6fb975a93054dcb6236cf1ee58b927fd272b3054f43b9502116119ca3600839ae4f57ef0067268007bfe392aa1bbb75c90a22d3f0e45fa0febb721d1b215739053472dd1c7dee85d90e3ca1e027971d267ee3538dfe294a39c6b49bf5d2e3351b6b897187f99d4338bab57f809c58b889844e2a0bebb12713de2f07db895b695025c463f954c4e20d2d7a2870f436acb9b870ef3794dc33e393d98e17a8d30d170ab079523b84c68c83f5c21a93555ee0e9035d0070626866bcb8282ca4621c0f9527cf4e058b5697f701a6bd3d0b8044423715bfdac16152dfc9c8a4e26fd3247f6b37e0b894b05bebf2a6952df3c6238656f8ca4f8cab7bd933ce8dbda6d7a37adeb0a71ed56f46ffb6d1379add54259bc9212b3c4de26bc1b736f024713763778a0036a1bb8124c16cdd9ec5b0d66ebe8d473bb756e4626ddba745664badd18e817da6e7be464a2b735b375565b96bef94e4dc9547368e6e3a5e53a3b715162a749b8683795fadc1406972d6dfa0ccd2db6f51558051b76974e6e6db95495f216dbb0156a9b6d5b9b9f21b66fed2f8adb193246156d7d4d3d82b6b70bef98db57be52ef4da9fe38d146d410192b93699147993db48da0a9b6da297ef5b86d062f267db67bdbb78a1b3a562585ed9b625b96d6ccce683d3365f69e6011b2c36bd62cd945f880d06c9537ec413643c71c371b1e7fd8fd6d8d9175b166c5f33538cb628fb4a025b11356b298d86fa1b59d6c2ae85b82360f0e35b5db045b51b6ed809b653916bf8664fcb35f6077a0fdaf7f55468ed7a77345ab6bc7bc21d3b5ddee842d9aec0723f18d748f5e2196b98f864c135c6ca9188dae09458f1ad6ee5abc806b6c294976b5b0a2adfd1ad5a072fbed697bd9e256b415c9ab0b59b7db1d65acb2ed79e8d645397e3d (j - 1462) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem columnPrice_eq_all :
    ∀ j : Fin 196, columnPrice j = secondRetainedRunPrice ⟨284 + j.val, by omega⟩ := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 313, crossSinc (698 + j.val) = sincEntry (698 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 313, crossSinc (1462 + j.val) = sincEntry (1462 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 698 ≤ j) (hi : j ≤ 1010) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 698, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 1462 ≤ j) (hi : j ≤ 1774) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 1462, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 284 ≤ i.val ∧ i.val ≤ 479 then columnPrice ⟨i.val - 284, by omega⟩
  else if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then
    fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    rw [crossPrice, dite_eq_right (show ¬ (284 ≤ i.val ∧ i.val ≤ 479) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := fourthRetainedRunPrice_eq ⟨i.val - 1177, by omega⟩
    have he : (⟨1177 + (i.val - 1177), by omega⟩ : Fin 32768) = i :=
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
  #[68556326435158266036471350784368920482567371654880,
    68172995458062356192228092183001140652501398232560][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 136729321893220622228699442967370061135068769887440 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the fourth retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem fourthWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (1177, 1294)) (retainedRunCells (284, 479)) =
        136729321893220622228699442967370061135068769887440 := by
  have hrows : retainedRunCells (1177, 1294) = crossRows :=
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
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
