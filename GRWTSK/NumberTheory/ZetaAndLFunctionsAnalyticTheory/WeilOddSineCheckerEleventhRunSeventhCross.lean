/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerEleventhRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross

/-!
# Eleventh retained run against the seventh

These are the original global rows 13225 through 13271 and columns 4110 through 4199.
Reuse the certified seventh-run and eleventh-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [9026, 9161] and the sum window is [17336, 17471].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 13225 13271
private def crossColumns : Finset (Fin 32768) := Finset.Icc 4110 4199

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 9162 then
    (digit 0x75723241f33aba5df1415d5dd05f686eaf38611ff757c407a5e3abf5ce3c65d604bb99b0eb073f99d875860c710dbac43a6470dd62b632a2aeb1a70d874758f93a434bac8f534671d650f2c1b2eb2d14e30e7598d3a2a73acd8c1d331d67560bdc6eb3f26f10e75a1ca0c773ad1fdf1129d698a3c218eb50a25d4475aa7493933ad6498b439d6bab2bafaeb6182a71b75b2d0fc5abada6dd0501d6db84dfb0eb71c373c075badd1e32bade69ae561d6fb11b4aceb81608f4275c296e4143ae23c1d4fdd719510dcceb9055eda475c9fc4d163ae5e41f569d7363b1068eb9e9fabec75d10b6cef3ae960c0e3dd751c83566ebac3a112675d7c26c793aecb11912dd76bf14b26ebb9218f5775de1f8a28baefd449da5d784af7762ebc552c46c75e4211a843af2c980481d79bfc3900ebd0ca7b1f75e9c58891baf58ff4b89d7b1d169bcebdb85abc975ef0b56433af826eb091d7c6293fc8ebe5817d3475f3f11cd9bafa8db2cc5d7d8fe4f58ebeebb455475f8758d443afcc3a7765d7ea4b8c0eebf7308a0475fc977079bafec8308a1d7fa0c4a50ebfedf01aa760055a7cb3b009ac1c19d8083c408eec05c493d67603af2d31bb023adb341d814d78866ec0bdf59d27606a313943b03a809781d81fda9fb6ec112d9f2a7609308709bb04e1e5c39d82942698eec15ade21e760b56cd12bb05e816085d8310c2f1aec195ed415760d1544ce3b06ba4d0d9d83735a056ec1c3f59f9760e6b67283b07584a859d83bbcd4c6ec1e4e8c86760f58c6ffbb07c1db215d83ea04c04ec1f8bb895760fdd11493b07f6d89fdd83fdeee34ec1ff65f53760ff80d283b07f729da9d83f780c64ec1f8e3669760fa99c04bb07c2c2cf5d83d6b60d0ec1e532820760ef1b997bb0759a4a59d839b90f0eec1c45536d760dd07bf33b06bbddb0dd83461a416ec19650bfa760c461380bb05e989711d82d66163aec15b2da19 (j - 9026) : ℤ) - 1000000000000
  else
    (digit 0x739304d48c39c9a5fea59ce4e5a1114e727c8d0d4739435a89bb9ca4521d6dce5388e19ce72a7b0b0273959c29a839caff11bd1ce598dc622e72d9824af739738045d39cbd3a3011ce6067568ce7311f631c739908d804b9ccc2a39d5ce6813f55ee7350ff0ea739b0e369fb9cdcbdaeb9ce7091d036e73968de51739d47a500b9ceef09b0dce79dee024e73e292153739fb49ae739d02bea2cdce83f8ea32e7434f95fd73a254832039d182302b9ce8edd7fece748dafeb073a526bbacb9d2f189161ce9a89ffeee74eca046a73a82a95e5b9d4799c071cea6fb968ce7551b371973ab5f56a739d61a09e11ceb42f3e84e75bcd0df873aec4367eb9d7d26d641cec221c1b2e762dde7e773b25861d9b9d9a25b475ced0cfb9dce76a4c0bd973b61af93b39db896252dcee0359188e77215a93673ba0b1170b9dd870b7b1cef04f84d4e77a38d85773be27b3cb39df9ad9fe1cf0119a26ce782b39af273c26fde5db9e1c44b821cf128fcc76e78b83dca273c6e2843a39e402d834dcf24adb99ee794a7735f73cb7e8db439e655f2ee5cf376ef61ce79e1c200e73d042d8a639e8bd09519cf4acee4d2e7a7df8f0a73d52e38b839eb3783f25cf5ec8c066e7b1ef58b973da3f77a939edc4c6789cf73579c78e7bc49021f73df75559cb9f0642fc8dcf887666d2e7c6e9fd8173e4ce896839f3151a2b1cf9e1fe8ace7d1cfab0173ea49c0e6b9f5d6db729cfb44ec7f0e7dcf7594573efe5a14839f8a8c529dcfcafd8892e7e85e462473f5a0c76bb9fb8a24bc9cfe2268deae7f4019f5173fb79c83439fe7a43a39cff9c41c12e7ffde830e74016f30e33a017867931d011d05958e80bf200e574077f8774ba0483d2a75d02a454faee818391a61740da94afdba079bc3951d0431cee22e824b0c3cc7413eaf408ba0abf75d85d05c510a64e83155e4ee741a42f4fa3a0dee21e61d075db6248e83e2559d6 (j - 17336) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 136, crossSinc (9026 + j.val) = sincEntry (9026 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 136, crossSinc (17336 + j.val) = sincEntry (17336 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 9026 ≤ j) (hi : j ≤ 9161) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 9026, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 17336 ≤ j) (hi : j ≤ 17471) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 17336, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else if h : 13225 ≤ i.val ∧ i.val ≤ 13271 then
    eleventhRetainedRunPrice ⟨i.val - 13225, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 13225 ≤ i.val at hl
    change i.val ≤ 13271 at hu
    rw [crossPrice, dite_eq_right (show ¬ (4110 ≤ i.val ∧ i.val ≤ 4199) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := eleventhRetainedRunPrice_eq ⟨i.val - 13225, by omega⟩
    have he : (⟨13225 + (i.val - 13225), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 4110 ≤ i.val at hl
    change i.val ≤ 4199 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := seventhRetainedRunPrice_eq ⟨i.val - 4110, by omega⟩
    have he : (⟨4110 + (i.val - 4110), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 213257600085867618180032305852960293645203239444 := by
  decide +kernel

/-- The exact lower cross contribution of the eleventh retained run against the seventh
in `total_eq_retainedRunBlocks`. -/
theorem eleventhWithSeventhRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (13225, 13271)) (retainedRunCells (4110, 4199)) =
        213257600085867618180032305852960293645203239444 := by
  have hrows : retainedRunCells (13225, 13271) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (4110, 4199) = crossColumns :=
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
    change 4110 ≤ j.val at hjlo
    change j.val ≤ 4199 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
