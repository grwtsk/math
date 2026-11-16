/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirdRunCross

/-!
# Seventh retained run against the third

These are the original global rows 4110 through 4199 and columns 666 through 853.
Reuse the certified third-run and seventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [3257, 3533] and the sum window is [4777, 5053].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 4110 4199
private def crossColumns : Finset (Fin 32768) := Finset.Icc 666 853

private def crossRowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨4110 + 45 * b.val, by omega⟩ ⟨4110 + 45 * b.val + 44, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 4110 + 45 * b.val ≤ i.val ∧ i.val ≤ 4110 + 45 * b.val + 44) ↔
    4110 ≤ i.val ∧ i.val ≤ 4199
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 4110) / 45, by omega⟩
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
  if j < 3534 then
    (digit 0xee1654322c7711eefb73bb8c551cf1ddc7d6ee08aee4c06b421772ca103b13b999a4c95ddce6f7fb26ee807a31f77746b1cc563ba68dfec95dd4dee4642eeb3a0daac77601a7610bbb32cc889dddb2368f6ceee56d28147778d4476d3bbf7351fc9de13b63f32ef15d1e2607790d8ae953bcb5e574cdde72536012ef44c2239577a821430a3bd6eaa9879decdf4a546ef72315aef77bea7c7533be2152f729df26817172ef9e13502f77d4662aa2bbecdae65cddf7be1dd24efc85c26da77e9568a72bbf738e2ebddfcdfebd2eeff100615d77fd7334153c012c51e21e01cc1a8cef017f4e4217810b6a6393c0ab278e05e06814ffbef03d2ef88178231b92663c13c8b7231e0afe3eff2f060a44fb778349cde6c3c1c6c86365e0f41a7b50f0824b059e784535a5c3bc249b7aa71e134a57d12f0a219a36a7854e13ae63c2c5344ac1e17172af12f0c007223f78639b2896bc3391b0c8de1aa70aeccf0dc0aedb378715f331dbc3a54a86a5e1df8f0238f0f61ce62f787e295979bc409a327cde210be1c6cf10e35633a7889f5d67cbc466073fa9e23def61fcf1244d35a37894c121e23c4ba5b0725e267152d30f1385da995789e87f151bc50684a891e28c22d1f4f14a60888678a74739553c54a6c4725e2ad0ca18ef15a501b0b78aefc2e3dbc585fc060de2c9c7ee1ef168272a9178b5a444fdbc5b9200f19e2e24b0ddcf173e102f378bb3d33ee3c5e3c698cde2f68d5e10f17d7973f378bfc4f387bc605dfec01e3068745def184ecd28e78c339bf0abc61f5e690de3123238c0f18a37fa3b78c59a15173c630368c5de31988b8c0f18d584dfd78c6e4b833bc6385ef291e31c865884f18e4bb95978c718af45bc637d05c15e31b27bcf8f18d10b13178c63545f7bc62e85b031e3156a9ed2f189a6347178c43a0d0dbc61c7bff9de30b4dcbc8f1840bcca878c126daab3c601b2867de2fcd12776f17c418e7078bcfbca883c5de2aadd9e2e9f5ac18f1724819c578b7b93e103c5b1e80ca5e2d2bd6aeaf166209a2878b15fdc77bc57cf06809e2b72b8c50f157ccc6af78a9f092b93c53f4bb369e297444faef1474ee1e778a16c93883c4f9040f9de2730d0b10f134a9b99b7897d5572a3c4aa25c9c1e24a8c2a6cf11fe0a676788d2c9b473c452bf5985e21dc92ebef108f78b7f78817462a1bc3f2e15ed5e1ecccacd0f0eff2d5787874aef4c3bc38a9e9f0de1b7a04bbcf0d4d77a157866dedd94bc31a0c0191e17e4ec32ef0b7aaf719785806ece2bc2a1408c01e140e3d962f09873514678482a35d8bc220555da9e0ff6c60d6f07737133478374c0e63bc19765aaa5e0b9f635c6f053fd4c007825700e86bc1068eb659e070903b5af02ecd8de078129a0fa03c06defcd75e0234a588cf007afec8b77fece2b9c3bfcdaa3f61dfd23574e6efdeacfb8f77ea10bc17bbf25e15741df7d6374d8efb3cdcc7877d46659723be76ba5461df24e735f0ef871becdf77bdd3d9d13bdc05c6231dec8d48ac0ef58a1645877a65e5012bbd02f08fa9de69403688ef2868b23f778e0b0aaf3bc3ea1c65dde063fe8a0eef67ccb647774df928ebbb739cc0d5dd9fea37b2eec2e917a0775ae1a9cb3baa21000b9dd36569c9cee8db96f457740174a673b9ca2bc445dcc99d6d3cee56fa1870772486a4f53b8ec21fb65dc59d7d6deee1eb7c4467708361f2f3b808263c6ddbe71fd88eede4ff8c0f76eb2c52813b71e6db845db71903d20eda9deee3376cd700a85bb62f2f2e31daf9449508ed6d63cb2276af084377bb53aa2df3dda7e593004ed2f9c6223768ffc2891bb441028135da00eb1686ecf0974dfe7670531265bb342893135d9811802f6ecb063819d76501485273b23f7365edd8fefe5ac0ec6f104489762f482ee7bb137fee169d87abd273cec2cad2f59760df5e5cabb02c6aa299d7f4740e50ebe94a27ff75ec25a62abaf1cf6d66dd76c434b0ceba4f75e0f (j - 3257) : ℤ) - 1000000000000
  else
    (digit 0xee9a64ab19774e87dd9cbba7e8fb71ddd44426c48eea487880b77536b6bc8bbaa43c6499dd56608328eead3a46017757968df73bac422e4e1dd659a282eeeb47a231e775b07ee9ebbade38e701dd71ea60a0eeba44b8f2775dbe6603bbaf2758935dd7b4ce9c2eebe97fd3a775fb8fa97bbb00d15bc9dd81be3a2aeec17242867760f6e148bbb0946637ddd853b82f6eec2d238c87761777dc63bb0bd01ba5dd85c2b0c2eec2b6edd277613a62bd3bb086b77d9dd83526c80eec11fcdb377603f5203bbaff16e549dd7dea1c18eebe0ca308775e863cbd3baefd24bd5dd7589e2d4eeb97d972a775c0f4371bbada9f0e91dd6a32a1b4eeb37332507758dab618bbabf800c19dd5be5f770eeabee5b8e7754e91416bba9e799e65dd4aa6406eeea2f058c677503b0c33bba77919a65dd3676966eee987ace7d774ad17c823ba4acf4f09dd1f5ad01aee8c8fbf987744ad72393ba183b842ddd05578058ee7f318d01773dd029873b9dfe078dddce871f578ee7062f53977363b0d54bb9a1c9e181dcc8b03824ee602713cd772defb6fd3b95e04e581dca6190a3eee4e8160b67724efedfd3b914a01c81dc80b3e56aee3b75afa1771b3da7933b8c5ab8b7ddc5888f988ee27082f247710db0653bb87138a13ddc2da12af0ee113d67d37705ca59b6bb8175a32a5dc00061084edfa1a3b4a76fa0e1d95bb7b8247695dbcfc1f19cede1a3e31576eda8f99dbb753ad0165db9cdfc3b8edc7dfef8876e09dc0b9bb6ea0ac025db676b2810edacd4468476d2ef70713b67b55f36ddb2f7068f4ed9087221c76c4a130383b607a829dddaf4fc7702ed72ff0f2f76b5b650ba3b58f1c3a49dab81ce630ed5442ebe676a6324b15bb511ce3d8dda78dfeab0ed3459e621769618c010bb48fdb8825da375455a8ed134b79cb76856d77403b40962a33dd9f38991c0ecf11f6f237674345e29bb37e8345c1d9ad8f9f8aeccdddd8e676627187553b2ef5e4cc5d9657711c6eca98f1269765029295b3b25c15b3f9d91b510978ec843bbdab763d5f9de6bb1c4cc8d8dd8cf2f31e6ec5decc142762a1960ac3b129a6f9f1d88123bc68ec36ab464776165b0e5d3b08aca1f3dd831415c12ec0e80b623760229638bbafe85c2075d7df9b4146ebe576b85775ed893b8e3af4284144dd78c451524ebbb97302b75d87f8f523ae9969fbedd73752f4ceeb90ec3a5175c311742d3aded36b959d6e0d96c9aeb65802a7a75ad441aa63ad3e14058dd688ed7320eb395d88d575971ccd32bac8c2c6685d62fa46432eb0c8f0f8c7580a0eef23abd7ab24f1d5d513fbaeeadf1fa8257569d5fa60bab20bc41c1d57952503eeab11a68e67552c18001baa678c6b75d51c75ce00ea828a921f753b692508ba9ac48f351d4be953110ea537b8b6f7523d2a1f8ba8ef1fc24dd45fc78000ea23f8e100750c03c13dba8303f4de5d40024063ee9f40e40b174f4025dc6ba76fd68cc1d39fc24e60e9c3c7773f74dbd461943a6ae14eb3dd33eba1c60e993306d6174c37fc445ba5eb2a3fc1d2dd2367cee9625524da74ab0a89a4ba52746bf15d27b1655e6e93141b58974927ac027ba4629af069d218ab33a4e900024a6d7479d67f75ba39d57a17dd1b5fa6fc8e8cea31ea3746123e6e73a2d7adda85d1531c94cae89d307a667448691bfe3a211ced215d0f02a42c8e86bb6b002742fac48e73a14bebe0e5d08d3c2972e83a4218c57416f39aeb3a0863675a1d02a6b01e6e808df11f173fe4540ee39fc0e0089dcfc7cf888ee7d799f9aa73e5a769de39efc1a0f85cf658276f4e7a67f2bde73cd20432f39e3815f111cf039c7d9ce7759aff3273b4b5f74d39d7504f89dcea2363dd6e744f9c1ec739c6eac1239cb31849edce41684398e714a7b6e2738450813bb9bf280d4cdcde14aff56e6e4b11262736c618ee439b336f48d5cd81f6bfdee6b521f7257354a7e3f739a76140929cd2383ac42e686067340 (j - 4777) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 277, crossSinc (3257 + j.val) = sincEntry (3257 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 277, crossSinc (4777 + j.val) = sincEntry (4777 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 3257 ≤ j) (hi : j ≤ 3533) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 3257, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 4777 ≤ j) (hi : j ≤ 5053) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 4777, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 666 ≤ i.val ∧ i.val ≤ 853 then thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then
    seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    rw [crossPrice, dite_eq_right (show ¬ (666 ≤ i.val ∧ i.val ≤ 853) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := seventhRetainedRunPrice_eq ⟨i.val - 4110, by omega⟩
    have he : (⟨4110 + (i.val - 4110), by omega⟩ : Fin 32768) = i :=
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
  #[4501623538946317183280962566984557079527261660730,
    3337687312418769975121808160333624580069468811768][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 7839310851365087158402770727318181659596730472498 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the seventh retained run against the third
in `total_eq_retainedRunBlocks`. -/
theorem seventhWithThirdRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (4110, 4199)) (retainedRunCells (666, 853)) =
        7839310851365087158402770727318181659596730472498 := by
  have hrows : retainedRunCells (4110, 4199) = crossRows :=
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
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    change 666 ≤ j.val at hjlo
    change j.val ≤ 853 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
