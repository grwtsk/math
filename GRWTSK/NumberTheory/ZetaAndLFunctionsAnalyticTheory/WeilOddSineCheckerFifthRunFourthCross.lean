/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Fifth retained run against the fourth

These are the original global rows 1610 through 1795 and columns 1177 through 1294.
Reuse the certified fourth-run and fifth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [316, 618] and the sum window is [2788, 3090].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the three disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 1610 1795
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1177 1294

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

private def crossSinc (j : ℕ) : ℤ :=
  if j < 619 then
    (digit 0x2e3b7bdf261719e8f68a4b8b146d6425c49f6ed8aae1dcf6e86570b66ed25eb83fdbdccb5c129603f9ae02ca370d56fe3a69356b7d92c3ef55be09a54982dea7b5cff56f26af12eab77d73d2285bb4219a8dadd4f1a5f196e7ffdbc18b72cecea3b5b8d48ce842dc23b7562d6df004e27cb6e7d04bf75b6c2c1ff32db266c96456d7733a7a4b6ae551fd45b50e6ee872da581375096d15f5e0eeb680b0e4fa5b3b93c3abad9b97e895d6cccb3fdfeb65f17648a5b2c4c4c33ad94b7978e16c9bd2ef98b649baa51d5b23295227ad90ec8c6a56c83b40f2eb640cadea25b2042b6b8ad90429a3196c84b506eeb644766e715b23af6c582d92c51bd016c9f2fba72b654e9cbba5b2d8570f62d987ef13d96cd37a300cb6724f7c435b3dd9c86a2da17a7cb556d21e67ab8b69cd009715b54c07705adadc1a00516d8ac2a4beb6d491f5ab5b724c7c4eadbd5db9ef96e0e589af4b719b9b21d5b968fcde9add057a3a796eacee18bcb76c6994c65bc19b52afade6b7ae6156f66c494c0b7ccc1ceeb5bf37eddf3ae0085a0f89703c192e5eb83ae063e75c2c492af3ae1dc8b5b29712d249bd6b8b6e120625c6c07d881ae3e8798161723a1b1946b940dd91dc5cb2c764d6ae62c862dc573632c5864b9d8ecfeaa5d0093299d2e8a909dfc974a883710cba7f245e545d5575582e2eb5e53cd09760a46d298bb339652605db176f6002ee4ca9c53d778898360ebbf6531f7e5e149fd950af1744817d57923949128bcc768a72b5e7ef6a5fdaf4d5617b557adb540a34bda6e261bc5ef080ca9b2f8701ef6517cafe9ecd2be94c958d45f69427dbe2fc449fca417ea1649f8cbf912422565fe93ebb80b0052f9601d80afcd9a5ec09bf6dbbd607077433c3049b37369d82db295e1cc1b54325ef60feec95853091d5ad2718523776cbac2dd08218061949df257b0dd95bb04d8788b24294c413426b6d6231895785312cf27389d8a0acf5084c557ec1a4e62d5ab7f5a317fea0b54d8ca9bef6fac6aafcbbfa6380ffdf8431d67a149558f656c8206c80c6953ae643380a82db2309f7ea25923dbe2652c97c24589b64ed26c35b328e5695b0d953294fef2cafa1db50765ade9d48632ef9b02a619843cd0c62cc8642c5cf6675c0386cb35467cb0bd9b713d3440ce207e5a7067449f052b33bcb7512019ebab74218cfc8b8b58f681a7a0a8a34288354065a22007e92ad17ed78df268f743d28ab497c4f015da5a0f6c714d342be0ffa69daeda235b50a749f469a93d466786d5144cdf976ac5677aa3b5808a39c05acf4b448dcd6f3621aba6bb6a01a4535f9fcf6821b0c6f8e1c0d8dfd95c3b6cae84fe653676c36c301b4b3c7a7aadad98bbf496dad0264efb6f6d391fa5b8bacf167cdce04fe3406eb2034e6f377a22c0a59bcdbb8b8e4def3f9f00c6fbd7180493800a5b3b05c1162931dae1145b9afd70cf358738b88a508a985c569c046fae341442c1371e736ba06b91716ca3cdc9d618ebdce57a8083c973055b3c7939a6eb5e5f9ce5ac94e4ce7bfdb215074298802843a39c09b431d2f762e386ea111c29477553a0d3b33acf883f675d7ab72764aec6e096cea7683884ecbbb68337563ddc768035eaeed66671ae77b91fedafbc03b2d5dcde1580fc638f149f4795678f44809733ca1f669985e64fa05058f3c8728a7d7a34dfdeaf3d42edabad1eb5cac9476f6519d798a7b7ac5920c3de6878bcf1f07eaafc66f8e52ff21c7cc5d635013e8cb270b6df5b50daf0efb82e280dd7e15edcad03f355c3aa41faff42a4c0fe2a6b9dc27f6ae74db23fe07245fd6005cb3bc5500db7fb6bd80c49cb439c08de16e06e05ccc6d12b0395d13ad28222e6f6eec13d960fb520b4eddd1e5065910a59183859e1616c1ef7c0c99e10e256d8090924ec8af984ec991fb3c2a37ecde7e16868c40510bf911a3c18657ae35b1c359894791e1c3ad4c3cb0ed52ad9fc87c6b29449c41185fb7ee21fe8391af11b8e1561c89397a9889c4cb5efcd7e27d0e86a0314a3dc8c5a8aafd9c7174586fdf36b22db14fb8d11795c24a6b8c29a2d316c6444c1f26e339f02b23d1a8e36c59b8da6a7a53d4703325ba8a3999476f151d8cdca9308f26b96311c7c39923e223f9f610a2d209155252790a9a8765748856895d0e45b08fbe4f239b3ffd43 (j - 316) : ℤ) - 1000000000000
  else
    (digit 0x3830656667dc16cd9b19ae0ab62b9da70503bb6f038256ac9615c115fc21fae08070600a703b0120fab81aecf9655c0c30af290e057772af87026c49409b810eee7645c0741d6fdee03082a33070138bc56f38077366811c02949f662e00b9dd87970015c2db7b7fe7d2b4a5bfe2a5ec7cdfe8d35ec26ff03b0725b7f60ecafb1bfa045bc6cdfc82d4b386fe02d4c3db7ee2abac15bf623cceb0dfa9b5316f6fd137b65fb7e6d34f0ddbf289d847adf8d7420b06fc35ebc72b7e00abaea9bef3793280df7372a1606fb6a6919b37d9d30f58dbec2e01bfadf5bb8b28b6fab13240437d42e3ab85be96e16de6df464dc78f6fa0a81bb9b7cf1e08345be6f8b3a8edf3338c5e36f9768d991b7caa41f3c5be4cea754edf228003086f8f58762537c6c203021be2f0aee9edf142942956f8879c0dcb7c37912021be15f7506edf0839b4656f82cf3f0e37c0ca85939be01b91aa8defeb5f2f36f7e5b2b2ab7beb771831bdf258a028def7a201cb6f7b1f73fe37bd40c3b4dbde7dd03cadef3014c2c6f791dbc03b7bc6743cf5bde24c35ecdef0d6a3c26f785758ca37bc2b92f15bde1aaf220def1243f956f78cd526bb7bc8e2b6fdbde5fcbd2edef3ebbb0d6f7a806318b7bd8f609ddbdef43e36cdef92e15276f7d70f6b337bf2f5e9c5bdfd817750df00ebafcd6f819f2a8337c16e2a365be10b5505cdf0b244f516f870accf6b7c44ba0c45be28de0a58df17d71a116f8db35d7a37c7c7781a1be45f904ccdf270298476f95980c6237cbe13e7f1be680262d6df38a4b3f36f9eb7baeb37d0985aae1be8ef50b42df4cbab8fa6fa910fb4737d5ec0be29bebacaa902df634155646fb4a210c5b7dbdb69eb9beeb7babd6df7c3499c16fc168f00a37e265654b1bf20ff4966df978ff9b96fcf633f59b7e988c75e5bf5b4b7e90dfb54e4cc26fde8e56f8b7f14432901bf9a55110adfd569cef96feee7419db7f9962294dbfde0f915edff7dc222570006abcf9b8027cecaf5c0266d5d22e01c9e4ee77013153a4fb80bf6c0009c0735fa186e043a8c6017026e2df22b81601a5e0dc0c4d65e32e06cf361d4703bcf85f638209b82419c11ac06868e0987567f77051d6bf1f382bc21419dc1750b6e7ae0c6258aff7068f3d1ad383772f5dadc1d3a3fb86e0f5f9ec62708121bc5f3843ab9def5c236757b76e127e81e87709a5b36b23850695f431c29d6a3f60e15be526f470b49ab1fc385da969d3dc3086b8210e191e580ab70cfda5a9c386b68cb4adc377616cf6e1c9dd1e9b70ec14193cb879a46fa0dc3ea331d44e203bf6e41710941942438885921c7dc460c6a962e23f7f5a6971275c309ab897838c615c4db0126a0e27d0f4e0d71465d145eb8a7203a795c558c6af24e2bc61375871663d272a38b72b984b9c5d9fa682ee2fd668acb7186f51449b8c7a1f4111c65e7e8886e34010468171a87d4c4038d87f7ed49c6e6345f38e3844ef59271cace067f38e9c04d4f9c770fc5a86e3ca12b39671eddf432ab8fb6058ce1c7feb60f1ee4114b30427211a8ccebb90d5b801b5c88f403f82e459e7b32c7236223ad4391fad88739c92278e3ace4a3d71f9c725b42f24e3932521e7e5c9b83d30f0e4ef07f8857281022919b94544d74f1ca5069a206e53b68649772a756e757b95881316c1caead9ff56e588e6326272ce3809a1396c0295db9cb87696768e5d76edc9b72f59c432d397fc459375cc25f25790e626ef8e75731d7a1ffbb993c1bcc61ccc64eb4c0e6775528117345c80714b9a7f5ef999cd6857d488e6c88c42ff736e7c3ccbb9bc5c0fb29ce0be68640e71a8136e073978ce50e39d0ef2b2a9ceb0d31c58e76d201e0b73c0f005be39e5aa41605cf56f575d2e7c054da5273ea9b891439fa88442adcffe2507d8e8140b19d074148540083a0f84190f5d0a638e778e8682e5bce743ea2e4c6ba24989a7b1d14f07d37ae8bca9f5af7468ea1d273a39c099025d1f8683e5ce9116917ef7493507d30ba4ef6dca01d2a2305858e96656d32f74bdcb899dba643625fb1d34c361994e9bb5e1d4b74e850ba68ba79792fabdd3f64f4c54ea1069d6767512d57d5eba8ebaaf871d4a051974eea6564ce6a753d4f38b43aa3f557e79d54a12880ceaba39c9947567b34d9e3ab923d8fc1d5f3679d48eb0ed3864b (j - 2788) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 303, crossSinc (316 + j.val) = sincEntry (316 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 303, crossSinc (2788 + j.val) = sincEntry (2788 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 316 ≤ j) (hi : j ≤ 618) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 316, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 2788 ≤ j) (hi : j ≤ 3090) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 2788, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then
    fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1177 ≤ i.val ∧ i.val ≤ 1294) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := fifthRetainedRunPrice_eq ⟨i.val - 1610, by omega⟩
    have he : (⟨1610 + (i.val - 1610), by omega⟩ : Fin 32768) = i :=
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

private def sliceTotal (b : Fin 3) : ℕ :=
  #[66939123241550789569095371916501878343903281260078,
    230320469062475871757266156202363259783091459900074,
    225466998455178671174471794360352880822256716242734][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 3) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 522726590759205332500833322479218018949251457402886 := by
  calc
    _ = ∑ b : Fin 3, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 3, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the fifth retained run against the fourth
in `total_eq_retainedRunBlocks`. -/
theorem fifthWithFourthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (1610, 1795)) (retainedRunCells (1177, 1294)) =
        522726590759205332500833322479218018949251457402886 := by
  have hrows : retainedRunCells (1610, 1795) = crossRows :=
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
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
