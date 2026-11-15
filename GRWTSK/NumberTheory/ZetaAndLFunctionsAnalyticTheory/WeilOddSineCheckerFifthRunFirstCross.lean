/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Fifth retained run against the first

These are the original global rows 1610 through 1795 and columns 0 through 96.
The row and column prices and the signed sinc indices 1514 through 1892 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. Three disjoint slices of 62 rows allow the
kernel to check their exact subtotals using the original triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 1610 1795
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

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

private def columnPrice (j : Fin 97) : ℕ :=
  digit 0x1cfbbdd040293c07585021ff30c99417b0c516c20f3108b10c0944c1a28c857865b4e3c32720fadda1c8f9abbea0ff289f2b488ce4dec2344d1794f16c29dc909b701695a73e640c1df222c18678386864c37090334e11d26a683550f63995e91c819822e140440615ee4a239e1c0fe4129b8f5768c9b37d661dc50c507579b29f4abe45795c228ae354b4455d3d1c5d374236e130231244bd18d3c73b50ccca3e619b4694e6eeafe36222c73769bccde70448e437353eb874fc8511bc3beb018b561ea9f7c7e78fae3c82b228033dd5d654176cb6e44a167b73f4c9108ef966308ae7437fa146beffbb482402dfd08e1251f245034950a080d0a4bbd58bcdc267857e7bd5387bc8b3e09e9012388b506bde3eca28c52dc94054a8dadd008a76df1413654c4ee384faae69bdff895b3f048becaf98ed6b3f58c34536beacda0ce8d796a7b8880d4b7071858c25c6206723b2e9d1ff0da578309f8122bdaf5c95615f9cc3769fb02dac1a255844d774038c3898c27e4626f8349183189c41ca818ec320c162c88e6dfaa364d6c8f40032afb9770819784a93118ccb7c9ef4166cf996288339e1f44d799e872fd4dad0007372e068578077efb453ccb0171a3c1f8c182d264526c3f696c954f1434cfdef4b9da72e7c1262d3e06a62d96a0d7d92b93511baeecbda8c8716672d472dfc225 j.val

