/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerNinthRunFirstCross
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSecondRunData

/-!
# Ninth retained run against the second

These are the original global rows 6208 through 6270 and columns 284 through 479.
Reuse the certified prices for both runs. Signed sinc entries are stored as
base-2^41 digits in increasing index order, starting
with the least significant digit. Signed sinc digits store the value plus
10^12. The difference window is [5729, 5986] and the sum window is [6493, 6750].
The tables were computed from `scripts/verify_odd_three_sine_hs.py` at blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`. Every used entry is checked against
the existing literal checker. The kernel evaluates the subtotal with the
original global triangle weights.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def crossRows : Finset (Fin 32768) := Finset.Icc 6208 6270
private def crossColumns : Finset (Fin 32768) := secondRetainedRunCells

private def digit (packed j : ℕ) : ℕ :=
  (packed >>> (41 * j)) % 2199023255552

private def crossSinc (j : ℕ) : ℤ :=
  if j < 5987 then
    (digit 0x1d5271fa1e8ea9cf30b78755327f90c3aabe997b75d571ec57ceeac23f336c7565c0a7ddbab52f16cf1d5bbe060dceae71ca9ea757820d1333abe57bd2b9d604e8f75ceb0b82126c758a43ca043ac76136f11d64cf389f8eb2f662b2d759c24f4f7bad049373f9d693edc064eb52bfcf8875adbfc38cbad90d78c91d6d9c5800eeb7585fa4675bf0fb743bae1abbe64dd71e68f0b2eb97afc7ec75d01062c33aea21d3a19d761c680e4ebb93478f875e0bd6af73af26d8d545d7a3ccea92ebda0b742575f112882fbafa8cca279d7e46b3762ebfa2c489476010b87373b027d73251d82390c512ec198eaffb7610a44a64bb0a3d7c3fdd8612d49b2ec382a90c4761fd8caad3b11cae4da5d89d30d7deec55f8001c762ea518a9bb1923b84a5d8d78be2caec72ef4406763d055d9d3b20460e59dd9102f4250ec8f08d54e764af5dc6f3b27300bc55d9470c36d2ecaa3d6184765872f2a63b2ddfe2b6dd97c146d10ecc485cce176657919573b3453d33d1d9af3a01deecdddb3418767204e6123b3a8a2bc11d9e06f85c6ecf636ee2d767e130bc43b408149765da0fa80086ed0d928e287689a05b943b463798c8dda3cd6f474ed23e7e4ca7694a9c5bb3b4bab95c79da67f061c8ed3931022d769f2c5a503b50dbcc891da90e8c9caed4d68375376a9254a0f3b55c6d98f5dab7b531d6ed608817a676b291e7193b5a6b6a25ddadc4b264aed728b7a6f76bb6fa5a8bb5ec83cbb1dafea0bd4eed836d7c3276c3bc1cc2bb62dc21375db1eac9982ed9329800176cb7506da3b66a5f94eddb3c65ec82eda1bb30b876d298426fbb6a24b8cf1db57c47944edaf1e822e76d923d2a33b6d5765e79db70c09666edbb4fb24e76df15dfc33b703d196f1db8753303aedc64b4a2576e46cb7ccbb72d4ff23ddb9b75cad0edd00e1ed276e926cee5bb751e55e6ddbad2283baedd895527576ed42bfcc3b77186ff2ddbbc5413beeddfde54f576f0bf4c3ebb78c2b30dddbc905d062ede5e6e4ca76f39b5d57bb7a1c98b79dbd333ad4aedeaad0fa176f5d603e0bb7b25ae50ddbdada3d6cedee2f32f876f76e789dbb7bdd953f9dbdff6b428edf06bfc9f76f8641c89bb7c44030d5dbe286e634edf1626b2b76f8b679103b7c58c180ddbe2894a60edf111ce5376f86540363b7c1baeb2ddbdffcfa26edef79c73676f7704cbd3b7b8cbd1d9dbdae1b22aedec9a488f76f5d7a2393b7aabf3a71dbd337d27cede87396d976f39b6d20bb79796da6ddbc9005ec0ede306485676f0bc02cdbb77f55ae65dbbc3cfe1ceddc53450a76ed39e177bb761fff9b9dbaceffb14edd45bc69b76e915b022bb73f9b4601db9b1c432cedcb21581f76e4503e83bb7182e6221db86c56660edc0a5d5db76deea84db3b6ebc160f9db6fef9686edb4eb6ce276d8e5a3c53b6ba5d97e1db569fa674eda7f49aae76d242e400bb6840d9cb9db3adb0904ed99c42c9676cb03b62a3b648dd43cddb1ca7cff4ed8a5d3f3d76c329b26f3b608d99d3ddafc0caa98ed79c33de376bab69835bb5c410f22ddad910e46aed67f9e1aa76b1ac4dba3b57a92c1b5dab3bc636eed550530c376a80cdfa5bb52c6fbd59da8c17a66ced40e97d85769dda8095bb4d9b9c561da622bc30eed2bab657a76931788a0bb48283e4c1da360263d0ed154fd04f7687c674cabb426e24cc9da07a5c5c8ecfddbeeb3767be9e675bb3c6ea507dd9d720b654ece555392c766f84a2c53b362b25fb9d9a47e9092eccbc16ece76629991fabb2fa5201f1d96fcb3ac2ecb12693e676552bbec9bb28de1d0b5d939132380ec958af09676473e559e3b21d7b7201d900633edeec78f50f57 (j - 5729) : ℤ) - 1000000000000
  else
    (digit 0x1d729d879d2eb9be9c60175d16e5cb3baea713ea0dd76144d9d4ebb774f45875df1e3a593af13e34821d79753e12aebd24fb4bd75ec750187baf7de30125d7cbf7a2a4ebec731b3e75f96f41a73afe4f7bbcdd7ff228790ec05d8679a760609a0303b04906d119d830c75344ec1e7906fe761240d9893b0a9f65321d860d92676ec364e95b6761e11c1dd3b107ad13d5d88f4b8298ec4d52e0d676297945eebb16212ab79d8bc124d1cec637fe7d17634746be33b1b90f7ef9d8e721d282ec78cfde0c763f005409bb20c8cc609d9106ec978ec8d3d2c5b76491a39983b25c74911dd937ee55c4eca0c2727d7652bf7367bb2a8b1cf19d95d960b14ecb35a8881765bed74a3bb2f13052ddd9815befc8ecc500801e7664a1cd78bb335dcd899d9a3367f82ecd5afa604766cda2bb63b376a50addd9c31cadbcece56383187674945b6e3b3b3778775d9e105e81eecf417dda5767bce47883b3ec43e405d9fcea18d4ed01c8ba7b768285fa53bb420fab27dda16c1a8aeed0e725e027688b99e0bbb4518d8531da2e858134ed1a114d3c768e677d573b47deef2c5da442f0e8eed24a24eb476938e03c0bb4a61299e1da57b84152ed2e226b6576982bbe223b4c9ed2481da691b902ced368eef8a769c3f5b11bb4e9744b35da7853f972ed3de56b5c769fc7ab39bb5049ed7f5da855d0480ed4423b3c876a2c3a1b33b51b64a8c5da9032c30ced4947e30976a5325451bb52dbeb211da98d1d246ed4d50593c76a712fbea3b53ba700d1da9f375bdced503bbcda76a864f48cbb54518bc3ddaa36116d8ed5208fb2476a927bdba3b54a10277ddaa54d4864ed52b7487e76a95afa8fbb54a8aa2d9daa4fac45ced524620b876a8fe71e6bb54686acbddaa268edcced50b5474476a8120e70bb53e03e275da9d97b742ed4e04c75d76a695dec4bb531030099da9687a2f4ed4a34f41776a48a1569bb51f85e33dda8d39c2e0ed4546686676a1ef08d3bb5098f85cdda81afb89ced3f3a0707769ec533593b4ef2402adda73ebb52eed3810fa62769b0d331ebb4d0489289da63f078a4ed2fccb4557696c7c9fcbb4ad038b55da51c1518aed266eedec7691f5dd59bb4855c5f2dda3d621c52ed1bf9a70b768c9875f9bb4595b9aa9da26d7427eed106f26047686b0bfcabb4290ae341da0e25b9b2ed03d1f71a76804009a13b3f474f50dd9f35302aaecf624ebf5767947c4f1bb3bba5a091d9d6652800ece76b1b047671c9857fbb37ea9c811d9b762bcd4ecd7a7deca7669c70100bb33d8f5cadd99652db56ecc6ded5247661420ebcbb2f8655b45d9733d232aecb513de6c76583ca7213b2af3bc901d94e29b7a4eca24b1ca2764eb8e34ebb26223afb1d927213df2ec8e88f26f7644b8fc9b3b2112f19d1d8fe2cdb1aec79d20227763a3f4c103b1bc710e61d8d35631d4ec642b2caf762f4e49ddbb163fd8c7dd8a6a76050ec4d99905f7623e88cc4bb107e9868dd8782afdd0ec362287cc761810c97e3b0a84add81d847ec1832ec1dcba881760bc9d215bb045385b81d815f6314aec049ac1b375ff16953e3afdec9aea1d7e2553c2cebea95dadb75f1fa1da0baf75176329d7ad159a52ebcfc3324875e4779122baf083addc9d7764418a8ebb4293ba275d69230243ae984e5589d73dedec7ceb97ce9e5e75c84d54b93ae256ccd71d70420b058eb7aba342675b9ac71dcbadafb20e15d6c8ea60b2eb5cf3073075aab3129a3ad373a9eedd68c595894eb3e80508f759b64d9333acbc23bf5dd64e7c4e24eb1f697673758bc57e40bac3e8b5fadd60f624f14eaffb60a5f757bd8cfc93abbe9019d5d5cf1abd00eadf6dc751 (j - 6493) : ℤ) - 1000000000000

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossDiff_eq_all :
    ∀ j : Fin 258, crossSinc (5729 + j.val) = sincEntry (5729 + j.val) := by
  decide +kernel

set_option maxRecDepth 32768 in
set_option maxHeartbeats 6000000 in
private theorem crossSum_eq_all :
    ∀ j : Fin 258, crossSinc (6493 + j.val) = sincEntry (6493 + j.val) := by
  decide +kernel

private theorem crossDiff_eq (j : ℕ) (lo : 5729 ≤ j) (hi : j ≤ 5986) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossDiff_eq_all ⟨j - 5729, by omega⟩

private theorem crossSum_eq (j : ℕ) (lo : 6493 ≤ j) (hi : j ≤ 6750) :
    crossSinc j = sincEntry j := by
  simpa only [Nat.add_sub_of_le lo] using crossSum_eq_all ⟨j - 6493, by omega⟩

private def crossPrice (i : Fin 32768) : ℕ :=
  if h : 6208 ≤ i.val ∧ i.val ≤ 6270 then
    ninthRetainedRunPrice ⟨i.val - 6208, by omega⟩
  else secondRetainedRunPrice i

private theorem crossPrice_eq (i : Fin 32768) (hi : i ∈ crossRows ∪ crossColumns) :
    crossPrice i = price literalRawDeficit i := by
  rcases Finset.mem_union.mp hi with hi | hi
  · have ⟨hl, hu⟩ := Finset.mem_Icc.mp hi
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    rw [crossPrice, dite_eq_left ⟨hl, hu⟩]
    have h := ninthRetainedRunPrice_eq ⟨i.val - 6208, by omega⟩
    have he : (⟨6208 + (i.val - 6208), by omega⟩ : Fin 32768) = i :=
      Fin.ext (Nat.add_sub_of_le hl)
    rw [he] at h
    exact h
  · have hu : i.val ≤ 479 := (Finset.mem_Icc.mp hi).2
    rw [crossPrice, dite_eq_right (show ¬ (6208 ≤ i.val ∧ i.val ≤ 6270) by omega)]
    exact secondRetainedRunPrice_eq hi

set_option maxRecDepth 32768 in
set_option maxHeartbeats 80000000 in
private theorem cross_cached :
    triangleBlock crossPrice crossSinc crossRows crossColumns = 277545830953185039559729713134965759843201562680 := by
  decide +kernel

/-- The exact lower cross contribution of the ninth retained run against the second
in `total_eq_retainedRunBlocks`. -/
theorem ninthWithSecondRetainedRunCross :
    triangleBlock (price literalRawDeficit) sincEntry
      (retainedRunCells (6208, 6270)) (retainedRunCells (284, 479)) =
        277545830953185039559729713134965759843201562680 := by
  have hrows : retainedRunCells (6208, 6270) = crossRows :=
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
    change 6208 ≤ i.val at hl
    change i.val ≤ 6270 at hu
    change 284 ≤ j.val at hjlo
    change j.val ≤ 479 at hjhi
    refine ⟨crossDiff_eq _ ?_ ?_, crossSum_eq _ (by omega) (by omega)⟩ <;>
      simp only [Nat.dist] <;> omega

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
