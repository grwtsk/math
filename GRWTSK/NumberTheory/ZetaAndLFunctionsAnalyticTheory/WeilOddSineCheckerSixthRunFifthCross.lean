/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross

/-!
# Sixth retained run against the fifth

These are the original global rows 2790 through 2913 and columns 1610 through 1795.
Reuse the certified fifth-run and sixth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [995, 1303] and the sum window is [4401, 4709].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 2790 2913
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1610 1795

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

private def crossSinc (j : ℕ) : ℤ :=
  if j < 1304 then
    (digit 0xd9287df84d6ca3700ae1b659631adf5b309053c94d9a3c251b96ce1a5940eb678c730a25b4066d81aada2398c19e6d2221312236994ccfbc1b50cd5e524daa7e916e26d64d6a230b6baedc4971b61c0c2dd4db3099e6f26da9b90b12b6dda38dc15b733dbb5ccdbbd9091ea6df0baf583b701675d025b8540d731cdc4eb1470c6e39ce5368b7263218809b97c680142dce3df09886e84e48139b74bfc5bfd9baacafab16dd7cfbb5886ed1ee48943772be7a229bbe4a67564de19e8058b6f20dbe2f3b79a707de11bd240c2a14deba83980f6f719cfc8b37c30a2be51be6a9e63dadf5eacf57c6fc420b74737ec830419dbfb8189a8ae00641965d701855adf1b816d243415c10c342fe8e0b11de9de706e29f77ab841eee49c5c266a87d1ae15f1d5c9070c58b2a63386dcfa3a31c3c72ae092e2101a5f74711e66604b389a6afdd29c52d6ecc86e2c3ee6f497178a8399e38c7b734869c69925d5f6e37a721c1a71d43ce167b8f5aa4ee5dc809ffc428e4337d1110723110113f39243a1bdf1c97faaa0aae4eee61c85728f0d155cb9535c3434dcaf9d2c7d4e5ac83384e72ee1ed0c4b98305fc989cc7822f9c0e66c29924a734e2fc195b9b32ca7d4dcdfa446bb8e72dad952873af2a0573b9e3c539065cf7fdeda18e7f0e2f1657410f75e0f3a14c485e25d108989aa6e8b59ca68674738135c63a461f390c5d29416af4ae97bad0c8074d6b0a461ba77c9d4769d421fcd93eea42e5dd60753a6e73ed3aa9b8b3d0dd5b1edac92eb0b183f14759ea325a53adbe00f045d7438aa422ebd414cd79760336f6ffbb0e33fcb85d8d67435dcec9daba483766811e6c7bb40a874e59da6a49e766ed67ac6a9e76cd1bba54bb733153719dbfeaa6318ee31e65b3377323c02cf3ba5c25ad69dd93338d3eeefc28515877975a22903bd84f36d25df278299bcefc640d2a377fc5d528d3c0acb7f219e0bb3421def08ffe1a2178612ca7d8bc3d2aba401e24de43a80f1592e237078c5af1933bc6f6060345e3df2e8a6af2219eb5f57929cb84ab3ca15fdd5f9e56eae60eaf2e91d7031798d68b5473cd31c9556de6fbfecca8f3af77d32a79f06d68c2bd0489e5c1de886bab29af4747b4df67a52c055513d359b293d9ea0e7ce53ef537f549567ab4482f713d6643ba46deb92e03bdaf5f9b3335b7b14ebafc13d9676f6271ed137faa02f6b9828b2e7b749198e2bdc6283fe49ee8ff65714f77730ecd37bd320bd613df54b0338df007dfb5f4f8328c1d037c3080059c3e23d2b7859f17ad79cb4f8eb62150b7c8c9675bb3e51b2e2cd9f2e87a5c6af9a1810eb07ce74b339d3e7edf1caedf45064d8f2fa54b790197d40858ccfbeab4b115cdf5b234a0cefb04d477b47d982cfc81bed6ea849adf70d8804eafbb1a708247dee2931783f01b154b41f861fe306efc5afef41c7e426213fdbf2b937d755f9af374074fd00ac6a437e94bfcbcf3f54851b225faf4d45bb4fda28021017ee52ac604bf7c7a6d675fc3277ca16fe404b62447f338bbaf1bfa367da4b1fd67c50c28fed9e0173c7f7fcbb3febfc941f1191fe9460f26eff6f10d3fc7fc9d411793fedfd6d481ffb7f1b49affffb0e30a80118e9059c0118f395c600d21f0877008b9450dd8056e54ffd4033ec71c2e01e29238c901128ff73b8099c2d7d1c0550a67a5602e8f63bdf019479887a80da121cf54074dea3b8603e4f7c9e90211279aac8117be87c3c0935ee900204d6457317028871b29d8152b3f955c0b081378ca05bc8fb56302fa304eb5818aded0eac0cc3bcf2de069789122703663cf1b581c02bf14040e685321c20766e6233d03cc722d4081f288c5d6c0ff5427982082a5daff7042cabac478221e3481cc1169fbe7ce08e1a8c1910486c63d3c824e2a0485412c5f4fc8a098c82b76104da9fdc1a82774c1f8441408a8117a0a2aa95a93052817bc38829d395a71c15319471320abbdcf189056f0e51e782bfe21853416403e7d160b3fe052b705af655bda82df376287417342fd27e0bb678f72505e8ffec5182fb2aed534180cf76f020c1f6f0c6f061bc2720b8313af1c55418ca29d3b60c7a8d863d064792c0f88328b706d64196b6127760cc7a22f55066c581aaa833a367bf7419f03d58260d067dba130689fb368283482206c441a58643ade0d36f3d06106a066499f83526ef21d41aa381ab120d58db231f06af850e7d (j - 995) : ℤ) - 1000000000000
  else
    (digit 0xe3d5768d1271e6bafba8b8f16228221c77b5d54f6e3b5e836a271d71ab31738e9a596809c73e16656ee39794109c71c81889d8b8e23896ea9c703500fdee37a82379771b9b884b738db1d26fb9c6cb1a1a88e35eba7b4c71abfe81c938d45530d3dc69583aedae344445c84719eee376bb8cde28a969c6629b5554e32b270b1371928b3345b8c7c6f5ecdc6326ef1b0e3136963f17186d8d95038c2041f8b5c6050bbf1ae2fd11ef5c717bda62ef38bc9b9ebfdc5da7e4ca4e2e826df13717192de10b8b78ef5015c5b2d279d6e2d4ae0ca57168052c5638b2df8d86dc58e137366e2c2acf7d9715f340249b8ae8ebce39c56c4bb032e2b228c522715721e69f38aa9dc0a81c54d84ee42e2a3263c36714fd1317cb8a70dbf089c531c83018e295a9c6af7149440bd338a3dfc68a1c5191dba1ae289b76ecd71437c6ebeb8a114cdb41c5038d1030e27f52de46713e7c22f3b89eadb2c95c4f11cf390e2767f5d36713a44c038389cab3b855c4e1d360bae26f3fd1227136d7ace9b89b0e14e05c4d5b58da6e26996bc107134361d8c3899d6d2d95c4ccc7e81ee265863bc47132611469389905f0471c4c70e1448e2631009047131596137b8989bcead1c4c48aeb72e26235770271311fa0d4389898b6185c4c5407af4e262f772db7131b43d023898fcd503dc4c930035ce26556832e7133176c39b899c8403f1c4d059f7bee26952c7cc7135493186389afaf2e01c4dabdfd44e26eebf9867138495c6c389c94ce371c4e85aeae2e276216a0d713c1788e0389e9599cc9c4f92ec94ae27ef203f37140b31f48b8a0fd03629c50d36d30ae2895c4ac271461b548c38a3ca9efe9c5246f74e6e2955e5b29714c4f2a2db8a6fde6f81c53ed44e5ae2a2f5eb4e71534d6e74b8aa963c101c55c60325ce2b2204b2b715b14bca338ae92e58b1c57d0d2848e2c2da65107163a37d3738b2f31155dc5a0d46d02e2d520be3b716cf7e63ab8b7b5d42d9c5c7ae744ce2e8ef778771770ffb9cb8bcda29ce9c5f192ea4ce2fe424e337181e98f9d38c25ef52b9c61e78b548e315149ccd718d82433db8c84300a7dc64e55f790e32d615c277199d786c6b8ce84fe5a5c68120119ee34723247071a6e69a50b8d52388565c6b6cba45ee362542e5e71b4ac8e6238dc1d20f85c6ef4c93b4e37eee547771c3264491b8e370333c5c72a96092ae39ceb146c71d250703ab8eb1b13169c7689a76cce3bc43909071e227973938f31bfdd49c7a94b9a36e3dcf0916371f2a812b3b8fb711a839c7ec9a7fd4e3feea87387203ce0feeb904187a5b1c832778646e422298bec721595912f390d10192f9c87ad261fae446a564bb7227fa6ea4391655dde85c8c59a20eae46c558421723af8575ab91fe79afc5c912bd2e8ee493310bdb724e8ad242b929c30ef41c9622957f2e4bb2ecef57262ad3f363933e5e4ef1c9b3cbcff4e4e44553f072775ad810b93e4db531dca079133ace50e6ad6fa728c8eb1ccb948f805b49ca5d658f04e539954c3e72a243bdadb953e24ab9dcab5346160e565ba624172b874ca72395f09e7689cb0ee8a288e592cf845472cf1c858eb96a6c2e6adcb6a6cc79ee5c0c9dd1a72e6357c71b9760662919cbc7aac842e5ef9e591c72fdba1dd13981d5b77a5cc268c23d6e61f41a96d7315a4bafeb98dd7523c9cc86f9e6e0e64fa84663732def8943b99a084a185cce8dcb08ee680c6725b734694a34739a665a928dcd4c1cb856e6b2903c89735f8e0a7939b2ec6d1bdcdb0a1d3b2e6e4f983e17378d5a88539bf9987eb9ce16537bfae717f5f9fe73926550c939cc69e09bdce7d18d44ee74b79262573ac36c1d8b9d95a53fadcee4d8afa8e77f76684773c643a6ff39e667b5649cf4d7996f8e7b3e0fc1573e08599cc39f38ecf87dcfb6e1cf58e7e8abfc2073faf623a1ba00cc65301d020f76056e81dca64fb74158ebf49ba0e1d320f1d08ba01a4ce8532f1870743048da903a1b7deb8a5d0f6c19cd4e888cce0b1744b1dd7dc3a28eb418a5d162415d3ae8be96739f7466070fd4ba3661df4a9d1ce04ad06e8f47e76087480fdd3013a43de6c2c1d239f0c092e92a777ef7749bfb6b70ba515d8c889d2a5eab5a6e960741b0574b6f91e62ba5edbe2871d311d79a22e99666cfa874d1f02df23a6c560ef1dd37d9c72a8e9cc421e9174ecd9dac0ba79c8b20c1d3e91e4154ea01f88901 (j - 4401) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 309, crossSinc (995 + j.val) = sincEntry (995 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 309, crossSinc (4401 + j.val) = sincEntry (4401 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 995 ≤ j) (hi : j ≤ 1303) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 995, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 4401 ≤ j) (hi : j ≤ 4709) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 4401, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then
    sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1610 ≤ i.val ∧ i.val ≤ 1795) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := sixthRetainedRunPrice_eq ⟨i.val - 2790, by omega⟩
    have he : (⟨2790 + (i.val - 2790), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := fifthRetainedRunPrice_eq ⟨i.val - 1610, by omega⟩
    have he : (⟨1610 + (i.val - 1610), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

private def sliceTotal (b : Fin 2) : ℕ :=
  #[153107043202328549752459764911659580839464944061950,
    81951271204220738588597595295117618587655603094764][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 235058314406549288341057360206777199427120547156714 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the sixth retained run against the fifth
in `total_eq_retainedRunBlocks`. -/
theorem sixthWithFifthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (2790, 2913)) (retainedRunCells (1610, 1795)) =
        235058314406549288341057360206777199427120547156714 := by
  have hrows : retainedRunCells (2790, 2913) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (1610, 1795) = crossColumns :=
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
    change 1610 ≤ j.val at hjlo
    change j.val ≤ 1795 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
