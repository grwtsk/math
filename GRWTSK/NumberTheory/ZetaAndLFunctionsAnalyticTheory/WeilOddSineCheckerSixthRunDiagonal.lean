/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSixthRunFirstCross

/-!
# Exact diagonal subtotal of the sixth retained run

These are the original global cells 2790 through 2913 paired with themselves.
Use the existing certified sixth-run prices. The signed sinc entries on
[0, 123] and [5581, 5827] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The two row slices retain weight one on the diagonal,
two strictly below it, and zero strictly above it. This gives 124 diagonal
entries and 7626 strictly lower entries. The pair majorant retains the absolute
value of the signed sinc difference and the literal variation allowance.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def sixthRun : Finset (Fin 32768) := Finset.Icc 2790 2913

private def rowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨2790 + 62 * b.val, by omega⟩ ⟨2790 + 62 * b.val + 61, by omega⟩

private theorem rowSlices_cover : Finset.univ.biUnion rowSlice = sixthRun := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, sixthRun, rowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 2790 + 62 * b.val ≤ i.val ∧ i.val ≤ 2790 + 62 * b.val + 61) ↔
    2790 ≤ i.val ∧ i.val ≤ 2913
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 2790) / 62, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem rowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 2))) rowSlice := by
  intro a _ b _ hab
  apply Finset.disjoint_left.mpr
  intro i ha hb
  have hne : a.val ≠ b.val := fun h => hab (Fin.ext h)
  simp only [rowSlice, Finset.mem_Icc, Fin.le_def] at ha hb
  omega

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def diagonalSinc (j : ℕ) : ℤ :=
  if j < 124 then
    (digit 0xd7b93aa847ebfe75cb9c36100a57d6bb105e6c467d8c54902486c8394d191f652252a56fb31312f519d9ca077d606d05070cc5f692672df4fb51165841cdac74fa31eed82b9638176d0c6e6b1db700931929dbbcfc0ba9edfc99442ef70d3b1d0a3b8e0528330dcaae86461ee7294a8a97747badf981bab05cc541dd90f1764e6ee49a1966b7803d84a99bc706d2319de6ef52c606f5298b09477b6baabc89be20412d66df44d299746fbc801d17f7eb2a3f38dbfbf98cd84e01269fe36702240a56f781d8475655c14e3650dce0d79cceb87083cb2a7fb84dc1d2439c2cbde73dce1944db7e8f0e1112a44f87bdb28a81c438586c81e24860a4c1f13a04c262b8a7c99b8c5c5936df46ee2f3bac34e718e98b2a078d1869f47bc6dceb528fe39642896971dec05f4178f90bfab8dc8149f6452e42fdfb94a722a6fd345b91e53c861dc93a5ba666e4c07b65d7f2719bc2887941587775fca4df43d04e547fff6ba72b4398bc4b96214ccd43cb4f3ffbaee5c6592c3772f23f3a7a398083e3f9dcc3e186ca0e63b7422cef32ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0x3b7c58c180ddbe2894a60edf111ce5376f86540363b7c1baeb2ddbdffcfa26edef79c73676f7704cbd3b7b8cbd1d9dbdae1b22aedec9a488f76f5d7a2393b7aabf3a71dbd337d27cede87396d976f39b6d20bb79796da6ddbc9005ec0ede306485676f0bc02cdbb77f55ae65dbbc3cfe1ceddc53450a76ed39e177bb761fff9b9dbaceffb14edd45bc69b76e915b022bb73f9b4601db9b1c432cedcb21581f76e4503e83bb7182e6221db86c56660edc0a5d5db76deea84db3b6ebc160f9db6fef9686edb4eb6ce276d8e5a3c53b6ba5d97e1db569fa674eda7f49aae76d242e400bb6840d9cb9db3adb0904ed99c42c9676cb03b62a3b648dd43cddb1ca7cff4ed8a5d3f3d76c329b26f3b608d99d3ddafc0caa98ed79c33de376bab69835bb5c410f22ddad910e46aed67f9e1aa76b1ac4dba3b57a92c1b5dab3bc636eed550530c376a80cdfa5bb52c6fbd59da8c17a66ced40e97d85769dda8095bb4d9b9c561da622bc30eed2bab657a76931788a0bb48283e4c1da360263d0ed154fd04f7687c674cabb426e24cc9da07a5c5c8ecfddbeeb3767be9e675bb3c6ea507dd9d720b654ece555392c766f84a2c53b362b25fb9d9a47e9092eccbc16ece76629991fabb2fa5201f1d96fcb3ac2ecb12693e676552bbec9bb28de1d0b5d939132380ec958af09676473e559e3b21d7b7201d900633edeec78f50f577638d4a3e2bb1a939921dd8c5c90350ec5b6bbb717629f21735bb13137dd6dd889526686ec3cf5ff63761a9a3c9b3b0b592f9cdd84b0dda1cec1d9b2333760ad0bfa5bb036687fe1d80b0a482cebfd62aab875fa9969973afb3d6f3f1d7c9570fbeebdc5453cd75e9f820783af2dfdbea9d786040126ebba78147675d8f0e62b3aea4fd25a1d741215a2ceb97d618fc75c787d7753ae18f6438dd6fabfc232eb7476c1f275b5c12b01bad8a0b004dd6b2f0462eeb5062a23475a3a1305f3acf85e08d5d669c45492eb2ba27cd775912c4ef33ac6412c6add61f4db90eeb063f4304757e6704ebbabcd4d577dd5d39e9848eae04211d6756b55e6273ab34328435d586c96b72eab9b4301f7557fd9b193aa98e7b831d538e0fbd0ea929f0c27754462dfa73a9fb92f811d4e9f85e24ea6b0c396375308a82023a95c5ad881d49a22ee08ea43056e1c751c7961793a8bb6674bdd449744930ea1a9481107508346d4b3a818dd6511d3f8004aa0e9f1c3670a74f3c0a36e3a774e7b51dd3a5db05d2e9c89c307374df230f583a6cfadda09d35318c1c0e99f2906d574ca60c8c23a62958a889d2ffcdf3f0e975742a6174b57ef2663a582114addd2ac0f3b6ae94b87ef6474a082b8bb3a4da0136a9d257f15b9ae9216ebbbc748b7150afba4315222a9d20389373ee8f733044974764ff65fba3882dfc85d1aeebcb2ee8ccdf4a54746123ebc93a2debede45d15a2e2930e8a27e18f6744bf2777e3a2352f0405d1056572c2e8781a02797436c0e355ba18ba8c169d0b0a6d3d0e84dbd9dbc7421947b1cba0e2567711d05c077d7ee82373838b740c728b42ba039628821d0079ca0d4e7f9464bfe73f7605f8839f90f74f99cfb37b6980e7cf408bd673e26341ad39ee93f15cdcf5fb8f880e7a56cd1d673cd80781f39e426405ddcf0c6a5eeae77bd5a41d73b8bd44a4b9d9c902311ceb9a49894e752857d8973a41ee30f39cf7ed3e5dce677c86dee72986cb10738faa87e939c54a4ebe1ce1606eb6ae700e3e923737b655f25b9bb2e07875cdc55862eae6d8a72116 (j - 5581) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 124, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 247, diagonalSinc (5581 + j.val) = sincEntry (5581 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 5581 ≤ j) (hi : j ≤ 5827) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 5581, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 2790 ≤ i.val ∧ i.val ≤ 2913 then
    sixthRetainedRunPrice ⟨i.val - 2790, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ sixthRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 2790 ≤ i.val at hl
  change i.val ≤ 2913 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := sixthRetainedRunPrice_eq ⟨i.val - 2790, by omega⟩
  have he : (⟨2790 + (i.val - 2790), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

private def sliceTotal (b : Fin 2) : ℕ :=
  #[1023001638234951274623666142735175393259612322897072,
    3029472560119864772920151217023374761841091015453747][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem rowSlice_checked (b : Fin 2) :
    triangleBlock diagonalPrice diagonalSinc (rowSlice b) sixthRun = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc sixthRun sixthRun = 4052474198354816047543817359758550155100703338350819 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock diagonalPrice diagonalSinc (rowSlice b) sixthRun := by
      rw [← rowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion rowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => rowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact self-pair contribution of the sixth retained run in
`total_eq_retainedRunBlocks`. -/
theorem sixthRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (2790, 2913)) (retainedRunCells (2790, 2913)) =
        4052474198354816047543817359758550155100703338350819 := by
  have hcells : retainedRunCells (2790, 2913) = sixthRun :=
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
    change 2790 ≤ i.val at hl
    change i.val ≤ 2913 at hu
    change 2790 ≤ j.val at hjlo
    change j.val ≤ 2913 at hjhi
    have hd : Nat.dist i.val j.val < 124 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
