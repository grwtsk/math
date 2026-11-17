/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross

/-!
# Eleventh retained run against the ninth

These are the original global rows 13225 through 13271 and columns 6208 through 6270.
Reuse the certified ninth-run and eleventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [6955, 7063] and the sum window is [19434, 19542].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := Finset.Icc 6208 6270

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 7064 then
    (digit 0xe4b2605b177258489451392bb4995e9c95a483398e4ab864d807254fc8420392a1f145c9c94e20607ae4a5b4ab84725234e4f4b928cbe4731c9440c1296e4a0ed3642724ff28f253927bb71ae5c93c0e694ae49d316ce0724e3639fbb926ee138ddc93629ff52e49a828c15724d007b7e39266410e7dc93260e9f6e498e18dc9724c51c84039261d9fd4dc930b4b860e4984f28c4724c2a733bb9261ae59b9c931267316e498cbd069724c8aadb239265bf6a45c933b69b86e49a57b489724d7287163926e0d66d9c938652bcee49cf2c142724ee1ed003927a977869c93f31968ae4a09c9ef07250d8ab253928b5bb8e9c9481ac6cee4a554b2337253566b5db92a057336dc9531f2052e4ab1a1bfb72565ab5afb92b985e48dc9603c7fa4e4b1ebb9b17259e4f062392d6e2bb31c96f703a8ce4b9c8256c725df4601bb92f8679969c980b72094e4c2adb63472628828043931e0d55bdc9940d7ba6e4cc9a805b72679f49f5b9347cbbc99c9a96f10dae4d78c55e1726d38a6af3937599920dc9c0d72156e4e380c6f0727352fe15b93a76c93ddc9da406b58e4f07522617279ecef77b93dd397bb5c9f5a52b66e4fe667659728104f9dc39416f401a5ca12ff1d8ee50d5190ec7288997c5b394548edf05ca32477edce51d3300dd7290a8b67a39495fbd159ca53770edae52e071664729930c894394db2b9dadca76861144e53fc9e40572a22fb448395240e140dca9b6c4fcae552773f7e72aba35ceeb9570921355cac2211c00e5660ac2bd (j - 6955) : ℤ) - 1000000000000
  else
    (digit 0xea4914589a7525004341ba92b9b9475d4978ee14eea4ca225787526bb7fff3a93917f2fdd49e1e30aeea4fd24f7b752847cf7b3a9451c0eadd4a3f0f528ea52a400c67529a4c9b43a94fa4bef9d4a905a642ea55167b01752ad21274ba958af39e9d4ad5aead8ea57291791752bcf59693a9603914bdd4b0ef9986ea58db47be752c9c5a353a9664044a1d4b3c2b8e6ea5a2c94dc752d38dc873a96ac31f31d4b5d37fdeea5b1ca06d752da4b427ba96dc05ae9d4b72155d6ea5bab2436752ddfc103ba96f370f99d4b7abd2deea5bd7f258752de9ef393a96f26b689d4b772bfd2ea5ba2f55e752dc33719ba96d8f2ac1d4b676166cea5b0c3040752d6b9d303a96a70a905d4b4b6014cea5a13be6a752ce332413a965cbcfedd4b232dbeeea58b9d3b6752c2a13463a95fa19fa1d4aeed329eea56febc60752b406968ba957f379c9d4aae5c252ea54e2dcf7752a2669f93a94ec32129d4a61d788cea5266b2477528dc5662ba94412b93dd4a0957318ea4f8ad13d7527627c1cba937e4c5bdd49a4effceea4c4fe6c07525b93497ba92a3c2a11d4934b9c48ea48b6b78c7523e0e5293a91b1c2889d48b8cf57eea44c020057521d9fef33a90a8861add48314e76cea406d13fd751fa4fec8ba8f884d359d479e57c92ea3bbe9e7f751d426d103a8e515d7bdd47000ed86ea36b5e189751ab2dda3ba8d0402461d46569a05aea315415cd7517f6efab3a8ba08c8f5d45a222814ea2b9a8a5e75150f4d773a8a2752e19d44e2d440cea258aa464 (j - 19434) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 109, crossSinc (6955 + j.val) = sincEntry (6955 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 109, crossSinc (19434 + j.val) = sincEntry (19434 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 6955 ≤ j) (hi : j ≤ 7063) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 6955, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 19434 ≤ j) (hi : j ≤ 19542) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 19434, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_right (show ¬ (6208 ≤ i.val ∧ i.val ≤ 6270) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 117873058507472693495579734670105570880477653974 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the ninth
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithNinthRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (6208, 6270)) =
        117873058507472693495579734670105570880477653974 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (6208, 6270) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    change 6208 ≤ j.val at hjlo
    change j.val ≤ 6270 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
