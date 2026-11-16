/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFourthRunFirstCross

/-!
# Seventh retained run against the fourth

These are the original global rows 4110 through 4199 and columns 1177 through 1294.
Reuse the certified fourth-run and seventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [2816, 3022] and the sum window is [5288, 5494].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker, and the two disjoint row slices use its
original global triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 4110 4199
private def crossColumns : Finset (Fin 32768) := Finset.Icc 1177 1294

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
  if j < 3023 then
    (digit 0x37beb771831bdf258a028def7a201cb6f7b1f73fe37bd40c3b4dbde7dd03cadef3014c2c6f791dbc03b7bc6743cf5bde24c35ecdef0d6a3c26f785758ca37bc2b92f15bde1aaf220def1243f956f78cd526bb7bc8e2b6fdbde5fcbd2edef3ebbb0d6f7a806318b7bd8f609ddbdef43e36cdef92e15276f7d70f6b337bf2f5e9c5bdfd817750df00ebafcd6f819f2a8337c16e2a365be10b5505cdf0b244f516f870accf6b7c44ba0c45be28de0a58df17d71a116f8db35d7a37c7c7781a1be45f904ccdf270298476f95980c6237cbe13e7f1be680262d6df38a4b3f36f9eb7baeb37d0985aae1be8ef50b42df4cbab8fa6fa910fb4737d5ec0be29bebacaa902df634155646fb4a210c5b7dbdb69eb9beeb7babd6df7c3499c16fc168f00a37e265654b1bf20ff4966df978ff9b96fcf633f59b7e988c75e5bf5b4b7e90dfb54e4cc26fde8e56f8b7f14432901bf9a55110adfd569cef96feee7419db7f9962294dbfde0f915edff7dc222570006abcf9b8027cecaf5c0266d5d22e01c9e4ee77013153a4fb80bf6c0009c0735fa186e043a8c6017026e2df22b81601a5e0dc0c4d65e32e06cf361d4703bcf85f638209b82419c11ac06868e0987567f77051d6bf1f382bc21419dc1750b6e7ae0c6258aff7068f3d1ad383772f5dadc1d3a3fb86e0f5f9ec62708121bc5f3843ab9def5c236757b76e127e81e87709a5b36b23850695f431c29d6a3f60e15be526f470b49ab1fc385da969d3dc3086b8210e191e580ab70cfda5a9c386b68cb4adc377616cf6e1c9dd1e9b70ec14193cb879a46fa0dc3ea331d44e203bf6e41710941942438885921c7dc460c6a962e23f7f5a6971275c309ab897838c615c4db0126a0e27d0f4e0d71465d145eb8a7203a795c558c6af24e2bc61375871663d272a38b72b984b9c5d9fa682ee2fd668acb7186f51449b8c7a1f4111c65e7e8886e34010468171a87d4c4038d87f7ed49c6e6345f38e3844ef59271cace067f38e9c04d4f9c770fc5a86e3ca12b39671eddf432ab8fb6058ce1c7feb60f1ee4114b30427211a8ccebb90d5b801b5c88f403f82e459e7b32c7236223ad4391fad88739c92278e3ace4a3d71f9c725b42f24e3932521e7e5c9b83d30f0e4ef07f8857281022919b94544d74f1ca5069a206e53b68649772a756e757b95881316c1caead9ff56e588e6326272ce3809a1396c0295db9cb87696768e5d76edc9b72f59c432d397fc459375cc25f25790e626ef8e75731d7a1ffbb993c1bcc61ccc64eb4c0e6775528117345c80714b9a7f5ef999cd6857d488e6c88c42ff736e7c3ccbb9bc5c0fb29ce0be68640e71a8136e073978ce50e39d0ef2b2a9ceb0d31c58e76d201e0b73c0f005be39e5aa41605cf56f575d2e7c054da5273ea9b891439fa88442adcffe2507d8e8140b19d074148540083a0f84190f5d0a638e778e8682e5bce743ea2e4c6ba24989a7b1d14f07d37ae8bca9f5af (j - 2816) : ℤ) - 1000000000000
  else
    (digit 0x39063c05049c826e82fe6e40e0a9e92720459dfa43900dbe44a5c7fc7c55fce3f91fa34871fa0a082038fbc6e1f55c7d46c3f54e3e563ed1a71f0528299b8f6fe5f2f1c7aec2d058e3d2dcdbb171e735f59638f283aa8c9c78b8a5816e3c18f83b171deb6e1e938ee57ffb3dc76acc8d70e3b180ad5171d6d7a207b8ea7c8705dc74c928c82e3a2b4d31271cf9a6961b8e6f2554e5c730e4d41ae39530208371c90143c8b8e3ba6b76dc717cb4366e388f6711971c30e14deb8e0d5b63edc7014d17b8e37e0b4f1a71bdc2978c38de450df9dc6ed70ea8ce37471f29f71b9205d8538dc0936521c6dc3caf92e36c2d40a671b528ced3b8da22de0edc6cdb5b2fee3653fca3b71b1dd296fb8d8929ee25c6c1e097fee35fabcbb271af3e80df38d758fd3a5c6b8c15742e35b732bfe71ad4dbde2b8d67668181c6b25b3dcae358977c1371ac0b9e28b8d5eb38ec1c6aeb0ebd4e35719f66271ab78b41138d5b7b3781c6adc453eee356fb7e6c71ab956677b8d5dc05b51c6af96ba34e3583ca06971ac61f087b8d65847c11c6b428b3cee35add910071adde61a038d72c7bcf9c6bb7a2676e35ede2d1f71b00a9d3db8d8588e21dc6c58a4848e3643df9dc71b2e65af038d9dc55025c6d2579fb2e36afc247a71b671265f38dbb790c81c6e1e00388e37317827471baaa5f5338dde9ebdd5c6f4209b52e37c8e91ae71bf9139ceb8e072facd5c70915dfbee3875f78af71c524be3038e3523c559c720bb9b42e3938806f871cb63c95f38e687197fdc73b0ceadee3a105b57071d24d0d05b8ea10e5bd5c758043f1ce3afd5a6e071d9df0fd038edeedf0b9c7779b5d2ae3bff4a88e71e2182dbdb8f2202e1a9c799cb602ee3d15f32e871eaf69878b8f6a3e67cdc7be8cbab4e3e4116a4271f47857b938fb7906d7dc7e5d7385ae3f8071fae71fe9b49b139009e791ddc80fa1ff96e40d3bd1ea72095d2388b9061312cadc83be393aae423aaae5a7214bb71dc390bd595271c86a91d6cae43b4e92247220b3994d3911e4ad8f1c89ba20c62e454220b53722d42d716b9183ef5c05c8cf08db84e46e1f5a18723a6641b0391ee2f42b1c904ba5182e48940721c72481ac977b925cf1c48dc93ca9e4aee4a57efbe072565d3966b92d01cef8dc976ca7740e4c2d4563a72652a37d0b934795adf5c9b30e5a66e4e13997dd72747e472b393c33fccbdc9f167516ee500a790f9728455c6de39442fe0211ca31c69526e52116cce77294acf41f394c6b1f455ca741cd74ce5427f93ed72a57fead2b954e3c412dcab85a4634e564d9ed1272b6caa679b95d97c8501cafe6e9080e5881d9ffd72c8890322b96685162a9cb4648e906e5ac4236f072dab6be69396fa988b51cb8fd80acee5d13f00c572ed4f7877b97902ec6b9cbdb0a3d30e5f70b130873004eb513b9828effba1cc27cd5814e61d9d4c167313afdcb2b98c4b73869cc760ec850e644ec5551 (j - 5288) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 207, crossSinc (2816 + j.val) = sincEntry (2816 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 207, crossSinc (5288 + j.val) = sincEntry (5288 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 2816 ≤ j) (hi : j ≤ 3022) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 2816, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 5288 ≤ j) (hi : j ≤ 5494) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 5288, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 1177 ≤ i.val ∧ i.val ≤ 1294 then fourthRetainedRunPrice ⟨i.val - 1177, by omega⟩
  else if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then
    seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    rw [crossPrice, dite_eq_right (show ¬ (1177 ≤ i.val ∧ i.val ≤ 1294) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := seventhRetainedRunPrice_eq ⟨i.val - 4110, by omega⟩
    have he : (⟨4110 + (i.val - 4110), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 1177 ≤ i.val at hl
    change i.val ≤ 1294 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := fourthRetainedRunPrice_eq ⟨i.val - 1177, by omega⟩
    have he : (⟨1177 + (i.val - 1177), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

private def sliceTotal (b : Fin 2) : ℕ :=
  #[664491550415950760469359307707828866351303646554,
    894917615817145130278680542497093894899326467142][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem crossRowSlice_checked (b : Fin 2) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 1559409166233095890748039850204922761250630113696 := by
  calc
    _ = ∑ b : Fin 2, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 2, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the seventh retained run against the fourth
in `total_eq_retainedRunBlocks`. -/
theorem seventhWithFourthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (4110, 4199)) (retainedRunCells (1177, 1294)) =
        1559409166233095890748039850204922761250630113696 := by
  have hrows : retainedRunCells (4110, 4199) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (1177, 1294) = crossColumns :=
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
    change 1177 ≤ j.val at hjlo
    change j.val ≤ 1294 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
