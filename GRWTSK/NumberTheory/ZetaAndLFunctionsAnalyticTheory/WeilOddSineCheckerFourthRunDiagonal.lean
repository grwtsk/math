/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Exact diagonal subtotal of the fourth retained run

These are the original global cells 1177 through 1294 paired with themselves.
Use the existing certified fourth-run prices. The signed sinc entries on
[0, 117] and [2355, 2589] are stored as base-2^41 digits in increasing index
order, starting with the least significant digit. Each stored digit is the
signed value plus 10^12. The values were computed from
`scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6` and are checked against the
original lookup. The two row slices retain weight one on the diagonal,
two strictly below it, and zero strictly above it.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def fourthRun : Finset (Fin 32768) := Finset.Icc 1177 1294

private def rowSlice (b : Fin 2) : Finset (Fin 32768) :=
  Finset.Icc ⟨1177 + 59 * b.val, by omega⟩ ⟨1177 + 59 * b.val + 58, by omega⟩

private theorem rowSlices_cover : Finset.univ.biUnion rowSlice = fourthRun := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, fourthRun, rowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 2, 1177 + 59 * b.val ≤ i.val ∧ i.val ≤ 1177 + 59 * b.val + 58) ↔
    1177 ≤ i.val ∧ i.val ≤ 1294
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 2 := ⟨(i.val - 1177) / 59, by omega⟩
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
  if j < 118 then
    (digit 0x3652252a56fb31312f519d9ca077d606d05070cc5f692672df4fb51165841cdac74fa31eed82b9638176d0c6e6b1db700931929dbbcfc0ba9edfc99442ef70d3b1d0a3b8e0528330dcaae86461ee7294a8a97747badf981bab05cc541dd90f1764e6ee49a1966b7803d84a99bc706d2319de6ef52c606f5298b09477b6baabc89be20412d66df44d299746fbc801d17f7eb2a3f38dbfbf98cd84e01269fe36702240a56f781d8475655c14e3650dce0d79cceb87083cb2a7fb84dc1d2439c2cbde73dce1944db7e8f0e1112a44f87bdb28a81c438586c81e24860a4c1f13a04c262b8a7c99b8c5c5936df46ee2f3bac34e718e98b2a078d1869f47bc6dceb528fe39642896971dec05f4178f90bfab8dc8149f6452e42fdfb94a722a6fd345b91e53c861dc93a5ba666e4c07b65d7f2719bc2887941587775fca4df43d04e547fff6ba72b4398bc4b96214ccd43cb4f3ffbaee5c6592c3772f23f3a7a398083e3f9dcc3e186ca0e63b7422cef32ba388b2f99ca12fdd9cd1a59d794e6a73f569073605de0a9f9b6687bc31cde3e34839e709aaa641f390665e5539cdd5ebf9fce9a9693eee762a75641f3bbb5d0ca79e2e5fe8a3cf3e585f4ce7b228131ef3e245bb88b9f5958bd9fcfcf1022ede7f820f40774041057a4fa05e1c7399d04ca82fd5e834877cd674211094cd3a13c83f66dd0b70db34ce86752a0007439421a2e3a1f46def79d10e30ba40e8907ac026744ca147393a285becbd9d152043415e8aff9b18bf45b2b345cfa2f060c155d1827df510e8c5cabb007464ddb3603a33443d199d19f96b7e0e8d1ea96c07469b74ff03a3515dcf01d1a94a2000 j : ℤ) - 1000000000000
  else
    (digit 0x3d081560235e839db0646f41957b39b7a0aca0b95bd0468acef1e81b071fe0f40936b3217a025e12aebd0004fbda1e7f67c3582f3f63ab19879f884df6cbcfaead3885e7cc3ed792f3e06624dd79ed3fc3903cf51ae8431e79c5503a2f3c7bc395679e0906c1abcee961bf09e766c6240af3ac40d1bb79d278e12bbce75d7e009e72b9b0f34f38df886b179c2fb85c83cdf724b4c9e6eade0690f36ce8a63679b21b178bbcd6d5eded5e6a49ab524f3491732e0799fdaae42bccd89fd065e658de2dd2f3228ae2ef798c3dbb6e3cc3903c839e607b6e92ef2f94b1f3879774809b13cb8ea9cce1e5b134c314f2cd6001d87960fdbc293cad9b3a74de55568f7d0f29ed254c87949634dacbca1a45dcade4f46620faf26dab903879307d8ff83c95087a78de48e4031f6f239f5d8c8791651aac33c87ca2f061e4230c7414f203bbfd8c78fae51abd3c79ec44545e3b2e1826cf1cb0975f278de3db079bc6b71ad129e33dd74554f18fea5f6b78c0618f423c5c5d8523de2c406ed86f1526b7afb78a1572bd73c4cb310fc9e2458aeef2f1129a2a947881254b183c3c75bcf49e1c27efb3af0d0846e4b785fd300993c2ba91c8f5e13afffbdef08c38e163783d67ad24bc1a50e9b95e0af2c0c1cf045c6b7327819eafd273c087103fc5e01f227278effd3db7dc77f564e7093bf60d6faa1df8b0399f0efb2ae3ce777cfdda9723be32a54faddef2f10afaef66292da877a95dc97ebbcfcbff259de570d6422ef17bffb907781ee10dcbbbbf6db6d5ddb77c525aeec7849e4a7759978bdabba7af78255dd1462891cee75898fc07730638762bb92fa83acddc6de5ba2cee21e1c7f477065b8ee43b7ddccb611dbc42c8d18edcca0b8bb76db896a2d3b685b3a891db175e968ced75da495976aff71b32bb527ad9375da67a44f40ed1da2d1f67683aedbc93b3c40cb231d9b5270ac6ecc40f16fc7656bb1b4f3b25b24e7d1d90010ee14ec6934444c7629267c433b0ed4bab85d8488ce5c0ec0d27e86475fafbd1d43af7ad7f4f5d78ec69c1cebafffef5a75cc461d5b3ae04222821d6d2ea6f16eb51d29dc8759d108bcd3ac898400a1d6152565ceeaf2b68b96756d66731fbab0b587cd5d555a52620ea92c29eb1753d534f9e3a989fbc861d49497e9dcea320e05a7750ce2c136ba805cb2695d3d22c73e2e9d0b0322f74dc2088baba67f24dc49d30e920514e96ec0d39974ab1885163a4f6681989d249f8511ce90c57d1307479d6b07b3a36bf4e2edd1848f730ae8a98d44837448671d87ba1e02bfa95d0be87e1d2e8467973a47416d5f45f3a0536ec909cff81264b4e7e334cb4e73e52f6fc0b9ec61f45c9cf31600774e77fd7d90873b37fda1239d389fdfa1ce6aa20e84e71c7b45357381d38a6839bab5364cdcda409eb18e6b937cd13735036e186b9a1e9ceb11ccddc92f18e656263cbf731eb646dd39892dfb779cc18118114e5f35f692172ed5e2581397087f2621cb53149014e590fc29d972bc3ae91eb957fde91d5ca8f04076ae52f155325728b58faeeb93f9613ba1c9cc11827ae4cdc3afc3725ac4bea5b92756a3241c90a6e8070e46d1fface722a8a8f61b90f45c39b1c84a4c5802e40d42d99c71fab6bc9ab8f7699b285c78bdc2b2ae3ae44d59d71cb558710b8dfc84817dc6cf4edadae3503e5636 (j - 2355) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem differenceSinc_eq :
    ∀ j : Fin 118, diagonalSinc j.val = sincEntry j.val := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem summedSinc_eq :
    ∀ j : Fin 235, diagonalSinc (2355 + j.val) = sincEntry (2355 + j.val) := by
  decide +kernel

private theorem sumSinc_eq (j : ℕ) (lo : 2355 ≤ j) (hi : j ≤ 2589) :
    diagonalSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using summedSinc_eq ⟨j - 2355, by omega⟩

private def diagonalPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then
    fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else 0

private theorem diagonalPrice_eq (i : Fin 32768) (hi : i ∈ fourthRun) :
    diagonalPrice i = price literalRawDeficit i := by
  have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
  change 1177 ≤ i.val at hl
  change i.val ≤ 1294 at hu
  rw [diagonalPrice, dite_eq_left ⟨hl, hu⟩]
  have h := fourthRetainedRunPrice_eq ⟨i.val - 1177, by omega⟩
  have he : (⟨1177 + (i.val - 1177), by omega⟩ : Fin 32768) = i :=
    Fin.ext (Nat.add_sub_of_le hl)
  rw [he] at h
  exact h

private def sliceTotal (b : Fin 2) : ℕ :=
  #[1399383788085020606378506289424300199207098414392542,
    3964064918698967637575637663660311992882658392649502][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem rowSlice_checked (b : Fin 2) :
    triangleBlock diagonalPrice diagonalSinc (rowSlice b) fourthRun = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem diagonal_cached :
    triangleBlock diagonalPrice diagonalSinc fourthRun fourthRun = 5363448706783988243954143953084612192089756807042044 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock diagonalPrice diagonalSinc (rowSlice b) fourthRun := by
      rw [← rowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion rowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => rowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact self-pair contribution of the fourth retained run in
`total_eq_retainedRunBlocks`. -/
theorem fourthRetainedRunDiagonal :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (1177, 1294)) (retainedRunCells (1177, 1294)) =
        5363448706783988243954143953084612192089756807042044 := by
  have hcells : retainedRunCells (1177, 1294) = fourthRun :=
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
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    have hd : Nat.dist i.val j.val < 118 := by
      simp only [Nat.dist]
      omega
    exact ⟨differenceSinc_eq ⟨_, hd⟩, sumSinc_eq _ (by omega) (by omega)⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
