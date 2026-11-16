/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Sixth retained run against the fourth

These are the original global rows 2790 through 2913 and columns 1177 through 1294.
Reuse the certified fourth-run and sixth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [1496, 1736] and the sum window is [3968, 4208].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 2790 2913
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1177 1294

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
  if j < 1737 then
    (digit 0xf73d888f287b966fd58fbdc6fe1c9e5ee15a62b70f6f96fc65e7b73e75b783db57c06bc1ed87a84dc8f6b17b104f7b4f7286d9bda30495a45ecf20646cef665b7adb27b291817f53d8f9b39611ec54dc15e0f61633dd987b00df4df1bd7b43a14bdebb047b3a8f5c2fedb217ad6cfe5aebd6601bb71deb04690d24f56c28dae87aaaf218733d4fd9b3e79ea5161fe26f511c3083d7a7d4e9a813d38cff40ede997564b5ef4b3df82157a4dee99883d20e921cc9e8d66b9becf4529157c67a1cdbbaf9bd082a1eadde80ec9726ef3edec857d79ea201a3cbcee9807005e74099259ef38605f08079b5c646c8bcd43830d91e66c05d870f31af3632a797fd9421c3cb9102b0e1e5913c71bef2accb88bb7948647d98bc9d25bc205e4b06b9380f23ba5e8d8790f73d843bc807ee1181e3c9c39188f1c79ae2e878d5139c673c6321cc515e2dd7667d6f150c3a9287899507d163c4514e43c9e1ebb7b074f0d73a3b8c785c3793993c265ec20e9e0f4bc98e8f05b19626e781dd65cbb3c070630661dff8bbd734efdc7ca8fc77de3ab5fd3be71229e09def7ed9e76ef5b805781779d72daafbbc689d7a51ddf28b931aeed8416d67775b8d60f3bba5748fe05dce8d0bea0ee52dd9b17771899369fbb83d9d4351dbdaf9830aedcb733ba376d4a59e0e3b61c1501f9dac9438de2ed42214e36768fc22ad53b3f32d74f1d9b3edcae6ecb7076f687649febe62bb1c3663f15d89b38565aec2a45d25376036b84893af8d414f49d77f646efaeb9bfd398575bc18efeebad5142c3e5d660b4679ceb0c4eefca757417b66d3ab0ff0cd89d53f6b9880ea7b5cc0c5752b78cd5bba8c9d39131d41bce5056e9e948f16a74e24d65c43a67f7509bdd2f621c4e6e95636384a7498a6e8883a43160e90dd1ceac0380e8c247b5c3744e96f271ba1e0247841d0a5b3e126e82da0ec0a74042f503439f8c4e77bdcf7b80ea66e79865b71373b981fa5e39d366efe89ce505b5304e702ba445c736ea1113ab9adf175945cd248be566e66cc30a9c73239ed8a339886d9e891cbf85bf1bee5d6a4c15372d88db3c7b962e49ff49cacc153d0ee540845846728d8020e6b93d5fbc019c9a001eff8e4aa86eedd724288b4fc3917e83faedc8746c855ce414d1cb7471f7ba176438f287809e5c7499fb8d4e37f8a528e71ad26fd74b8cd46dae25c61fe6750ce2ead5fe027162e2261138a82faec49c4f78bc1f6e256da54097118fe553138834b5e8a1c3d0dab2e6e1c3bcde5370cf8e4f66385ea34c345c2ac1e548ee131a320fd7086a4d557b83a40d7401c189a19af2e0a0b29188703e549f3d38162d5a5fdc069af4f42e011108dc56ff6b05854b7f27229389bf4c91fdacdf82e252c16fafca9a54b7cf188e195be3293e32adef64cf3a36f69b5e8deb7ac29c7b55bd1bfedb44de6b7550966f2484acf13789af06dcdbc091c4dd8dde2800da86ee049305b3767b16c359bafa351ceedd5b9189b76e9d15992eb7463a05f69b9ef91928adcd6cdd5596e5afbe539372551cda39b8e9794e8edc5458a9d26e1a0de57eb70501a5cb5b7e83334b6dbd45560146dda5d39b9b6e55257c85b6ec055aa6db56e6e7c86d9bfb4be2b6c64c91855b5f534f60adadc2fbe636d5ef94bbd36a7f8e3451b504064ae4da6451e64f6d23682a6db68a5fbd6e1b418bc99f6d9ef6ede286ce9589617b66d896e5b5b3339a0f4cd97da79804 (j - 1496) : ℤ) - 1000000000000
  else
    (digit 0xefde69043b77ee9a1a18bbf6f8c6a99dfb4eb72d4efd8ec12c077eba314acbbf56100165dfa74b36a8efd1aafe5077e7ca16e23bf3584ba5ddf96240c40efc8a6ba2a77e30fa8773bf0def445ddf81788382efbde0aa7977dd74899d3bedf5611d1df694c0e06efb15aa43877d6f9b2e7bbea9c157e5df4da2feaaefa316ecf277cfa055273be6d3b0d69df2e8288e6ef93183a6877c769d93b3be29cee925df0bf0bffcef8161b21e77be57dfd1bbddf8a5fd1dee5f495d0ef6df6e8c377b46c411b3bd8e7ca18ddebc95d9aaef58dbe18877a9a90c723bd36b696f5de8fdd36a8ef42150d57779e1087efbbcd84addc9de5fd43202ef29a749e87791a52ff73bc734dc519de2c852918ef0f97e0c6778469b6b33bc07d54915ddf5fb4f4aeef3ec86347776610382bbb95f90e59ddbc42ab94eed6ab57ee77678e325abbb1dd25ce5dd7f6815f6eeb7dadbe07757f4931abba9f7c1aa9dd3f7934aeee9781feb5774797a8d1bba1b12c58ddcfc847934ee75a8125177367b28f93b990b46d25dcb6991d08ee5254cc337724a2faa1bb90080ac11dc6dc71e4cee2d9043b677121335913b86a98a0cddc221f3c26ee0762f04676fed021583b7cf1ee639dbd3b2f2f6eddfd5a76c76eade3457bb72e378bc1db82947860edb6f19acd76d64212bd3b688080d0ddb2ed6b71aed8cc0561076c1008d6fbb5dcb74975dad88d4a8ced614bbcaa76ab1ea0f53b52c6d7af5da7fcc7a56ed349e078f7694a1744abb477542ce1da24a9358ced06c1c2da767d8e57af3b3bd963231d9c7390dd6ecd7c1cb4c7665eac3683b2ff5f9b85d96792326aeca7a94bcc764dbc56773b23cddacbdd905cb6ad2ec7683babc763508d5493b1763ed265d8a1fc1188ec445cd74d761bd628573b0abb296a5d83c3c0e7aec1140a6b076022a5ac33afdd69960dd7d4a3d158ebdd3b714375e80b98e5baf0b957405d76b4c4bc0eba859bf9f75cd802ed73ae3668ceedd7004eeb54eb72a8579975b28e86eebad5e173411d693c5939eeb3c34393975973d28373ac82d51339d625ca97e0eb050a9b97757b92b4df3aba4d7b231d5b678b4b4eacd38e9af755f95e8a0baac4551fcdd545eb09aaea94ccbf2275434d97203a9e18426fdd4d43d12b2ea5bd3e4f07526c0aa463a8fc9c4175d4618aa174ea225c4e1c7509f62091ba815d58a41d3edefd690e9e874145074ecf50b673a72d68b025d379891acce9ae29746674cfc48d563a6438ee7c5d30473181ee9738acaf874b26bd85b3a55881ddb9d28ecab2bae938a690d57494f22c1fba46c7ba869d218ad01eee8fd8b577d74775ed431ba37fb6b9cdd1a2374910e8c247c58a7459b92639ba2926dd125d12b86f040e886ea9318743c08802d3a1a4dbec71d0b4b97d38e84b828621741e54467cba0b73c39e5d03dec8bf6e8101e6ede7400a3e242b9fc9ca0959cfc73dc770e7d4cd241573e2febf6b39edcc0bd89cf50cae240e7999d7f7373c56c4adeb9df05bbd65cedab18f38e75e9e59d873a7f3f0aa39d04d66549ce650f7a10e723de87a4738a9d1a24b9c1a6bf831cdf0023ff0e6e96cd509736d6f2c1639b315790fdcd7ba7681ee6af58025773507184e139a49d41395cd081c5c86e675aec0487333ab7aa6399641c1e39cc957e626ee63c7fac5673172459703988069fac5cc23ea9310e603d94d0872fae3615c3979ef78ff9cbb37dd448e5cbca0e52 (j - 3968) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 241, crossSinc (1496 + j.val) = sincEntry (1496 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 241, crossSinc (3968 + j.val) = sincEntry (3968 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 1496 ≤ j) (hi : j ≤ 1736) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 1496, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 3968 ≤ j) (hi : j ≤ 4208) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 3968, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then
    sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1177 ≤ i.val ∧ i.val ≤ 1294) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := sixthRetainedRunPrice_eq ⟨i.val - 2790, by omega⟩
    have he : (⟨2790 + (i.val - 2790), by omega⟩ : Fin 32768) = i :=
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

private def sliceTotal (b : Fin 2) : ℕ :=
  #[6633545245079013513697853960796954662108054068864,
    3713108071516907656783381468002796716314035738096][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 10346653316595921170481235428799751378422089806960 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the sixth retained run against the fourth
in `total_eq_retainedRunBlocks`. -/
theorem sixthWithFourthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (2790, 2913)) (retainedRunCells (1177, 1294)) =
        10346653316595921170481235428799751378422089806960 := by
  have hrows : retainedRunCells (2790, 2913) = crossRows :=
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
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