/-- The clipped prices on global indices 1610 through 1795, indexed from 1610. -/
def fifthRetainedRunPrice (i : Fin 186) : ℕ :=
  digit 0xb2cf58d100db2a098ce0ae46272f587762173ef44bc302dbde2de355d3781aeed089b48f7400519008b74291dde4d9b7920392ab9e6a0cf9750abd5368ca0f7bb57a6cc297789e3a396d7ec21f0609d9d3d076437cfcc8b4057ea9b49613d8c92a68e09584394341edf182a8fc9064d15825493e972de2a79c9917d78aba566c5df5a8f436679a780bf34fdf57bfe9b5d9252782e1d1289d9a74529e1d6f3bda1c86b85ec34dee7aafcbada081781a4ac1582427164318fa205e56bd291685d0190f8e6493dff848be36f1e7e52292ca76d2f1c023bb49a8765881bcebb2747e1a816a4af51f466811f9b7a60288a0c95462f4b1e7eadf80dae235c555e956fb0cbc60394d9b0908512ad7aa691a0b70d0182e2bbad95152dede9f22a5d12fe5b0f40b783c5525ce7c421d235c4e32a0e1c74f21e59440df9523163793cc9c6d4559674cf5814574227915acfa4d873aa19d440cca2886b03bf3be435f00c68c4fb2d592146adb07282c516e4a9991de778533a9f31bf0bc01d3ee0e84d4ec9f11dfe809538e03598a09c96d82aa3be5dda66288f37ab75e8279ff81104c7d1eea2ef16e9e14195e9f55de0407b7ae1aeb3663d8843b84a5ecedd758b6f6c4eb1f4fbb858275e1bdd24c47b93eefed043d5f7ada2baac3be9ed06203dfc81e5ddbf0104a76e778162d362dbc0e0d1276be0679c1312f01f1e6625f7fd0e6de4bbf1306a36fdefe0b9db2ef28e31315f76129ffbbbb92d4f8cdddb87bda6d6ed2bf1abc57641c50782baf2a999e81d6028bd05eea27688bd8f49e878b6a3a108ec5ac1ce6dddc576e61b2d9c3e72777d976478ec9714161c4caad0329e107f00de36fcd1805ba77870796da9b91b875370daef296d376ca02cf3b875e05809237ab648ff67bd3d31e0c5f68f1f7e16973f932d4cc59bab7f76d8cbb6dcc272e4c4197be3f1d274ecc0f89f7a226d1c29e3dff3360189711906f6d2d7c7397651d545ebb88de232d05af1d9b0a32cca9d6c49f60c482cebdad8b2f89ffd552acefb529ec36bb529495b9bef37a19c4eff9ecf3e3d6167a6d39bae6c73024922d6094c828c4e7c8b816b37ca3829dd569d152e4f3d1c87166002d441c4217adb9ffb3ce6c36f8892b8be9788f4df721ba66a0adbbdc3fa57296cda46e38821693bfc702432a42ecdd358522f6ddb2ba7a8bacc459261faba02a81bac44f94355c96d4c993883589748580f9cb5220484722d0febd6b3ebc7696667b7136dcc09df7193218f72a8b786dae3ba52aafe23dc24bfbb955c90104eb26906de158950c2d8e2ff94b120d158fa486a540ff9dc21fe4399740758ecaeff i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0x3d5b4c88d3deb037557d0f59616095a7ad521ef58bd6f90f3e39eba42b0064f5e5b895787afc965a6d3d831c611d1ec3f0d5600f6326bcfdf7b22904d8a3d95e92d529ecd3ef8fa2f67c197ca67b4704bf373da7f1de1e5ed62a62d92f6c2ac06097b69e8f9cdbdb93123635edeb07054af7060e825a7b8b329e6e3dc9a1d8c49ee6ce94d32f7462cb9ce7baad7a7e23dd93f0713deee825a800f782f32c277bc8ce6d6bbde803e5b91ef5c962fcaf7bc4f16397be50da581bdf5ebdc0b9efca1680dcf7f22e77417bff8c68793e02f282a5df03083c426f82480161a7c18423318be0f13a4ab1f08fbcb966f8533386427c2f26e9153e1a4b41049f0e7a1c0f0f87e392cb47c4432d77b3e24958b921f13814e526f8a58244997c575eb6febe2deeee501f180f9e382f8c900e3c47c68a3ae363e36540a705f1c236355af8e8a7ff017c77fb53ba3e3dc1b9689f1fbb11826f9046b6e337c855fb02dbe44350df3df22d539578f91c3ff03f7c90cb402fbe49ab55051f257088a88f9301b2ec57c9a38f62ebe4e2216b15f278bcaf4ef93ff3c1a27ca1a43c23be519717071f2925e9d3af94bc1323d7ca708f5323e540856dcdf2a3ded584f9537bfea27caa637f2f3e5574148f5f2ad2fc6faf9571d9c5a7cabb0b4063e55d8ccb1df2ae45d378f956a07b1a7caaedeb07be55353ab19f2a71754d8f95200072c7ca818fa183e53885969df2979ca17af94938aba37ca33036c43e50d163a8df27fd01052f93c47d4557c9c327732be4d0fd4a6df25fadfc7cf92b2bef987c931f12fd3e4843686e5f23734c860f915e46fc17c87f5e3e8be426c1c33df20664e05cf8fc71cc697c7ab746813e3b8a2ea01f1cd40bce8f8ded583767c6b641a923e339e20095f18bcce44cf8bd1219df7c59fdc386be2aa8b29d9f1420febd2f8972b1c3a7c468628a43e20aaea7e9f0f012787af86d251f067c30ffb52abe15a60dcb5f095df3f3af83f05beba7c196d584fbe099ba49c5f0338304b6f80cd39f8e7bffd28521bdfc8d78eedefc90c9c74f7d6966d0e7be4333243bdee7d967fdef568ce7a6f79c56d9647bc693d98dbddf6e4a98deedc16d358f75e1e9c6b7ba6f9778b3dcf6223ca1ee59bf563ef71bf872797b85698adc3dbe5bf1979edcf9d6de0f6d5f01af07b61ea13723dac5ec413ded3dca1b66f68c1256917b3c8191b3bd996deb6c9eca4605fd4f63e6ce5847b153705783d858cf7661ec037d37c6f5ed0e852f7aec11ecea3d70bfb6c85eb5b3f96baf59806edc77ac11a43493d5b0a36ba1eaabc861ccf53f66cf9e7a94587f89bd4470c20f5e9f53a6a04f4e33fd03b7a65d592d7bd2cf7e0855e937ba6620f483a487327a359ae6fb3d14a455f19e8736eebe6f420a87ab77a03b25c9bbcfb7b215f5e7a88068f2f3ba601c0179d0264967bce1817c201e6d7191b22f350e0c364799b01761c3cc6bcd8ca9e5ff650870f2e440ac3879644f1c6fbcab32e22ede52191f662f27496f081792c1ae4e03c8ee97a361e43dcf610ef201fb846078f270e4623c71e6b8ba1e3544e719cf18c87314578b75d99f5bc5430ea4a1e26541f458f1145390f2787aedec1d3c35ce8ee31e170de4e64f0997b083a783d2f263a3c16c6589b9e0775972ecf01c18c19877fe2ef5cd3bf71f2a3f1df78ead7f4ef9c48a78277bdfb679dbbd6e015e05de75cb6abeef1a275e94777ca2e4c6bbb6105b59ddd6e3583ceee95d23f81773a342fa83b94b766c5ddc6264da7eee0f6750d476f6be60c2bb72dccee8ddb52967838ed8705407e76b250e378bb5088538d9da3f08ab54ecfccb5d3c766cfb72b9bb2dc1dbda1d927faf98aec70d98fc57626ce1596bb0a917494dd80dae1224ebe35053d275dfd91bbebae6ff4e615d6f063bfbaeb5450b0f975982d19e73ac313bbf29d5d05ed9b4eac3fc3362754fdae6203a9ed730315d4ade3356eea3274e44c7506f39415ba7a523c5a9d389359710e99fdd426f74bd887139ba558d8e129d2629ba220e90c583a437473ab00e03a3091ed70dd13a5bc9c6e878091e1074296cf849ba0b683b029d010bd40d0e7e3139def73dee03a99b9e6196dc4dcee607e978e74d9bbfa2739416d4c139c0ae91171cdba8444eae6b7c5d651734922f959b99b30c2a71cc8e7b628ce621b67a2472fe16fc6fb975a93054dcb6236cf1ee58b927fd272b3054f43b9502116119ca3600839ae4f57ef0067268007bfe392aa1bbb75c90a22d3f0e45fa0febb721d1b215739053472dd1c7dee85d90e3ca1e027971d267ee3538dfe294a39c6b49bf5d2e3351b6b897187f99d4338bab57f809c58b889844e2a0bebb12713de2f07db895b695025c463f954c4e20d2d7a2870f436acb9b870ef3794dc33e393d98e17a8d30d170ab079523b84c68c83f5c21a93555ee0e9035d0070626866bcb8282ca4621c0f9527cf4e058b5697f701a6bd3d0b8044423715bfdac16152dfc9c8a4e26fd3247f6b37e0b894b05bebf2a6952df3c6238656f8ca4f8cab7bd933ce8dbda6d7a37adeb0a71ed56f46ffb6d1379add54259bc9212b3c4de26bc1b736f024713763778a0036a1bb8124c16cdd9ec5b0d66ebe8d473bb756e4626ddba745664badd18e817da6e7be464a2b735b375565b96bef94e4dc9547368e6e3a5e53a3b715162a749b8683795fadc1406972d6dfa0ccd2db6f51558051b76974e6e6db95495f21 (j - 1514) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
