/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Tenth retained run against the second

These are the original global rows 8652 through 8758 and columns 284 through 479.
Reuse the certified prices for both runs. Signed sinc entries are stored as
base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [8173, 8474] and the sum window is [8937, 9238].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 8652 8758
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 8475 then
    (digit 0x1d00f578baee80e80be64740aac9ca63a070d46d99d0462892f0e829f6a83d74186e0e2f3a0df1229e1d07d5fae32e8459de6c37426474ef5ba14e0783e9d0b4ef2898e8616f9c33743434ee7b3a1bd98eb41d0ecc933e4e87d64de8774423376553a22daaa1d1d124dfebe2e89976b92874503f6b0aba29e20c2c1d15d2559d4e8b59e2eac745e554cedba30edf4959d1958b77ece8d1d43a92746c7198fdba37fca17fdd1ce0434d2e8ee11d300747a90c9c63a3f0c4ff39d206817716e90a4fea847488af583d3a461b3c4b9d23ef520c2e9268771d67496c9bca83a4d27a2a51d2775112d4e942b1599b74a4dc6f7a3a542fbf519d2af8730cae95ec6942974b2e3ea383a5b31cf46dd2e789642ae97ac0174974c0dca857ba622c10901d31f49a002e99696ddfd74cec32823ba691cc2be9d356b9e47ae9b243ea3d74dc93eb9aba700227599d38dcc4242e9cdc046bd74ea4b7950ba76da824f5d3c472de22e9e90508a874f7e65d4d3a7da41a635d3fa9ff472ea040b515f75056129e9ba845d399e5d43045dc84ea1ecc50337512b878afba8b042dbb5d465570c26ea3941441c751fe8eb31ba919748961d499c61afcea53637d6b752cef2be53a9814e0971d4cd85c5e8ea6d2c5f7d7539c7eefbba9e7b511e9d50088f262ea8695626375466ff335baa4c8faef5d532c2b1ccea9f98148b7552e402b5baaafc44979d5642644aeeab82e1c61755f20f3d23ab1139ad8dd594a71df8ead05139e8756b23a9dfbab70d710d1d5c438e62eeae7fb48567576e915fe3abce8418d1d5f2cf7e8eeaff263f9c75826e37dd3ac2a28e125d6205f041eeb15cc35f4758db01e813ac83ae0185d64cdbd2b8eb2be761637598abe9023acdafc93c5d6783a8802eb4172192c75a35ec7483ad2ffe39b1d6a2700650eb5666d74b75adc5fac3bad829d22c1d6cb717780eb6ac039d875b7ded720badd2c4119dd6f3344fc2eb7e79046b75c1a6c2f5bae205e61b1d719ae504aeb918c217475cb1b386fbae6b580c61d73ed589f2eba3f4a38775d439c5f7baeb39dae35d762a05fc8ebb5adc6a375dd000ed3baef91c8bddd785058988ebc6b2f17075e56bcbc33af3bc29701d7a5fc160aebd6ffb66875ed7acb963af7b7e7301d7c57b6d86ebe68fd50375f52af3bdbafb83f7959d7e37b53deebf55f3acf75fc7a40d9baff1f5be09d7fff3eab2ec036a0483760366c73dbb0289213c1d81addb380ec10ac7efc7609eeb3733b05c060fcdd834319190ec1d2328407610104ab2bb08c440de1d84be8cbd4ec28cab05f7615c9eb59bb0b93f33bdd861fd0eaeec339ffa5e761b1a0d573b0e2eb748dd876686da4ec3da01d01761fff42963b1093d9419d8892564ecec46c86398762478375fbb12c2b29d1d89a2edaeaec4f164eb7762883b2b33b14baaa38dd8a9802190ec568794e3762c20969e3b167b3483dd8b714f7a4ec5d1a2332762f4de088bb1803d3a31d8c2e989ecec62cc1ddb76320aa97e3b19541795dd8ccfa743cec679be0bd763456266cbb1a6b9e53dd8d544c266ec6b87ffd676362fa85e3b1b4a13ea1d8dbc5f120ec6e8f47a87637969cadbb1bef32931d8e07beeb2ec70b0bd9976388a8d2ebb1c5ac2cb9d8e3651b9eec71eba03c76390b2056bb1c8c9b641d8e4804b20ec723f679076391819563b1c84a18edd8e3ccc39eec71abc5307638b158323b1c42c8e9dd8e14a3ee6ec7030a4787637d6d9d13b1bc71385dd8dcf8ea6aec6dce2a95763688b805bb1b1191e89d8d6d96744ec6a84b68a7634c7298abb1a22630ddd8ceecca36ec6654e12b7632928202bb18f9b4615d8c5349b7cec613f7cfd762feb31e53b1797c1b8dd8b9b2d684ec5b45961a762cd1c66bbb15fcd5475d8ac69e994ec546871f5762946e9773b1429478f1d89d5cb544ec4ca98f1976254b61693b121d7f4e9d88c8e8be4ec440aa4d77620e010fdbb0fd9f16a5d87a0330caec3a8da2ea761c05f7153b0d5f20d3dd865bed774ec3034b1057616be2e7f3b0aad9e6b5d84fc6229eec25022e58761109edb9bb07c608e09d8381e2334ec18f8b10a760aea86aa3b04a90c8cdd81ecc5728ec0c1b059a76046166503b0157634d1d803d6a82eebfe6c2e4375fd7014713afdd1d4559d7e7436a64ebefef623f (j - 8173) : ℤ) - 1000000000000
  else
    (digit 0x1d2351df80ce920fe59887493b67077ba4b769e1ddd2688e0cbee93ab270e774a08e4f29ba51e15d3a9d29bd9b5f2e95452b6cf74ad5b7760ba58465a4a1d2cef418c6e96dd8bed874ba1ab3793a5ea3fac8dd301d063cae9873e21b974c6c8d093ba64f8a5b01d33461d23ee9a07c7ee674d3629f613a6b42c3da9d3669baf3ce9b98d7e2a74dfe4f4f23a7180c06bdd3987158f2e9d26ad13c74ec4cab7fba77b109359d3c9d643c6e9eb0e355674f896a3363a7dd20f1c5d3fabdfd84ea037174c97504bfc3003a83e2467cdd42b1c3078ea1b8e688a7510c4f94c3a89e0278ddd45ae4a692ea335ef9c1751ca33cd3ba8fca2ec51d48a0b4c6eea4add23527528578d5dba959edd375d4b8843470ea6202f3617533def4833a9b5cb8f99d4e64399b6ea78ca8cd4753f36866bbaa1024d80dd5133de31eea8f2e28c9754a5b628d3aa68e2c005d53f67a632eaa528181775554ab464baabfeebc5dd56ab5aa0ceabab2c4b4756001b42ebab1532a95dd5951cea2aeacfc8b326756a7da79c3ab6898d04dd5be929942eae46483e67574bbe282babba0bed0dd5e70c23feeaf880f4bc757eb9c78cbac09773361d60e7f33b0eb0c18e21b758874c8e1bac56c65455d634e1b0e8eb1f2748697591ea68ce3aca1e58365d65a29c61ceb31a7454e759b183a663aceac17b8dd67e4de21ceb439418ee75a3fbe2253ad31478431d6a144ba88eb54e9272675ac9316873ad756575f5d6c3054e36eb65a1f8b575b4dba0a03adb709bf61d6e386e780eb75ba3c6575bcd35cac3adf6236959d702c11e84eb852dc82875c4783a9fbae32a21b99d720abdb48eb93f89a2c75cbc83ead3ae6c7620d1d73d3f57d8eba216d9de75d2c181c7baea3906acdd75874224cebaf84d8f275d9623225baed7e2964dd772431eaeebbc3f145175dfa893b4baf095eeec5d78aa588d8ebc842350875e59300903af37f87201d7a194f63eebd38b112375eb1fe9713af63a2d379d7b70b5792ebde16ac8675f04dd6123af8c527f91d7cb02fa68ebe7e239b375f51b6598bafb1fc9eb1d7dd768aa8ebf0eb1a8875f9874eecbafd497181dd7ee611408ebf92ee0f375fd9061143aff41894a1d7fdbe0354ec00ab4f9676013583833b01078811dd80b8927acec075e5a63760475b6683b029af10cdd817beb3a4ec0d46272876075012f03b03fb53f6dd8225b3e54ec12610e137609c3cb873b05284d31dd82b5bc43cec16ad9a25760bd02c10bb062185e35d832bda82aec1a2a899c760d749a1b3b06e6b40add8387eb3f2ec1cd6ce50760eb0950b3b07779a98dd83c9d190cec1eb18dff760f83b642bb07d409809d83f17712aec1fba2292760fedb13fbb07fbddc69d83fecbea6ec1ff01a50760fee53b53b07ef018c9d83f1c6cd2ec1f533809760f85859ebb07ad6c1a1d83ca65040ec1de3732f760eb3494b3b073721e1dd8388aa6daec1ba0f7e6760d77bb61bb068c3482dd832ca17f4ec188c2701760bd312e23b05acc2c75d82b65b432ec14a595fb7609c5a11d3b0498f8a05d8225ef55eec0fee0ed976074fd1a3bb03510f1d5d817b7be28ec0a6690087604722a353b01d54c619d80b7259baec04104c2476012d4aa0bb002603949d7fd917b48ebfceca9bb75fd81eca6bafe4394d0dd7ee183d72ebf4fd430075f970e3ccbafc2e6d0edd7dd0a219aebec43e56b75f4fb1d313af9e7060c9d7ca6b0f1aebe2c2915875f0219f54baf76de6325d7b63f5262ebd87b798e75eae589df3af4c3a0739d7a08b9bfcebcd7102c175e548155bbaf1e8d42d1d78954ff76ebc1a5c30075df4a92f3baeede2d011d770a0f236ebb51c812075d8ee6c1bbaeba462acdd756754a2ceba7d8341175d2352242bae83c38e05d73ad83c80eb99dc023075cb204e753ae4a67f0d9d71dd05c10eb8b2b408475c3b1a0fd3ae0e410399d6ff6497e4eb7bc971f675bbeae0fa3adcf5d2c69d6df9c398aeb6bba467a75b3cdebf6bad8dcb83e5d6be7ee352eb5b019a2f75ab5cb574bad499bd179d69c148e84eb49a3746f75a29946763ad02de879dd67865896eeb37a406dc759985bd00bacb9a4bfd9d6537a7566eb2507ac5a7590244b99bac6e0036b1d62d5c44baeb11d2e80175867738be3ac2003475dd606143880eafe0a640a (j - 8937) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 302, crossSinc (8173 + j.val) = sincEntry (8173 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 302, crossSinc (8937 + j.val) = sincEntry (8937 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 8173 ≤ j) (hi : j ≤ 8474) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 8173, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 8937 ≤ j) (hi : j ≤ 9238) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 8937, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 8652 ≤ i.val ∧ i.val ≤ 8758 then
    tenthRetainedRunPrice ⟨i.val - 8652, by omega⟩
  else secondRetainedRunPrice i

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := tenthRetainedRunPrice_eq ⟨i.val - 8652, by omega⟩
    have he : (⟨8652 + (i.val - 8652), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 479 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_right (show ¬ (8652 ≤ i.val ∧ i.val ≤ 8758) by omega)]
    exact secondRetainedRunPrice_eq hi

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 2012700610936223493195886848016418638594998335822 := by
  decide +kernel

/-- The exact lower cross contribution of the tenth retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem tenthWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (8652, 8758)) (retainedRunCells (284, 479)) =
        2012700610936223493195886848016418638594998335822 := by
  have hrows : retainedRunCells (8652, 8758) = crossRows :=
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
    change 8652 ≤ i.val at hl
    change i.val ≤ 8758 at hu
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
