/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFifthRunFirstCross

/-!
# Exact diagonal subtotal of the fifth retained run

These are the original global cells 1610 through 1795 paired with themselves.
Use the existing certified fifth-run prices. The signed sinc entries on
[0, 185] and [3221, 3591] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The three row slices retain weight one on the diagonal,
two strictly below it, and zero strictly above it.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def fifthRun : Finset (Fin 32768) := Finset.Icc 1610 1795

private def rowSlice (b : Fin 3) : Finset (Fin 32768) :=
  Finset.Icc ⟨1610 + 62 * b.val, by omega⟩ ⟨1610 + 62 * b.val + 61, by omega⟩

private theorem rowSlices_cover : Finset.univ.biUnion rowSlice = fifthRun := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, fifthRun, rowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 3, 1610 + 62 * b.val ≤ i.val ∧ i.val ≤ 1610 + 62 * b.val + 61) ↔
    1610 ≤ i.val ∧ i.val ≤ 1795
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 3 := ⟨(i.val - 1610) / 62, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem rowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 3))) rowSlice := by
  intro a _ b _ hab
  apply Finset.disjoint_left.mpr
  intro i ha hb
  have hne : a.val ≠ b.val := fun h => hab (Fin.ext h)
  simp only [rowSlice, Finset.mem_Icc, Fin.le_def] at ha hb
  omega

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def diagonalSinc (j : ℕ) : ℤ :=
  if j < 186 then
    (digit 0x31150b5aa99895cece4f9c50879430262b11a86c0316eea40f258c29a8b069c66db63da8636326f3ca71c7a6a27f38eed36b2e5c7ce4f8b1e6412db2a5f721f33bb29b91a7311395c92a1263b764c01dd94c327584ebcef9457332628ca80cc9837e56ad5fcb332ca8dbc81b96fcd97c60cbd24c9aa36612eae26a731e41deba99997c1f77acd1e6186dee6b8442e4d7370952f7cd9c278bd959ce64db2b46e75ac9de8173c17bb979d9eabd7d57dcfa58a111b67fa644fabb410e9b726da1244821b5d0e03f84d9e896fc4117345ed394d01a39080869cd214cd9e6ee9307ad8c8b4ab2df29ffa5f0266fc7d343074945e9c6c9a785f4f5eda6a0fa842e0fbc0d46ac04c376a59d2acc6b53f07beb31aa88590b9cd58bcd515a6ae9805a95758671827a1acc0395264d6a603ed9e6b75bd995bb5cc2075419aeea2e6417d7b93aa847ebfe75cb9c36100a57d6bb105e6c467d8c54902486c8394d191f652252a56fb31312f519d9ca077d606d05070cc5f692672df4fb51165841cdac74fa31eed82b9638176d0c6e6b1db700931929dbbcfc0ba9edfc99442ef70d3b1d0a3b8e0528330dcaae86461ee7294a8a97747badf981bab05cc541dd90f1764e6ee49a1966b7803d84a99bc706d2319de6ef52c606f5298b09477b6baabc89be20412d66df44d299746fbc801d17f7eb2a3f38dbfbf98cd84e01269fe36702240a56f781d8475655c14e3650dce0d79cceb87083cb2a7fb84dc1d2439c2cbde73dce1944db7e8f0e1112a44f87bdb28a81c438586c81e24860a4c1f13a04c262b8a7c99b8c5c5936df46ee2f3bac34e718e98b2a078d1869f47bc6dceb528fe39642896971dec05f4178f90bfab8dc8149f6452e42fdfb94a722a6fd345b91e53c861dc93a5ba666e4c07b65d7f2719bc2887941587775fca4df43d04e547fff6ba72b4398bc4b96214ccd43cb4f3ffbaee5c6592c3772f23f3a7a398083e3f9dcc3e186ca0e63b7422cef32ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0x3aa8e3cf881d567c1abb4eac42d4417756a3a2386bab92d67409d5e9e2088aeb05263b36758aaa8022bac95f447bdd66b3c5d8aeb45b8156975aae542493ad9754ec2dd6ebafef64eb85d2797e75cae23fbebae96b72359d76b1c298eebc56522ac75ea9958fcbaf93da090dd7e960a670ec045fe4a7760a027b3fbb08e7d2339d8665d378aec42b2afb6762915a28cbb186607225d8e1f1ed8eec804d94bb7647cadbb9bb27b4480a5d95bff207aecbd20c93c76661a466f3b36cea741dd9d4657794ecf91cab677683fc1727bb45b141c8dda4b05f168ed3431c60976a168992cbb545840445dabfc1eba8ed6e50d47a76be58308a3b62bfd7fa9db327b2afaeda76ac68b76dac35c04bb70e44bcaddba313e2c4eddf70c45b76f6a2b702bb7ec1ed231dc116ebcbcee1654322c7711eefb73bb8c551cf1ddc7d6ee08aee4c06b421772ca103b13b999a4c95ddce6f7fb26ee807a31f77746b1cc563ba68dfec95dd4dee4642eeb3a0daac77601a7610bbb32cc889dddb2368f6ceee56d28147778d4476d3bbf7351fc9de13b63f32ef15d1e2607790d8ae953bcb5e574cdde72536012ef44c2239577a821430a3bd6eaa9879decdf4a546ef72315aef77bea7c7533be2152f729df26817172ef9e13502f77d4662aa2bbecdae65cddf7be1dd24efc85c26da77e9568a72bbf738e2ebddfcdfebd2eeff100615d77fd7334153c012c51e21e01cc1a8cef017f4e4217810b6a6393c0ab278e05e06814ffbef03d2ef88178231b92663c13c8b7231e0afe3eff2f060a44fb778349cde6c3c1c6c86365e0f41a7b50f0824b059e784535a5c3bc249b7aa71e134a57d12f0a219a36a7854e13ae63c2c5344ac1e17172af12f0c007223f78639b2896bc3391b0c8de1aa70aeccf0dc0aedb378715f331dbc3a54a86a5e1df8f0238f0f61ce62f787e295979bc409a327cde210be1c6cf10e35633a7889f5d67cbc466073fa9e23def61fcf1244d35a37894c121e23c4ba5b0725e267152d30f1385da995789e87f151bc50684a891e28c22d1f4f14a60888678a74739553c54a6c4725e2ad0ca18ef15a501b0b78aefc2e3dbc585fc060de2c9c7ee1ef168272a9178b5a444fdbc5b9200f19e2e24b0ddcf173e102f378bb3d33ee3c5e3c698cde2f68d5e10f17d7973f378bfc4f387bc605dfec01e3068745def184ecd28e78c339bf0abc61f5e690de3123238c0f18a37fa3b78c59a15173c630368c5de31988b8c0f18d584dfd78c6e4b833bc6385ef291e31c865884f18e4bb95978c718af45bc637d05c15e31b27bcf8f18d10b13178c63545f7bc62e85b031e3156a9ed2f189a6347178c43a0d0dbc61c7bff9de30b4dcbc8f1840bcca878c126daab3c601b2867de2fcd12776f17c418e7078bcfbca883c5de2aadd9e2e9f5ac18f1724819c578b7b93e103c5b1e80ca5e2d2bd6aeaf166209a2878b15fdc77bc57cf06809e2b72b8c50f157ccc6af78a9f092b93c53f4bb369e297444faef1474ee1e778a16c93883c4f9040f9de2730d0b10f134a9b99b7897d5572a3c4aa25c9c1e24a8c2a6cf11fe0a676788d2c9b473c452bf5985e21dc92ebef108f78b7f78817462a1bc3f2e15ed5e1ecccacd0f0eff2d5787874aef4c3bc38a9e9f0de1b7a04bbcf0d4d77a157866dedd94bc31a0c0191e17e4ec32ef0b7aaf719785806ece2bc2a1408c01e140e3d962f09873514678482a35d8bc220555da9e0ff6c60d6f07737133478374c0e63bc19765aaa5e0b9f635c6f053fd4c007825700e86bc1068eb659e070903b5af02ecd8de078129a0fa03c06defcd75e0234a588cf007afec8b77fece2b9c3bfcdaa3f61dfd23574e6efdeacfb8f77ea10bc17bbf25e15741df7d6374d8efb3cdcc7877d46659723be76ba5461df24e735f0ef871becdf77bdd3d9d13bdc05c6231dec8d48ac0ef58a1645877a65e5012bbd02f08fa9de69403688ef2868b23f778e0b0aaf3bc3ea1c65dde063fe8a0eef67ccb647774df928ebbb739cc0d5dd9fea37b2eec2e917a0775ae1a9cb3baa21000b9dd36569c9cee8db96f457740174a673b9ca2bc445dcc99d6d3cee56fa1870772486a4f53b8ec21fb65dc59d7d6deee1eb7c4467708361f2f3b808263c6ddbe71fd88eede4ff8c0f76eb2c52813b71e6db845db71903d20eda9deee3376cd700a85bb62f2f2e31daf9449508ed6d63cb2276af084377bb53aa2df3dda7e593004ed2f9c6223768ffc2891bb441028135da00eb1686ecf0974dfe7670531265bb342893135d9811802f6ecb063819d76501485273b23f7365edd8fefe5ac0ec6f104489762f482ee7bb137fee169d87abd273cec2cad2f59760df5e5cabb02c6aa299d7f4740e50ebe94a27ff75ec25a62abaf1cf6d66dd76c434b0ceba4f75e0f75c9df90b93ae09e4c8b5d6e24ba5fceb5fc546e575a72be88f3acf376d495d656ae6d64eb19c499ba7584131135babd9f054bdd5c98d6d4eead3064bad75609d8ca8baabd959361d53b0ae77eea8b9b8bb2753cd3f949ba99eabb9d5d4ab498b34ea4395be747518bf0fd2ba87d78bfedd41a6c6cdee9fb067a2874f467a13a3a75a435b35d38896fda4e9b1ff824c74cfd69493ba63552edd1d2f5ed02d6e96892c36174ab14e4e8ba50eef754dd262928d42e91ed24e91 (j - 3221) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 186, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 371, diagonalSinc (3221 + j.val) = sincEntry (3221 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 3221 ≤ j) (hi : j ≤ 3591) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 3221, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then
    fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ fifthRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 1610 ≤ i.val at hl
  change i.val ≤ 1795 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := fifthRetainedRunPrice_eq ⟨i.val - 1610, by omega⟩
  have he : (⟨1610 + (i.val - 1610), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

private def sliceTotal (b : Fin 3) : ℕ :=
  #[4265176556781950752464873339761200187407859801433344,
    28423693099017304531595813367451498092931990681168209,
    22325268108046796890741806741062236873751196811608382][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem rowSlice_checked (b : Fin 3) :
    triangleBlock diagonalPrice diagonalSinc (rowSlice b) fifthRun = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc fifthRun fifthRun = 55014137763846052174802493448274935154091047294209935 := by
  calc
    _ = ∑ b : Fin 3, triangleBlock diagonalPrice diagonalSinc (rowSlice b) fifthRun := by
      rw [← rowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion rowSlices_disjoint]
    _ = ∑ b : Fin 3, sliceTotal b := Finset.sum_congr rfl fun b _ => rowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact self-pair contribution of the fifth retained run in
`total_eq_retainedRunBlocks`. -/
theorem fifthRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (1610, 1795)) (retainedRunCells (1610, 1795)) =
        55014137763846052174802493448274935154091047294209935 := by
  have hcells : retainedRunCells (1610, 1795) = fifthRun :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hcells]
  refine Eq.trans ?_ diagonal_cached
  symm
  apply triangleBlock_congr
  · intro i hi
    rw [Finset.union_self] at hi
    exact diagonalPrice_eq i hi
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    change 1610 ≤ j.val at hjlo
    change j.val ≤ 1795 at hjhi
    have hd : Nat.dist i.val j.val < 186 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
