/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Seventh retained run against the first

These are the original global rows 4110 through 4199 and columns 0 through 96.
The new row prices and the signed sinc indices 4014 through 4296 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. Two disjoint slices of 45 rows allow the
kernel to check their exact subtotals using the original triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 4110 4199
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

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

/-- The clipped prices on global indices 4110 through 4199, indexed from 4110. -/
def seventhRetainedRunPrice (i : Fin 90) : ℕ :=
  digit 0x862702ae808ce6dc01406a9f24ab78470594de982c2d72d6081a53ac19a70f3c04ab3608a0e797fbc4cec7347ec2a4faac1f81707e147340c6d94c55706a865f3acc38b62caa481e078fffd90fd37828f5484e48dc384457c2c4c462435b5dfe712cff8594889bf2d5671c5097e67301298d9a5f231560cdc1398af9fa01adc5a00e3f72c2e0b2c1df9178404ec85cbfdbfd1c0c61b00263cf31ab0514701938008d594cc9bb08b8c679f7b7bbc346a6e2fff1a7b7b38c54d5d540bd466bcaeb96603647625c879b4d88d8578db82012d786e2f56ce06374090f5199bad97cf3b4dd9e1b0e0a6ecb2cf8e737555f996e9b9b71d15f4dc2893632c6d9e4c688e3685eb661d1b173c6bb7cd7234ea6386aaa036b9a34d3098d6e9a21793cb58ce9311e8ee65f1108f20323e47500a18bb05dc728c27f8176345f77a19e6c2ec9e9547596e51b74508b2f31ceda057435160642a78ea5d7a14a14e061849ffb38dc064d5b24135a254ef9602411f18b62ec489a7f5d31a41c782a9611f5076fa140ed819d2a78700c350668349234c7d118827249f60b57966c914533d8a74c025c6598e8410eaa52c830772f3227ac33542ca87c15705f2b6b088f6fe04e832d747ff50106ae21a4e039df941a5 i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0x3ba98f62a59dd5c321e08eeb5de1c1d775ec64815bbb1491273ddd994a5000eed40f0a0c776db0e7ccbbb8a756295ddd3830b0eeef0ce36ef777be1a6f4bbbfa82af5dde0acc64f6ef0c13c3ee778954a154bbc649a45f5de3f17273aef25d82c9577960620283bcc89ecc6dde7054d338ef3e1448dc77a1f29b223bd26745e71de9e77a61aef54c14f2177ad16b962bbd7e009515dec9729ca4ef69d8d60077b76f5262bbdcf2a8deddef13976c2ef7d54d61977c0f96ed63be19daf219df15c0baf6ef8f2fabc477c9b2497fbbe5dfbfcc9df36fdb998ef9f6418a177d1974ff73be9b798161df54e68fd6efaded451f77d8a62369bbed240f141df6f722a90efbac6c1d977dedc9945bbf02416139df86984900efc5ec88e977e438bbdf3bf2b6b8e75df9a517f26efcf5aff1777e8b8cb07bbf4db1e329dfaa973810efd70ef4f577ec5b3c943bf69087aa9dfb763b7deefdd05a7d977ef1ebcdd3bf7d652545dfc0b21d98efe13cc2c977f1022f293bf8abf6b95dfc67e64d4efe3b25f3b77f204ae11bbf9110916ddfc8c56716efe46505cc77f2258bd4bbf90539865dfc784dd0eefe353aecd77f164529b3bf888541eddfc2bb5f94efe07dc2be77efc0c4b23bf79a410eddfba686862efdbe31aa677ed3adcb53bf63b04b01dfae8c52b2efd584005977e9d2cdaa3bf46abf941df9f285b88efcd612e9777e58903103bf229ae8a9df8c3ea1dcefc37bd11777e05e20e0bbef782a9e5df75d22674efb7d5847477da530381bbec56a90e1df5be6cb9eefaa7055f977d368bfaabbe8c5bb3c9df3e81549cef9b4ec35a77cba0a239bbe4c60e9a1df1da764ecef8a73ba4977c2fc2fff3be0586c879def95f7f46ef77e297f477b97d25743bdb7dba30dded1b1046cef639f286377af25766abbd636f8621dea6a431c8ef4dada5bd77a3f74daa3bd0854355dde78421fbeef3612b7727797f50c80bbca69d27a1de4694bfdcef1cd37146778b214a463bc3e5f8319de11a6daccef01f55245777d7ed3d2bbbcfb218d1ddd9840e0aeee57e4396776f10aae53bb5aad5fb9dd9e38c96aeec7749739775fda057dbbadf6b6f81dd5fd24c6aeea7df06aa774fde4d2bbba5e07fad5dd1e5ea346ee86c4b163773f211e4d3b9d6a04945dcd9eca3e4ee642d1b49772da647423b9495330cddc928bea86ee40202b04771b71c7933b8b6410ed9dc484cd644ee1aa62833770887cf09bb81d8bc119dbfb408560edf3c7b98e76f4ecbcbdbb77f569db1dbab78d15eedcb8de2f076e0a51e183b6dbc66b35db59084af4eda202034376cbb5adc6bb633015841db040235beed772dd25d76b62352a33b5852ef2a9daac7a83d4ed4b1b5ebd769ff31e95bb4d2781e3dda5285d12aed1dd50b3876892a4d633b41b070b69d9f6395ebcecef658c8c7671ce4375bb35f072d31d997ab0da0ecbfd7e6e17659e48c9abb29ea52f31d936f159dcec8f376b2f764172dab4bb1da0eeaf1d8d4235524ec5d8fb49976287f04623b111735d35d86f58a15cec2aeca5a9760f0f039ebb045029ac1d808a96b0cebf75a658375f528f4563af74edc50dd7a02e6396ebc2e55d0175dad312f03aea166fe7dd73600bb5ceb8d9a33bb75c013bad53adcaa15e65d6ca3a1bbaeb5785cd0475a4f164e7bacf0d0e4e5d65cf4a0dceb20b544ce758972a5f83ac142a6e5dd5ee4ad37ceae935ec8c756d9e2d2d3ab34e3a6bdd57e57a282eab11547f375517ac26abaa5332fc89d50d365c80ea786109bf75350f44acba96f4f93c1d49b02a918ea3f27105d751862a85d3a889713871d427d88246ea0575629074fb7bf5a43a7a1d05141d3b3d42d9ce9cb5a2c0974de6246b33a6b8a5d199d33f123558e990e3b9f174c11cc607ba5ce2b2be1d2c9af616ce95620776e74a3b2acaeba4e29a4355d253c8b07ee91b1eea1a74862b407bba3f62d5df5d1dd7b50c6e8dfedae7374688dd2443a3091f1629d166e498e6e8a49b7449744ae1bc103a21baa4c61d0f02200b4e86936fb1c (j - 4014) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem seventhRetainedRunPrice_eq_all :
    ∀ i : Fin 90,
      seventhRetainedRunPrice i = price literalRawDeficit ⟨4110 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem seventhRetainedRunPrice_eq (i : Fin 90) :
    seventhRetainedRunPrice i = price literalRawDeficit ⟨4110 + i.val, by omega⟩ :=
  seventhRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 283, crossSinc (4014 + j.val) = sincEntry (4014 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 4014 ≤ j) (hi : j ≤ 4296) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 4014, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then firstRetainedRunPrice ⟨i.val, h⟩
  else if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then
    seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := seventhRetainedRunPrice_eq ⟨i.val - 4110, by omega⟩
    have he : (⟨4110 + (i.val - 4110), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact firstRetainedRunPrice_eq ⟨i.val, by omega⟩

private def sliceTotal (b : Fin 2) : ℕ :=
  #[551225143699097170086234385038274211739169747420,
    324439518468704897009297885403858916781273457642][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 50000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 875664662167802067095532270442133128520443205062 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the seventh retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem seventhWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (4110, 4199)) (retainedRunCells (0, 96)) =
        875664662167802067095532270442133128520443205062 := by
  have hrows : retainedRunCells (4110, 4199) = crossRows :=
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
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