private theorem columnPrice_eq_all : ∀ j : Fin 97, columnPrice j = firstRetainedRunPrice j := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem fifthRetainedRunPrice_eq_all :
    ∀ i : Fin 186,
      fifthRetainedRunPrice i = price literalRawDeficit ⟨1610 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem fifthRetainedRunPrice_eq (i : Fin 186) :
    fifthRetainedRunPrice i = price literalRawDeficit ⟨1610 + i.val, by omega⟩ :=
  fifthRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 379, crossSinc (1514 + j.val) = sincEntry (1514 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 1514 ≤ j) (hi : j ≤ 1892) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 1514, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then columnPrice ⟨i.val, h⟩
  else if h : 1610 ≤ i.val ∧ i.val ≤ 1795 then
    fifthRetainedRunPrice ⟨i.val - 1610, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := fifthRetainedRunPrice_eq ⟨i.val - 1610, by omega⟩
    have he : (⟨1610 + (i.val - 1610), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact (columnPrice_eq_all _).trans (firstRetainedRunPrice_eq ⟨i.val, by omega⟩)

private def sliceTotal (b : Fin 3) : ℕ :=
  #[20153315126952939479509008948276063368471810396344,
    21848234097292320671711971104165296307185130115782,
    3722373483344114006817148116252273850662174141068][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 50000000 in
private theorem crossRowSlice_checked (b : Fin 3) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 45723922707589374158038128168693633526319114653194 := by
  calc
    _ = ∑ b : Fin 3, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 3, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the fifth retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem fifthWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (1610, 1795)) (retainedRunCells (0, 96)) =
        45723922707589374158038128168693633526319114653194 := by
  have hrows : retainedRunCells (1610, 1795) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (0, 96) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have hv : j.val ≤ 96 := (Finset.mem_Icc.mp hj).2
    change 1610 ≤ i.val at hl
    change i.val ≤ 1795 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
