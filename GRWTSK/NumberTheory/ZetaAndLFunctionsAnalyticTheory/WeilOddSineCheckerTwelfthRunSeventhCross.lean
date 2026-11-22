/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTwelfthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSeventhRunFirstCross

/-!
# Twelfth retained run against the seventh

These are the original global rows 15678 through 15741 and columns 4110 through 4199.
Reuse the certified seventh-run and twelfth-run prices. The signed sinc
entries are stored as base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [11479, 11631] and the sum window is [19789, 19941].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 15678 15741
private def crossColumns : Finset (Fin 32768) := Finset.Icc 4110 4199

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 11632 then
    (digit 0xe96fedd67d74ba7560baba5e7958e09d2fdbb5140e983d37cd474c4636615ba636de0af9d3254b1958e99790d62074ce3ca5a83a6857b61e5d34c82d3cee9ab20ebec74d7fea575ba6d359cd3dd37358a31ee9be7ed23174e1a6f0e23a72065b399d399c2c086e9d1a5a89374eb33194e3a76c8baccdd3bfb77e72e9e4909ba274f4a0b6b63a7b7b886a5d3e52d4af0e9f73ae60774fded684c3a801d949e5d40a1ab216ea099fd1c2750716d50fba84adb3ee5d42e76606cea1bbab94f75101aac68ba892abf269d452372538ea2d8708dd7518f6a6ba3a8d9393a41d47553f4e2ea3f003f6d7521a885f7ba91e7139d5d497c3eb2cea5021effc752a2e16343a9624266bdd4b97e4d80ea60e7c29e7532852e32ba9a49b8d1dd4da7a8d1aea714d7599753aabaff2ba9e56bd40dd4fab0493aea814ede7775429f89373aa24a2c1ddd51a175144ea90e7eb19754a5eb40f3aa62304045d538a7a6d2eaa014a2ba7551e73759baa9e04a079d556597fbeeaaed126f975593727443aad8109f21d57325481aeabd19b4cc75604ca5c9bab10456849d58f03a424eacaeaa57d756725e32c3ab46949b25d5a9ed7224ead8406f95756dc11e6a3ab7af04db1d5c3dbcc3aeae517a7c675741ca5b23abad4b1055d5dcc80a2eeaf16d01c7757a36d6d33abdd97f145d5f4abc312eafd3d513075800e1fa4bac0bca7fd9d60b80cefeeb08858a4a7585a0fe713ac37d6cfc5d621414890eb1342c2d6758aee0257bac61b17c25d635e78e80eb1d7232ce758ff3cbab3ac894faa6dd6496e450ceb271135217594b10c4ebacaea70d3dd65bd0575eeb301d485b759924880a3acd1ade709d66d08f8e2eb38940f52759d4d14ddbacf25b0ca5d67d13a67aeb407351bf75a1299b4ebad10a5e7a1d68bec27b8eb47b8fcd875a4b916b13ad2c86789dd6998e8ff4eb4e6323d675a7fa956dbad45f55949d6a5f73f52eb5470007875aaed393e3ad5cebbe69d6b122e3beeb59ddf37f75ad90376bbad716379a9d6bb0e79c8eb5eab851975afe2d902bad8356fb31d6c3b74d74eb62d7654575b1e47b053ad92c15335d6cb1afafceb66606c34 (j - 11479) : ℤ) - 1000000000000
  else
    (digit 0xe764f86e2973b211787c39d8d4cc199cec5125face761c4f29673b0833defb9d81373b39cebf35dcdae75eedddae73af234fb5b9d7694d999ceba134a9ce75c73eeb473adf20a8cb9d6d686b81ceb5ac04b2e75a57cdba73acefbf9239d65b46279ceb2013832e7589a0b6d73ac1cb42eb9d5f7ad241ceaf13e334e7573b20f373ab79220039d5abd7029ceace4d488e7563b6fc973ab0536ce39d577d92a5ceab74ab86e7559b41a573aac1147a39d55bc30edceaac3d7dce7555ac86973aaacd0f7b9d5579e2b9ceaad29970e7557a1e0b73aac87644b9d56b6e005ceaba1004ae755f9449273ab14026639d59730105cead2eec88e756d8261173ab8f6767b9d5dadbe21ceaf7c0e66e7581694ab73ac3a8b5bb9d63663011ceb287e64ce759b44a9b73ad15486539d6a9b0ffdceb651c4e4e75bb0ea4273ae1f6cba39d734ab7e1cebad8cb4ce75e0bfe3e73af58bab439d7d7322d1cec01beb3ae760c4f98573b0c0e8da39d8911ed81cec619e748e763db378373b257a1f639d962456cdceccd15332e7674dfc4573b41c8523b9da4a74065ced440943ce76b1c74a173b60f25ec39db4972f81cedc65e184e76f45b66d73b82f0c5db9dc5f04dc5cee53f4478e773c8c0b173ba7bb52939dd8ae6a21ceeeca994ee778a47bed73bcf491c139decccf9d9cef9058f8ae77dd7ba5673bf99087c39e02471999cf03edaa86e78361382173c26874bbb9e19178eadcf0f804216e7893f9bd273c5622711b9e3138c841cf1bba8326e78f71769173c885656e39e4aa4e0c1cf2899706ee795f5448273cbd16b4939e65559f45cf3619e32ee79cc96d2573cf4569d5b9e81447915cf44388bf0e7a3ec43b973d2e0883439e9e6a9345cf52f1f35ce7ab5c07a573d6a1e3a4b9ebcc0c469cf62427b0ce7b316e4e773da888fc2b9edc3f9655cf72265e76e7bb1af48673de9396bbb9efcdf47e9cf8299b3d0e7c3663d0c73e2c1f98eb9f1e97cf01cf93986d14e7cbf6b2ff73e712b04839f4160da79cfa51e58f4e7d4ca396373eb84aa44b9f6531d425cfb72723e4e7dddea24373f016ce7439f8a01e305cfc9ae5934e7e731af35 (j - 19789) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 153, crossSinc (11479 + j.val) = sincEntry (11479 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 153, crossSinc (19789 + j.val) = sincEntry (19789 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 11479 ≤ j) (hi : j ≤ 11631) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 11479, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 19789 ≤ j) (hi : j ≤ 19941) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 19789, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 4110 ≤ i.val ∧ i.val ≤ 4199 then seventhRetainedRunPrice ⟨i.val - 4110, by omega⟩
  else if h : 15678 ≤ i.val ∧ i.val ≤ 15741 then
    twelfthRetainedRunPrice ⟨i.val - 15678, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    rw [crossPrice, dite_eq_right (show ¬ (4110 ≤ i.val ∧ i.val ≤ 4199) by omega),
      dite_eq_left ⟨hl, hu⟩]
    have h := twelfthRetainedRunPrice_eq ⟨i.val - 15678, by omega⟩
    have he : (⟨15678 + (i.val - 15678), by omega⟩ : Fin 32768) = i :=
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
    triangleBlock crossPrice crossSinc crossRows crossColumns = 383149119939508030565896235846943876399659947786 := by
  decide +kernel

/-- The exact lower cross contribution of the twelfth retained run against the seventh
in `total_eq_retainedRunBlocks`. -/
theorem twelfthWithSeventhRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (15678, 15741)) (retainedRunCells (4110, 4199)) =
        383149119939508030565896235846943876399659947786 := by
  have hrows : retainedRunCells (15678, 15741) = crossRows :=
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
    change 15678 ≤ i.val at hl
    change i.val ≤ 15741 at hu
    change 4110 ≤ j.val at hjlo
    change j.val ≤ 4199 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
