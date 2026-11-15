/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerFirstRun

/-!
# Third retained run against the first

These are the original global rows 666 through 853 and columns 0 through 96.
The row and column prices and the signed sinc indices 570 through 950 are
stored as base-2^41 digits in increasing index order, starting with the least
significant digit. The sinc digits store the original value plus 10^12. The
tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`; every used entry is checked against
the existing literal checker. Four disjoint slices of 47 rows allow the
kernel to check their exact subtotals using the original triangle weights.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 666 853
private def crossColumns : Finset (Fin 32768) := Finset.Icc 0 96

private def crossRowSlice (b : Fin 4) : Finset (Fin 32768) :=
  Finset.Icc ⟨666 + 47 * b.val, by omega⟩ ⟨666 + 47 * b.val + 46, by omega⟩

private theorem crossRowSlices_cover : Finset.univ.biUnion crossRowSlice = crossRows := by
  ext i
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, crossRows, crossRowSlice,
    Finset.mem_Icc, Fin.le_def]
  change (∃ b : Fin 4, 666 + 47 * b.val ≤ i.val ∧ i.val ≤ 666 + 47 * b.val + 46) ↔
    666 ≤ i.val ∧ i.val ≤ 853
  constructor
  · rintro ⟨b, hb, hc⟩
    omega
  · rintro ⟨hl, hu⟩
    let b : Fin 4 := ⟨(i.val - 666) / 47, by omega⟩
    refine ⟨b, ?_, ?_⟩ <;> dsimp [b] <;> omega

private theorem crossRowSlices_disjoint : Set.PairwiseDisjoint
    (↑(Finset.univ : Finset (Fin 4))) crossRowSlice := by
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

/-- The clipped prices on global indices 666 through 853, indexed from 666. -/
def thirdRetainedRunPrice (i : Fin 188) : ℕ :=
  digit 0x1496a0962829fc967e0424b3738d5a1a2243f58f10ec3c5d470a5f03722c4621973f5e2388a3557c51ffa1c8a1c11d29fe5ca49d1988f90655bac4982e2e6a1efc9b18f63bfb1a8d59135ff1a71a30103e93c33f288849fc5c2e1d410b607425408c3337aca6494fe64fb9a63d70a1e753e69c8ad36a55cfe54e655b6ef11ff2c59d4b02296e92590854bd133d276e6162abe1adb217d434e159bc1fc6e70d34a3733546c4d6a39cbb774ac0302dc5e34af498e7f791a6b276722972c6bc6df23e025ece3aa1a9efb1259c3487fcc9d93c3410197adf6210b356c6130c930989748859317eb8452de8c0eba31456ca70f1c738b177a901508766d48f18e3912e4e8feb032f2aaf3abb7c96fdfefde4cc4b8d87ad2688bb6e5e93742e7b9089d12ab11684f3b48d4c4e7f349ab95b422cd3c1eaa2525bb9e7d1c07eb43fa92894349bf4b6cb126a8a6bd17fc0753db49890c2a28b3a3c9f53039fc060aa539d24dad58c1e97592af3ede01a358f42899e3ad175c76a5d6d3ccc7372b8ab574b055d42385d61af0a7838da57b37b193aabeda8c188f5ff3188db4b02fc02ebd582ca6cefbac1d91065b1610d67930db08aad78e458412149862c1b6148c4f60990fa44eb01f5de63557f30da035ebe83516f175e9f3c96f7aef28eb97dd744ddf2726b854f281135b2a50a04bad0996e9305639507753aaf417dc2475645d81406aa6a60df4f54d36c4e22ea361b9c9374ffe7c2d2ca71b63c02dd3167e130ae94d091f5794861f4ee3aa3239c3e8d5106143b75683aaf8e62f3f7efa277a9e8a8504b54ea5fb3dbee700fc9535b356533b21699580eb9d4cbfa398812e5a1fa567c72a2528f015939497abcc49070b4a79e41fcd4bd1d1dd02fa0c08d48e32552c5d0de182e227cb211a5910785a1b47867e107942425c4c648420bafb2178d023064ffad7f3d91cb723eae18dfc05edd0e7ca4af30ba47101779122a0213acb29b8549ce56349d3ee31df0e99d6f82be3aecb6b883c5019ad67f679e2d27b93bc9d671c95d6a0b27b459c8e58b2f4f663ec1393356b55e6906bee72e18a29fa5167d5fdbe5aaf6bbf50d1557290557ba995ddf98194386342cec9d285c67d54c43ca0bdb24f8459c2a91e6a718a908a84506b4442e7595b2ea0452d3cd6cf8ad58c6807794ee36433967e7c3649b81e9552bcd279890056646f81c51a2fd018db0816b3ca2dd94abf975f55051293c7970262a80787c11e016f7424855740e6da3dd7219f571c8198fe298d0c08f47905ebc921dee2a8df3452112dfb9d1fb083cc6bd3443852732c1617621f76ae094f0e08ed83775f9aaa412412a0ee60467adedc5 i.val

private def crossSinc (j : ℕ) : ℤ :=
  (digit 0x105516d3d75829f4affc3c14ad0b39560a2ee762e9050328b248827730ee02c13647ceeba0986c1c02f04ad26d9e5824b389dc7c11fd00658608cf2712ed044f6ba3bf821b64410141076a8ff62080821f56303e9fcd1d281e7b6f32b40ed1916cba0731c0aa49037ce1fad781b034ba60c0d0ddbb4c2064c15209d0308248c1b8174e2883940b2bb13c1a055734f6c9028bcfcaf18135c63a76c092b42c9ce0453397ceb0207f0d5c280f2e69b80c070cc88ad203403fb66d017c96a4bf80ac4b62af404d08213fa021e685ac500e9d20a298061fd346540276b6625e00edd7d575004fb5b236801405a1f4bffffb3da1dffaeb6453effae5622967fc26f2954bfd6bd043b5fe612f7a9cff05c9b98e7f6d4534a33fabb68c78dfd0572f554fe5628acb17f14941972bf7eee1e81dfb9bb3e150fd9f8d072f7eb86917e8bf506a77a65fa242912b8fce212a7c57e58d259a5bf2032c9ccdf89f0d0122fc1dd73e447df5def07c3eee4ebac8df70c9dc210fb52fa48ae7d8f9ed4f53ebac66394df56d1d0298fa819d0ff87d2622e4a0be85a24f755f3c0d00046f9a9e2a45b7cb97ce0363e4eeb7b01df207ff8130f8cbefd9497c49bf697ebe16ab5314df042f7cb44f7e7eb40f97bd6fe010ebddcebb3a1dee72089ac6f6fdfd27927b614d03d0bda1b6e6741ec95851818f60e4f8deb7ae8c1a8593d6517a1d35eaadc3cca0f5190e23f47a6d71fc0c3d2719070f5e8bb1e970af41e6642b279ef74e011bce7c6a0f49e6bdf29eaef31e86e5df796ee206173ca72c6227de4b6a0463cf219a0a52878ebd1ece63c6556a368de2a58b1da8f10fe5ad0e78665ddcc3bc225221bf9e08b19d360f00189b76177de9fe3a83bde2bfc8f5de67b624beeeeec203697754b2d1433b98f1b3945dc3bcccdbaedd7c54da976c8b232d2bb52b124ca9da07cd77fcecbccbc74a763aba4ed03b0b788a3c9d7cc2aa924eb9e0f0d3175aae8206dbac35677bd1d58959b06eea7bca1eb475195952e63a7a59d88b1d33fd293a6e95639540474862c3ca73a3091ece09d0f00ffb66e82d9a543673f17fda4cb9e60e476a1ce9a8f1ec6e7022c0b00735b73c974399adecaac9cc3fcfae44e5d42e9e2572c4284368394f13a6565c9e053be36e4a3e3628e722bbe17a23902bd547a5c77c9fb07ae3718cd115719256a62a38b5ec96ba9c5153a1da2e23d6e7b0870f813d9cab868b2735f5c2aaabbd82e107ccfe5e705d182225381b20325b1c03d7f4f3adfd0edf9a76fc1866d9e37cd475a3d9bdce4180a8de9917ffb66f2582232db77f39ad16dbb5d80d550dd60928b066e892f1c0637310925479b8ebcd8cd0dc27a5f0e26decb19d2236e2c7f2421b679b988cadaee9b54496d502e50aeb69488753e5b407d8324cd9b5bc989a6cb3ca3f58b6465d3ddb5b196be5ee6d87d5454046c17aac97fb5f85906b55af2702351ed745adc1c36b7bf5a04bb5aa8eb1ed5acb93b10a4d60f14b41f6ae0d0bea8355d1145a45aa4e01660cd4d9d586446a4662622a350ff3e8699a7e5eea62ed3a63d0de669acd103d934c349dd9e9a5819d212ad274988cb269144350e7b4772681ce9a321a7e918d14535a1a5687ce02353b42b9d46fd9a0c6aab460d018623a2a67e6ce7a7733e0c1b0ee19e7141bfdcceee6c832167523573823396a7515bd9c2209b0a8cdc7a2d9c066bf3c41ea334d61c431999d99f75aecca453bc53662e0a27c6330504abb599798a0290ccb84cdbae7659ec66e1fb2bda3acb11955fa8f13aca695f67d96511985d393277526a909932f56e206c95257484d6486a734c632322483801910846dd78c84003c49a63fe1a241f31ee2d8c8458eeb157476c732b3189f637818426c31ab810d8e18cd85ec77ac62ab3441462f4c886c9316a327d8c18ad0be670cc52851facc627451c067312a553e7c588d4cf344ec42bdc94f261f6da8eacb0ebfc997ad86e52b416cc3359fff46617c89595030af3bbacf985026bb214c245e8ab5d610584487bb07425adffd832d289bfcc15d027fd96091f13ce7b03acd59dd58165f8e762c07b38c8b86021f5c804b003457c9997fad722fb0bfa0d627a35fb5b72422afcda0a7dd57e0428a434bece24844b5f4d5a2ca52f99f13cdfd7c6aaee8eabe036cfcda5ee9035638af68496886d7ae195f78cbd40f7d6775e88d6a71d2f38bb1f89579696d00a8bc870c6ddf5e2cf7af70af0b581a9a97802c14d00bbd5f1281b5dd5898190aee031d298d76ae1e1f28bb2deb634f5d82aeaa85aeb7597cc69756c0c954eba8f3f67af5d34892a802e90e0070cd743d138b58b9fa3058935ceb3a6d682e6cd61442d7321b77d4ab96f0025b55ca6e343832e4b4bf8849721a7a69fcb8edef7c985c67a3da292e2c51b59097127dbb62ab8773dba195c2d9bb497ae0ff6f732d704a580fe6b80b28dc355bf8e9a4d5adf64b0fbd56f82695260b7a9ed73fd5bc9abc4baaddf5cf48a16ed0866a36b753c697c65b9fff6f062dcb3b3a8ed6e35233a10b708edd58b5b7c01389f2db9f412fdd6db0b07fccb6c99b25915b5dcce9e92dab9547f516d439bba1cb69604dd425b457d783bada02c393e96cee4f0eaeb66e5fa2575b332cff7fad97c5d92296cb13130ceb652de5e385b26f4bbe62d926ea94756c8ca5489eb643b231a95b20ed03cbad9032b7a896c810adae2b6410a68c65b212d41bbad911d9b9c56c8ebdb160b64b146f40 (j - 570) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
private theorem columnPrice_eq_all : ∀ j : Fin 97, columnPrice j = firstRetainedRunPrice j := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem thirdRetainedRunPrice_eq_all :
    ∀ i : Fin 188,
      thirdRetainedRunPrice i = price literalRawDeficit ⟨666 + i.val, by omega⟩ := by
  decide +kernel

/-- The offset price agrees with the literal clipped deficit at its global grid index. -/
theorem thirdRetainedRunPrice_eq (i : Fin 188) :
    thirdRetainedRunPrice i = price literalRawDeficit ⟨666 + i.val, by omega⟩ :=
  thirdRetainedRunPrice_eq_all i

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSinc_eq_all :
    ∀ j : Fin 381, crossSinc (570 + j.val) = sincEntry (570 + j.val) := by
  decide +kernel

private theorem crossSinc_eq (j : ℕ) (lo : 570 ≤ j) (hi : j ≤ 950) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSinc_eq_all ⟨j - 570, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : i.val < 97 then columnPrice ⟨i.val, h⟩
  else if h : 666 ≤ i.val ∧ i.val ≤ 853 then
    thirdRetainedRunPrice ⟨i.val - 666, by omega⟩
  else 0

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 666 ≤ i.val at hl
    change i.val ≤ 853 at hu
    rw [crossPrice, dite_eq_right (show ¬ i.val < 97 by omega), dite_eq_left ⟨hl, hu⟩]
    have h := thirdRetainedRunPrice_eq ⟨i.val - 666, by omega⟩
    have he : (⟨666 + (i.val - 666), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 96 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_left (show i.val < 97 by omega)]
    exact (columnPrice_eq_all _).trans (firstRetainedRunPrice_eq ⟨i.val, by omega⟩)

private def sliceTotal (b : Fin 4) : ℕ :=
  #[25428954269734932605740252412653817204102360328696,
    82643605693786262525326873738031688780737274988208,
    93704597849399511193216599829934247683376340730226,
    37002856938665960281277402849861704678118821541504][b.val]!

set_option maxRecDepth 32768 in
set_option maxHeartbeats 50000000 in
private theorem crossRowSlice_checked (b : Fin 4) :
    triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns = sliceTotal b := by
  fin_cases b <;> decide +kernel

private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 238780014751586666605561128830481458346334797588634 := by
  calc
    _ = ∑ b : Fin 4, triangleBlock crossPrice crossSinc (crossRowSlice b) crossColumns := by
      rw [← crossRowSlices_cover]
      simp only [triangleBlock]
      rw [Finset.sum_biUnion crossRowSlices_disjoint]
    _ = ∑ b : Fin 4, sliceTotal b := Finset.sum_congr rfl fun b _ => crossRowSlice_checked b
    _ = _ := by decide +kernel

/-- The exact lower cross contribution of the third retained run against the first
in `total_eq_retainedRunBlocks`. -/
theorem thirdWithFirstRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (666, 853)) (retainedRunCells (0, 96)) =
        238780014751586666605561128830481458346334797588634 := by
  have hrows : retainedRunCells (666, 853) = crossRows :=
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
    change 666 ≤ i.val at hl
    change i.val ≤ 853 at hu
    refine ⟨crossSinc_eq _ ?_ ?_, crossSinc_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
