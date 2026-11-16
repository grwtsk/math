/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross

/-!
# Exact diagonal subtotal of the seventh retained run

These are the original global cells 4110 through 4199 paired with themselves.
Use the existing certified seventh-run prices. The signed sinc entries on
[0, 89] and [8221, 8399] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The two row slices retain weight one on the diagonal,
two strictly below it, and zero strictly above it. This gives 90 diagonal
entries and 4005 strictly lower entries. The pair majorant retains the absolute
value of the signed sinc difference and the literal variation allowance.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def seventhRun : Finset (Fin 32768) := Finset.Icc 4110 4199

private def rowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨4110 + 45 * b.val, by omega⟩ ⟨4110 + 45 * b.val + 44, by omega⟩

private theorem rowSlices_cover : Finset.univ.biUnion rowSlice = seventhRun := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, seventhRun, rowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 4110 + 45 * b.val ≤ i.val ∧ i.val ≤ 4110 + 45 * b.val + 44) ↔
    4110 ≤ i.val ∧ i.val ≤ 4199
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 4110) / 45, by omega⟩
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
  if j < 90 then
    (digit 0x37eb2a3f38dbfbf98cd84e01269fe36702240a56f781d8475655c14e3650dce0d79cceb87083cb2a7fb84dc1d2439c2cbde73dce1944db7e8f0e1112a44f87bdb28a81c438586c81e24860a4c1f13a04c262b8a7c99b8c5c5936df46ee2f3bac34e718e98b2a078d1869f47bc6dceb528fe39642896971dec05f4178f90bfab8dc8149f6452e42fdfb94a722a6fd345b91e53c861dc93a5ba666e4c07b65d7f2719bc2887941587775fca4df43d04e547fff6ba72b4398bc4b96214ccd43cb4f3ffbaee5c6592c3772f23f3a7a398083e3f9dcc3e186ca0e63b7422cef32ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0x3a845d399e5d43045dc84ea1ecc50337512b878afba8b042dbb5d465570c26ea3941441c751fe8eb31ba919748961d499c61afcea53637d6b752cef2be53a9814e0971d4cd85c5e8ea6d2c5f7d7539c7eefbba9e7b511e9d50088f262ea8695626375466ff335baa4c8faef5d532c2b1ccea9f98148b7552e402b5baaafc44979d5642644aeeab82e1c61755f20f3d23ab1139ad8dd594a71df8ead05139e8756b23a9dfbab70d710d1d5c438e62eeae7fb48567576e915fe3abce8418d1d5f2cf7e8eeaff263f9c75826e37dd3ac2a28e125d6205f041eeb15cc35f4758db01e813ac83ae0185d64cdbd2b8eb2be761637598abe9023acdafc93c5d6783a8802eb4172192c75a35ec7483ad2ffe39b1d6a2700650eb5666d74b75adc5fac3bad829d22c1d6cb717780eb6ac039d875b7ded720badd2c4119dd6f3344fc2eb7e79046b75c1a6c2f5bae205e61b1d719ae504aeb918c217475cb1b386fbae6b580c61d73ed589f2eba3f4a38775d439c5f7baeb39dae35d762a05fc8ebb5adc6a375dd000ed3baef91c8bddd785058988ebc6b2f17075e56bcbc33af3bc29701d7a5fc160aebd6ffb66875ed7acb963af7b7e7301d7c57b6d86ebe68fd50375f52af3bdbafb83f7959d7e37b53deebf55f3acf75fc7a40d9baff1f5be09d7fff3eab2ec036a0483760366c73dbb0289213c1d81addb380ec10ac7efc7609eeb3733b05c060fcdd834319190ec1d2328407610104ab2bb08c440de1d84be8cbd4ec28cab05f7615c9eb59bb0b93f33bdd861fd0eaeec339ffa5e761b1a0d573b0e2eb748dd876686da4ec3da01d01761fff42963b1093d9419d8892564ecec46c86398762478375fbb12c2b29d1d89a2edaeaec4f164eb7762883b2b33b14baaa38dd8a9802190ec568794e3762c20969e3b167b3483dd8b714f7a4ec5d1a2332762f4de088bb1803d3a31d8c2e989ecec62cc1ddb76320aa97e3b19541795dd8ccfa743cec679be0bd763456266cbb1a6b9e53dd8d544c266ec6b87ffd676362fa85e3b1b4a13ea1d8dbc5f120ec6e8f47a87637969cadbb1bef32931d8e07beeb2ec70b0bd9976388a8d2ebb1c5ac2cb9d8e3651b9eec71eba03c76390b2056bb1c8c9b641d8e4804b20ec723f679076391819563b1c84a18edd8e3ccc39eec71abc5307638b158323b1c42c8e9dd8e14a3ee6ec7030a4787637d6d9d13b1bc71385dd8dcf8ea6aec6dce2a95763688b805bb1b1191e89d8d6d96744ec6a84b68a7634c7298abb1a22630ddd8ceecca36ec6654e12b (j - 8221) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 90, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 179, diagonalSinc (8221 + j.val) = sincEntry (8221 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 8221 ≤ j) (hi : j ≤ 8399) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 8221, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then
    seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ seventhRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 4110 ≤ i.val at hl
  change i.val ≤ 4199 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := seventhRetainedRunPrice_eq ⟨i.val - 4110, by omega⟩
  have he : (⟨4110 + (i.val - 4110), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

private def sliceTotal (b : Fin 2) : ℕ :=
  #[198912266447776385584364648388949923217314742126590,
    595663885800420651954687565912876341046690139931379][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem rowSlice_checked (b : Fin 2) :
    triangleBlock diagonalPrice diagonalSinc (rowSlice b) seventhRun = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc seventhRun seventhRun = 794576152248197037539052214301826264264004882057969 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock diagonalPrice diagonalSinc (rowSlice b) seventhRun := by
      rw [← rowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion rowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => rowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact self-pair contribution of the seventh retained run in
`total_eq_retainedRunBlocks`. -/
theorem seventhRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (4110, 4199)) (retainedRunCells (4110, 4199)) =
        794576152248197037539052214301826264264004882057969 := by
  have hcells : retainedRunCells (4110, 4199) = seventhRun :=
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
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    change 4110 ≤ j.val at hjlo
    change j.val ≤ 4199 at hjhi
    have hd : Nat.dist i.val j.val < 90 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
