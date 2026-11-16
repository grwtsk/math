/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Sixth retained run against the third

These are the original global rows 2790 through 2913 and columns 666 through 853.
Reuse the certified third-run and sixth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [1937, 2247] and the sum window is [3457, 3767].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 2790 2913
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

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
  if j < 2248 then
    (digit 0x37046d9f969b8124193dadc00bc54206dfc44a4c5b6fc21f5841b7d17049a8dbe11a60446decd7590836f49d50cb1b796dc779cdbc499c3706ddefc0065b6ede24676db7629a67b4dbab4473426dd2b77de536e7f33c1a5b734bce6a0db9523a5ef6dc80e5477b6e2d2670ddb70d553dc8db823fcf516dbf04a587b6de81cbb9db6ec732db8db72a09e276db79e2f9b36db033cec1b6d224e8dadb664cf97e6db1de4d1336d8585b371b6be770e96db5d4afe4e6dadc7f2fab6d68294605b6b174a6c6db579ffd3f6dab5daff2b6d58322d69b6ab271d9edb555078a46daaa1ab3536d55b0d375b6ab963fd2db566022a76dab95a3adb6d60b25de9b6b2c83742db5ad1db9c6dae3aef3036d7940a841b6c0c187f4db62a7b0946db29279c1b6d9f623e49b6d5850d72db6de2da1a6db89cc4ff36dd31a576db6f113f89cdb7c83bb1e6dc059e79db6e1468d2f9b7136dcdcedb8e89e0226dc9c98d0036e634a34f5b73c90637adba3f3fe896dd4eaf4ebb6ebfb7a409b76c77e11edbbcbff4296de1bcf35236f29a6e7f5b7a31ebeb2dbd8eac7046df03df03936fa10a6905b7e07dc46edbf870a5416e006be7ba37025d13049b8248c0b00dc1b4ce5506e12446a1db70b7e6e891b86f3efc2edc417a064a6e25c49c0e3715733e05db8c08a53dedc6af1b0816e3ae936eb372039d0c85b918602186dc97acb6446e51ae892e372bd040bb1b976b0ca08dcc7a314df6e6a1076f337383472abdb9db6b09fcdcfacbf5c76e840a7a94b74564169d9ba467bf85add311dafff6e9f97a56537535ca8289bab7cf0990dd6a8dc9b16ebcb2a082b7621b6ee71bb2f4e1308dda710f9ff6edb55adc137719d7eee5bbace14f0adde69b2afc6efb7aa8b6b781dfb9571bc306f6112de291f7be96f1d1b07d6b792decccf9bcb9dd5a84de6e9043996f402fddb037a497363c5bd490ebfc6deb6df130c6f64b1da40b7b7054165dbddde58dcadf01fcb8406f8a994c6137ca2509b29be78423fecdf4fd9412c6fb1de234cb7ddf27aeb1bf1803d642dfa063fef76fda77f03d37f269520f9bfbd07dc44dff38b895470045de8253807851e331c0672a6fdee0493dc217702f86e57db81d414168dc1164648d0e0a167d8f9705be96a2d383398f1b8dc1ca34c088e0fbf64f8570897ba184384a873a225c282cdda3ae158d4fd3870b8336255b86206fba91c33fe84b6ae1b7ef13cb70e806311db87a12ee6e9c4015984c2e2192f23b17118e942483892a5a2d39c4c6f5bb46e27c7f20b1714ad17c83b8abb982a89c5908ff1d6e2e1c866bc717db37b3038c548d264dc65dfa030ee348f3bee071b18390dd38df4db26a1c72f04ab6ae3b1e9646871e635c9e138f9c220509c8037f93c8e41c910a25721bbdef0139149ff83edc8db395c2ae488d1dfd872520f882a392fe0f6485c9b5ffa6c6e4f69297c472891ddf40394b7eb7d71ca939f2364e565b96c6872c0dc02fcb96772bd1d5cb73e39afce5d62c265172f93cc9e0b983b66a8f5cc5697fb9ae647d02218733232d532b9a0430a665cd3b866478e6ba8a5679736bb09410b9bd11ce2adce2278326ce72e3f5a8b73a5a8469039da1bd0455cf0b360c7ae7a2d36c1673e00c00eb39f75a15985cff587f0a8e8182a7603741acdaebc3a14c58f1e9d0e1354112e88e2816e77455df16483a32571b919d1ce04d116e904afa7a5749131dbd1ba500789161d2bbbcf2c8e97ba4422f74ccb784f93a6dcf96ec9d3aa238488e9f2e8c8507508617c2a3a8ba7f7285d498fdfec2ea6a5fea95754421140e3aa989506c1d5881181d6eae1ec2f44757fe78b0bbac76c3fa8dd67722e41ceb596ff96375bba60ecbbae54959e29d765f6c016ebd0cd8fd475f74dbfc8bb03192df85d8545182acec47e724777632cfb4e2bb20d4466e5d941f7798eecbe9edb60766e1cfefa3b3e732b3d5da2eace1aced34d6d20e76a926ac8e3b5bee63a19db1a35f5b6edaa7126b776e3ddcd613b793e77ed5dc0456fcb2ee1f4fff8c771e33761e3b965bf35d1dcecd458a4ee93559211775818c404bbb33f65eb5ddd3729526ef06642a7177917ee08fbbcfe16627ddeb7f67628ef785e32d077ca570525bbec3a930b1df9a250692efe9263aa77802927ebebc084395cdde079c3a6eef0589efe15783a22b192bc23f523bcde156981c14f0c6ab6d357870f91cbf3c3f48000c5e230689dc2f1332eb364 (j - 1937) : ℤ) - 1000000000000
  else
    (digit 0x3865e660d21c33b1a8966e1a39eb3a170d4e6ddf1386c0692339c36d088a88e1bd0b9bac70e1d81afab8729c7f659c3a2a1b722e1d84cb86f70efb2be21b879a6c3aa9c3dbdaad94e1f55c3b5570fe73d142b88123dc889c418a71ef8e21433df72710e182336b889122a189c458f9d1aae234ccead4711e9c487eb8916fef5f1c49cc4a412e257202fed712ffc9bff389a3b52a95c4e3f88fb0e27b260f1d7142353fc738a3725df4dc52e85ac52e2a0d6785c7155421de6b8ad12ff5bdc57c5b3394e2c828ecf971691ee955b8b71b0989dc5cd67848ee2f114817d717dc71ee838c1883437dc6219827c2e31b8fdfa7719336064c38cc581cad9c678d9d33ae34791488371a966b31db8d788464c1c6d3186edee3750e969c71c05405ff38e3161b1d5c7303f1908e3a3fd404b71d7f8adc638eefeec69dc790382b40e3d4525a1c71f04f28b138fb3ff3575c7f2ed3f38e406029951720951c5abb907d6518adc8584733e6e43902567b7222faa59cb914bf11d2dc8c02e32ece46d45902d723d43bcc63921f728d69c92a89b618e4a2bfedc4725826d428392f7b75cbdc997408d1ce4d964c24b72739d8af9b93d48c331dca0638e372e511270f70728fa15822b94b5bc7919ca77584670e549f9889572ac2b8bc83959b126445caea83ab7ae583ce95ee72c93550deb96845703edcb5f9f766ee5be9857bc72e6b7aeca39771524e15cbd68f8030e5fa48a9957304ab8b0239861cb2cc5cc4f371d54e636d125c1732309aac6b9955878badccc97924f8e6742328ad7341cab4d7b9a4c4c65f9cd4537f7c0e6b22fd4667360e73336b9b45ddd47dcdc25586e6e6f0e8142f73805794f4b9c41ff1c1dce40b35b80e7303ca01f73a0143000b9d4072bc5dcec0329dd0e7701e00d173c0154302b9e40fa7e45cf40b41cb4e7b07c931f73e052f73c39f43578375cfc218553ee7f1488bef7400c5626e3a0474a5555d0443f7a50e83271fc0974216488c53a14c92f489d0c7097c60e873e8d3f37442285ecaba252f0e89dd14a561140e8b59ce7e3746308cb5eba35a234f9dd1ce04bc0ce8f77df3ad7483fda9af3a461e8ee25d251f4d520e9397b9ec674a4fecb39ba56a003f39d2d6059210e97b85804374c603f9cd3a672278485d35a160dc4e9bd8b22e274e704f9913a77a1cd671d3de055094e9ff7c09217507f98b0bba8819e3485d461b25868ea4147b1497528d96d2dba9886995a1d4e4fc20eaea82dd998b75499c5f5e3aa8e3cf881d567c1abb4eac42d4417756a3a2386bab92d67409d5e9e2088aeb05263b36758aaa8022bac95f447bdd66b3c5d8aeb45b8156975aae542493ad9754ec2dd6ebafef64eb85d2797e75cae23fbebae96b72359d76b1c298eebc56522ac75ea9958fcbaf93da090dd7e960a670ec045fe4a7760a027b3fbb08e7d2339d8665d378aec42b2afb6762915a28cbb186607225d8e1f1ed8eec804d94bb7647cadbb9bb27b4480a5d95bff207aecbd20c93c76661a466f3b36cea741dd9d4657794ecf91cab677683fc1727bb45b141c8dda4b05f168ed3431c60976a168992cbb545840445dabfc1eba8ed6e50d47a76be58308a3b62bfd7fa9db327b2afaeda76ac68b76dac35c04bb70e44bcaddba313e2c4eddf70c45b76f6a2b702bb7ec1ed231dc116ebcbcee1654322c7711eefb73bb8c551cf1ddc7d6ee08aee4c06b421772ca103b13b999a4c95ddce6f7fb26ee807a31f77746b1cc563ba68dfec95dd4dee4642eeb3a0daac77601a7610bbb32cc889dddb2368f6ceee56d28147778d4476d3bbf7351fc9de13b63f32ef15d1e2607790d8ae953bcb5e574cdde72536012ef44c2239577a821430a3bd6eaa9879decdf4a546ef72315aef77bea7c7533be2152f729df26817172ef9e13502f77d4662aa2bbecdae65cddf7be1dd24efc85c26da77e9568a72bbf738e2ebddfcdfebd2eeff100615d77fd7334153c012c51e21e01cc1a8cef017f4e4217810b6a6393c0ab278e05e06814ffbef03d2ef88178231b92663c13c8b7231e0afe3eff2f060a44fb778349cde6c3c1c6c86365e0f41a7b50f0824b059e784535a5c3bc249b7aa71e134a57d12f0a219a36a7854e13ae63c2c5344ac1e17172af12f0c007223f78639b2896bc3391b0c8de1aa70aeccf0dc0aedb378715f331dbc3a54a86a5e1df8f0238f0f61ce62f787e295979bc409a327cde210be1c6cf10e35633a (j - 3457) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 311, crossSinc (1937 + j.val) = sincEntry (1937 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 311, crossSinc (3457 + j.val) = sincEntry (3457 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 1937 ≤ j) (hi : j ≤ 2247) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 1937, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 3457 ≤ j) (hi : j ≤ 3767) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 3457, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then
    sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := sixthRetainedRunPrice_eq ⟨i.val - 2790, by omega⟩
    have he : (⟨2790 + (i.val - 2790), by omega⟩ : Fin 32768) = i :=
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
  #[26775394481347168240965383934593415902504721476626,
    28479043722785042398099746373752335415404266698066][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 55254438204132210639065130308345751317908988174692 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the sixth retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem sixthWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (2790, 2913)) (retainedRunCells (666, 853)) =
        55254438204132210639065130308345751317908988174692 := by
  have hrows : retainedRunCells (2790, 2913) = crossRows :=
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
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
