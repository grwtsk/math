/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerThirteenthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Thirteenth retained run against the second

These are the original global rows 20236 through 20275 and columns 284 through 479.
Reuse the certified prices for both runs. Signed sinc entries are stored as
base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [19757, 19991] and the sum window is [20521, 20755].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 20236 20275
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 19992 then
    (digit 0x39ea6d4bccdcf4fb259eee7a601d1c873d217929039e8984b9a9cf412fe9f8e79ed3801a73ce89eb7a39e6d6402a9cf3346088ae797f1e8be73cb22da7cb9e5279bf19cf25f83fc8e7915ecbfc73c7e33d5239e38ccc979cf1949f330e78b1bd6ac73c4cbe7f039e2063ad99cf0d3e5eb4e7852aa1c673c1dda44f39e0944a705cf01d895f4e77f8cb1ff73bf19323839df3759f6dcef71b8368e77a43775f73bc7f471439ddefc2d11ceed09e7aee775504ceb73ba108dbbb9dcbdd9171cee3a658c8e770b4784573b7cda64e39dba1eb7d5cedaf34180e76c71295b73b5b72606b9da9c43419ced2f2e0bee768877a1c73b3cd971539d9ad2417dcecba748f8e764f86e2973b211787c39d8d4cc199cec5125face761c4f29673b0833defb9d81373b39cebf35dcdae75eedddae73af234fb5b9d7694d999ceba134a9ce75c73eeb473adf20a8cb9d6d686b81ceb5ac04b2e75a57cdba73acefbf9239d65b46279ceb2013832e7589a0b6d73ac1cb42eb9d5f7ad241ceaf13e334e7573b20f373ab79220039d5abd7029ceace4d488e7563b6fc973ab0536ce39d577d92a5ceab74ab86e7559b41a573aac1147a39d55bc30edceaac3d7dce7555ac86973aaacd0f7b9d5579e2b9ceaad29970e7557a1e0b73aac87644b9d56b6e005ceaba1004ae755f9449273ab14026639d59730105cead2eec88e756d8261173ab8f6767b9d5dadbe21ceaf7c0e66e7581694ab73ac3a8b5bb9d63663011ceb287e64ce759b44a9b73ad15486539d6a9b0ffdceb651c4e4e75bb0ea4273ae1f6cba39d734ab7e1cebad8cb4ce75e0bfe3e73af58bab439d7d7322d1cec01beb3ae760c4f98573b0c0e8da39d8911ed81cec619e748e763db378373b257a1f639d962456cdceccd15332e7674dfc4573b41c8523b9da4a74065ced440943ce76b1c74a173b60f25ec39db4972f81cedc65e184e76f45b66d73b82f0c5db9dc5f04dc5cee53f4478e773c8c0b173ba7bb52939dd8ae6a21ceeeca994ee778a47bed73bcf491c139decccf9d9cef9058f8ae77dd7ba5673bf99087c39e02471999cf03edaa86e78361382173c26874bbb9e19178eadcf0f804216e7893f9bd273c5622711b9e3138c841cf1bba8326e78f71769173c885656e39e4aa4e0c1cf2899706ee795f5448273cbd16b4939e65559f45cf3619e32ee79cc96d2573cf4569d5b9e81447915cf44388bf0e7a3ec43b973d2e0883439e9e6a9345cf52f1f35ce7ab5c07a573d6a1e3a4b9ebcc0c469cf62427b0ce7b316e4e773da888fc2b9edc3f9655cf72265e76e7bb1af48673de9396bbb9efcdf47e9cf8299b3d0e7c3663d0c73e2c1f98eb9f1e97cf01cf93986d14e7cbf6b2ff73e712b04839f4160da79cfa51e58f4e7d4ca396373eb84aa44b9f6531d425cfb72723e4e7dddea24373f016ce7439f8a01e305cfc9ae5934e7e731af3573f4c7fb9f39fafc7ed5dcfdcaf6420e7f0c111ec73f99708ae39fd67a9b11cff02590f8e7fa8a6cc873fe82c4f1b9ffe1057ddd0040c0e42e8048b536f740389f8713a0267f55bdd0185dedf6e80ec14b5f7408ab6434ba04fbd8f55d02d1626b0e81929cc96740de5c294ba079c0ca7dd0422f94eee823c24228741337c78d3a0a47e9aadd057a4fc5ce82e880ae97418a0210cba0cfec63b5d06d71091ae839787a14 (j - 19757) : ℤ) - 1000000000000
  else
    (digit 0x39df09d5861cef64a7fa8e77a28894273bc989b3a39de0fd2dadceeea59822e7766bbc3973bac50fd139dd2b7e7d5cee7ae9d88e77306218f73b91d3addb9dc5d13a65cee1675ecee76ff89b4873b7a18aa6b9dba4c81b9cedbd17f1ee76d43f57c73b6526275b9db02cc1f9ced6ee7578e76ae8e61b73b5301a7bb9da774a655ced2bf8c4ee768e80cc573b43affb939da026806dcecf45e128e76741f29c73b37353edb9d9a444789cecc82645ae765f70a1e73b2d94d8139d95cf983dceca75d8c8e76507af0a73b26d1778b9d92c9b3d1cec920d3ace76474264473b22ed169b9d91338009cec883bc70e7643c9dc473b21e8f7139d910d86cdcec89ecc86e764612c8673b23c5a2cb9d9257f60dcec9720f66e764e1d28173b2882eb739d95129f99cecafd6274e765be78a873b301feaa39d993cf935cecd407514e766f6f0ec73b3a9b01e39d9ed61cb1ced03ac8b0e7688af64573b47f1db0b9da5dcc809ced3ebb0d4e76a7a2cc173b582168d39dae4f5dc5ced8525358e76cc4219973b6b25e77b9db82be545cedd6da890e76f684b4a73b80fadda39dc3700b35cee33c7b8ce7726609b973b999b1d5b9dd0192229cee9bd6a58e775bca65473bb500c56b9dde242331cef0eee660e7796b544173bd32542a39ded8dae99cef8cf34bae77d71308c73bf401517b9dfe520cb1cf015c6ea8e781cd426173c178cffd39e106d2ebdcf0a9481f8e7867e7b4573c3dbfaedb9e23daafe9cf14753192e78b83b75873c669015239e3895d659cf1efc15fee790dbbd9e73c91f440f39e4e999449cf2a269dfae79685404a73cbfe19a8b9e65e08961cf35f20f1ae79c7edd0c73cf04ce6fb9e7e6503e1cf425b8672e7a2c71d6f73d232a4a939e98210225cf4f5ff94ee7a95c772b73d586d4c0b9eb30e340dcf5cfc35eee7b03d4c8f73d9008d7739ecf25fc89cf6b2ce44ae7b767ece173dc9ef416b9eec61733dcf79ee86eee7beda94c873e06124a839f0ab96631cf893d7bd0e7c6936ebe73e446322b39f2a265ba1cf9915fd34e7ce90938273e84d26d1b9f4aa093c5cfa974229ce7d6d00a8f73ec750439b9f6c200ab5cfba53e1bee7df4fca9a73f0bcc3afb9f8e9c7a85cfcbb10f82e7e80dba1373f523566cb9fb20d5d25cfdd87610ce7f107afa773f9a7a5da39fd669ee95cfefd26cc8e7fa3b72cd73fe4893d739ffba92f15d0028dab88e803a6bc4f740304fafdba021c1e545d015b47998e80d4736da7407dbaeed3a048aaa089d0294217f0e8171a7f95740ccb7c94ba07059bb51d03d31ad56e8211e26b87411d32a7cba098c55d79d0517e479ce82b4fb0247416f179173a0c1e37ec9d06622dcd2e835ac9401741c25230f3a0eba9e969d07b1a4c88e840323f6274216cdd973a1160e3c69d0905f611ae84ade14e67426c758bd3a14105ee55d0a5ecd0f2e855ad6d60742c333fbe3a16c864fd5d0bbbd3fdae8609d987c7431af3958ba198848e5dd0d1cb405ae86babdd6e743739e8263a1c4f5b6c9d0e8115508e876d57ba0743cd1eaeeba1f1ceb82dd0fe89f1e8e88217ab5d744275dd023a21f046689d1152f7dd0e88d6f9e8674482456923a24c8b7d95d12bfc53cee898da8144744ddbed09ba27a58a38dd142eac486e8a4557abb74539b33683a2a8606c11d159f517aae8afddadbf (j - 20521) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 235, crossSinc (19757 + j.val) = sincEntry (19757 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 235, crossSinc (20521 + j.val) = sincEntry (20521 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 19757 ≤ j) (hi : j ≤ 19991) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 19757, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 20521 ≤ j) (hi : j ≤ 20755) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 20521, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 20236 ≤ i.val ∧ i.val ≤ 20275 then
    thirteenthRetainedRunPrice ⟨i.val - 20236, by omega⟩
  else secondRetainedRunPrice i

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := thirteenthRetainedRunPrice_eq ⟨i.val - 20236, by omega⟩
    have he : (⟨20236 + (i.val - 20236), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 479 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_right (show ¬ (20236 ≤ i.val ∧ i.val ≤ 20275) by omega)]
    exact secondRetainedRunPrice_eq hi

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 73007990266957031066558221914382367605436786402 := by
  decide +kernel

/-- The exact lower cross contribution of the thirteenth retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem thirteenthWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (20236, 20275)) (retainedRunCells (284, 479)) =
        73007990266957031066558221914382367605436786402 := by
  have hrows : retainedRunCells (20236, 20275) = crossRows :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  have hcolumns : retainedRunCells (284, 479) = crossColumns :=
    retainedRunCells_eq_Icc (by decide) (by decide)
  rw [hrows, hcolumns]
  refine Eq.trans ?_ cross_cached
  symm
  apply triangleBlock_congr
  · exact crossPrice_eq
  · intro i hi j hj _
    have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    have ⟨hjlo, hjhi⟩ := Finset.mem_Icc.mp hj
    change 20236 ≤ i.val at hl
    change i.val ≤ 20275 at hu
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
