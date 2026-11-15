/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Fourth retained run against the third

These are the original global rows 1177 through 1294 and columns 666 through 853.
Reuse the certified third-run and fourth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [324, 628] and the sum window is [1844, 2148].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 1177 1294
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

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

private def crossSinc (j : ℕ) : ℤ :=
  if j < 629 then
    (digit 0xba43801c335d0f44e2d62e7e8c1624d73ace9b5a0b9b358510b5cc86ddf52ae5bc0096d5729b8d0e0cb92d2fe2125c869e9a7f2e3b7bdf261719e8f68a4b8b146d6425c49f6ed8aae1dcf6e86570b66ed25eb83fdbdccb5c129603f9ae02ca370d56fe3a69356b7d92c3ef55be09a54982dea7b5cff56f26af12eab77d73d2285bb4219a8dadd4f1a5f196e7ffdbc18b72cecea3b5b8d48ce842dc23b7562d6df004e27cb6e7d04bf75b6c2c1ff32db266c96456d7733a7a4b6ae551fd45b50e6ee872da581375096d15f5e0eeb680b0e4fa5b3b93c3abad9b97e895d6cccb3fdfeb65f17648a5b2c4c4c33ad94b7978e16c9bd2ef98b649baa51d5b23295227ad90ec8c6a56c83b40f2eb640cadea25b2042b6b8ad90429a3196c84b506eeb644766e715b23af6c582d92c51bd016c9f2fba72b654e9cbba5b2d8570f62d987ef13d96cd37a300cb6724f7c435b3dd9c86a2da17a7cb556d21e67ab8b69cd009715b54c07705adadc1a00516d8ac2a4beb6d491f5ab5b724c7c4eadbd5db9ef96e0e589af4b719b9b21d5b968fcde9add057a3a796eacee18bcb76c6994c65bc19b52afade6b7ae6156f66c494c0b7ccc1ceeb5bf37eddf3ae0085a0f89703c192e5eb83ae063e75c2c492af3ae1dc8b5b29712d249bd6b8b6e120625c6c07d881ae3e8798161723a1b1946b940dd91dc5cb2c764d6ae62c862dc573632c5864b9d8ecfeaa5d0093299d2e8a909dfc974a883710cba7f245e545d5575582e2eb5e53cd09760a46d298bb339652605db176f6002ee4ca9c53d778898360ebbf6531f7e5e149fd950af1744817d57923949128bcc768a72b5e7ef6a5fdaf4d5617b557adb540a34bda6e261bc5ef080ca9b2f8701ef6517cafe9ecd2be94c958d45f69427dbe2fc449fca417ea1649f8cbf912422565fe93ebb80b0052f9601d80afcd9a5ec09bf6dbbd607077433c3049b37369d82db295e1cc1b54325ef60feec95853091d5ad2718523776cbac2dd08218061949df257b0dd95bb04d8788b24294c413426b6d6231895785312cf27389d8a0acf5084c557ec1a4e62d5ab7f5a317fea0b54d8ca9bef6fac6aafcbbfa6380ffdf8431d67a149558f656c8206c80c6953ae643380a82db2309f7ea25923dbe2652c97c24589b64ed26c35b328e5695b0d953294fef2cafa1db50765ade9d48632ef9b02a619843cd0c62cc8642c5cf6675c0386cb35467cb0bd9b713d3440ce207e5a7067449f052b33bcb7512019ebab74218cfc8b8b58f681a7a0a8a34288354065a22007e92ad17ed78df268f743d28ab497c4f015da5a0f6c714d342be0ffa69daeda235b50a749f469a93d466786d5144cdf976ac5677aa3b5808a39c05acf4b448dcd6f3621aba6bb6a01a4535f9fcf6821b0c6f8e1c0d8dfd95c3b6cae84fe653676c36c301b4b3c7a7aadad98bbf496dad0264efb6f6d391fa5b8bacf167cdce04fe3406eb2034e6f377a22c0a59bcdbb8b8e4def3f9f00c6fbd7180493800a5b3b05c1162931dae1145b9afd70cf358738b88a508a985c569c046fae341442c1371e736ba06b91716ca3cdc9d618ebdce57a8083c973055b3c7939a6eb5e5f9ce5ac94e4ce7bfdb215074298802843a39c09b431d2f762e386ea111c29477553a0d3b33acf883f675d7ab72764aec6e096cea7683884ecbbb68337563ddc768035eaeed66671ae77b91fedafbc03b2d5dcde1580fc638f149f4795678f44809733ca1f669985e64fa05058f3c8728a7d7a34dfdeaf3d42edabad1eb5cac9476f6519d798a7b7ac5920c3de6878bcf1f07eaafc66f8e52ff21c7cc5d635013e8cb270b6df5b50daf0efb82e280dd7e15edcad03f355c3aa41faff42a4c0fe2a6b9dc27f6ae74db23fe07245fd6005cb3bc5500db7fb6bd80c49cb439c08de16e06e05ccc6d12b0395d13ad28222e6f6eec13d960fb520b4eddd1e5065910a59183859e1616c1ef7c0c99e10e256d8090924ec8af984ec991fb3c2a37ecde7e16868c40510bf911a3c18657ae35b1c359894791e1c3ad4c3cb0ed52ad9fc87c6b29449c41185fb7ee21fe8391af11b8e1561c89397a9889c4cb5efcd7e27d0e86a0314a3dc8c5a8aafd9c7174586fdf36b22db14fb8d11795c24a6b8c29a2d316c6444c1f26e339f02b23d1a8e36c59b8da6a7a53d4703325ba8a3999476f151d8cdca930 (j - 324) : ℤ) - 1000000000000
  else
    (digit 0xdca35d125c6e57a08176372ed619411b98f4629bedcd420ede66e7068e557b73b6d613f9b9f597eb8edd0814f5296e8ac82d3b3748cf7f0b5ba623b5ffedd3f2f4aca6ea6b950513756f9e1321bad51b9362dd796541056ec436ddce3765e9c2611bb4e21f3feddb6ab5b826ee33afddcb7759c29e15bbcd3655f8ddf6f5516d6f03bf72ae37860dec225bc523ef7d2de3a360fad6f25bd999f37973bab509bcdd208732de805fbb606f492e6c78b7a921d7f8dbd6dbe2618dec963b4816f6e0a82cbb7bbbcb1b95be03f97080df153298c26f944a136537cf0847fd9be9fb28258df63bc46996fbbe4f5d637e3007ac85bf40c7fdeedfb4efe07a6fe4d2a41f37f7a0fb889bfe71712a8e008bbd04a700f0a3c66380ce54dfbdc0927b842ee05f0dcafb703a8282d1b822c8c91a1c142cfb1f2e0b7d2d45a706731e371b8394698111c1f7ec9f0ae112f7430870950e7444b85059bb475c2b1a9fa70e17066c4ab70c40df7523867fd096d5c36fde2796e1d00c623b70f425dcdd38802b30985c4325e4762e231d2849071254b45a73898deb768dc4f8fe4162e295a2f907715773055138b211fe3adc5c390cd78e2fb66f660718a91a4c9b8cbbf4061dc691e77dc0e3630721ba71be9b64d438e5e0956d5c763d2c8d0e3cc6b93c271f38440a139006ff2791c83922144ae4377bde0272293ff07db91b672b855c911a3bfb0e4a41f1054725fc1ec90b936bff4d8dc9ed252f88e5123bbe807296fd6fae395273e46c9cacb72d8d0e581b805f972cee57a3ab96e7c735f9cbac584ca2e5f27993c173076cd51eb98ad2ff735cc8fa04430e66465aa6573408614ccb9a770cc8f1cd7514acf2e6d7612821737a239c55b9c44f064d9ce5c7eb516e74b508d2073b437a08ab9e166c18f5cf45a6d82ce7c01801d673eeb42b30b9feb0fe151d03054ec06e8359b5d7874298b1e3d3a1c26a8225d11c502dcee8abbe2c907464ae37233a39c09a22dd2095f4f4ae92263b7a374a00f122c3a57779e591d2f748845ee9996f09f274db9f2dd93a754470911d3e5d190a0ea10c2f85475174fee50ba931fbfd85d4d4bfd52aea8842281c755312a0d83ab102303add5c3d85e88eaffcf1617758ed87f51bacee45c839d6b2dff2c6eb774c1d9775ca92b3c53aecbed802dd7a19b1fa8ebee9b7f917606325bf0bb0a8a30559d88fce48eeec659f69c57641a88cdcbb283eef31dd97d3db6c0ecdc39fdf4767ce6567abb45d59c359da69ada41ced524d591c76b7dcc7433b6346beb6ddb54e24d6eedc7bb9ac276f27cefdabb808adf965dc3e9fff18ee3c66ec3c772cb7e6ba3b9d9a8b149dd26ab2422eeb031880977667ecbd6bbba6e52a4dde0cc854e2ef22fdc11f779fc2cc4fbbd6fecec51def0bc65a0ef94ae0a4b77d87526163bf344a0d25dfd24c754ef00524fd7d7810872b9bbc0f3874ddde0b13dfc2af0744563257847ea4779bc2ad303829e18d56da6af0e1f2397e787e900018bc460d13b85e2665d66c8f14e0ebbdb78b469fb573c60df7ca4de33c187d16f1b87e69e978e96a02273c7b43276c1e40e4f8cb2f221250ee9791d82042c3c953110fe1e4dccaa6ecf287e6c8df7950a41b4ebcaea24bdede5a7528d4ef2eca80fb47982c28f4e3cc79001ef9e66db0bfccf34f4dbc4979b3cfd9463cdff376301e72faf8ad0f3afbd0f7a79e3bea72fbcf7c6067d9e7ed1a152cf40ddbb90f7a1281df55bd0f012d4cde8a5bc6dd8f4698fde9b7a400ca3c3bd259e835f1e959639990f4c2c022417a6c5255a33d3b97c16fdea07dda040f51953a9687a974698943d50e6c1dfdeab0f99a40f56d32234f7ac0dd55f43d658582569eb5487bd62f5be43cf8e7ae90ac0193d796e255e1ebf25969b4f60c7184747b0fc355803d8c9af3f7dec8a413628f657a4b54a7b34fbe3e8bd9f065f299ed1c12fcdcf69fc778797b58a98b64bdb0ab01825eda7a3e736f6e4c48d8d7b7ac1c152bdc183a0969ee2cca79b8f7268763127b9b3a534cbdd18b2e739eeab5e9f88f764fc1c4f7bba096a003de0bccb09def2339b5aef7a00f96e47bd7258bf2bdef13c58e5ef94369606f7d7af702e7bf285a0373dfc8b9dd05effe31a1e4f80bca0a977c0c20f109be092005869f06108cc62f83c4e92ac7c23ef2e59be14cce1909f0bc9ba454f8692d0412 (j - 1844) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 305, crossSinc (324 + j.val) = sincEntry (324 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 305, crossSinc (1844 + j.val) = sincEntry (1844 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 324 ≤ j) (hi : j ≤ 628) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 324, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 1844 ≤ j) (hi : j ≤ 2148) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 1844, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then
    fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := fourthRetainedRunPrice_eq ⟨i.val - 1177, by omega⟩
    have he : (⟨1177 + (i.val - 1177), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 666 ≤ i.val at hl
    change i.val ≤ 853 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := thirdRetainedRunPrice_eq ⟨i.val - 666, by omega⟩
    have he : (⟨666 + (i.val - 666), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

private def sliceTotal (b : Fin 2) : ℕ :=
  #[306968406070804046049509846706029515331748814924438,
    413567106425802472327393495507002786402103859252872][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 720535512496606518376903342213032301733852674177310 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the fourth retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem fourthWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (1177, 1294)) (retainedRunCells (666, 853)) =
        720535512496606518376903342213032301733852674177310 := by
  have hrows : retainedRunCells (1177, 1294) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (666, 853) = crossColumns :=
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
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
