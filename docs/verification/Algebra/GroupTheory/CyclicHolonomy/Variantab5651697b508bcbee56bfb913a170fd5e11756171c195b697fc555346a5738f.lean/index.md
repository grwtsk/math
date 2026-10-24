# Verification target: GRWTSK.Algebra.GroupTheory.CyclicHolonomy.Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleLength](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/cyclelength--1e324a33ef23d87d746c01fd.md) | 48 | `declaration-track:1e324a33ef23d87d746c01fd69c0fca84bf7fc9e3d056868e1f2964ee200bf88` |
| 2 | `theorem` | [cycleLength_pos](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/cyclelength-pos--634a995e61d901090e3fb8e3.md) | 54 | `result-track:634a995e61d901090e3fb8e3c55b703f34aa50f6269949e58024d5bf7e1a2f97` |
| 3 | `theorem` | [card_coverPhase](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/card-coverphase--0675065119480edc2ef24283.md) | 59 | `result-track:0675065119480edc2ef242833333f9066b3ae91b91622a16a66ebfb72f9e10e7` |
| 4 | `def` | [advance](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/advance--ed3466ffd6c973a37003cf46.md) | 67 | `declaration-track:ed3466ffd6c973a37003cf4671296c38e4cf191bd84e67a754f37ffe34f6c977` |
| 5 | `theorem` | [successor_iterate_eq_advance](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/successor-iterate-eq-advance--b6747488bf6587ca29c43aa3.md) | 72 | `result-track:b6747488bf6587ca29c43aa3eaeec79d946f09ba247d65ad29e2dd0a16f64dee` |
| 6 | `theorem` | [advance_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/advance-zero--cbeb2780c77cb2699ad65b20.md) | 82 | `result-track:cbeb2780c77cb2699ad65b20463535290bf1e7388f7da558712af5e3b9ae7f3a` |
| 7 | `theorem` | [advance_one](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/advance-one--3ec573f35bd73716119b7a76.md) | 87 | `result-track:3ec573f35bd73716119b7a764d4f0b89947580c0e8870aaf659971fe04c15c4d` |
| 8 | `theorem` | [advance_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/advance-succ--c045db00fc01400490a62449.md) | 92 | `result-track:c045db00fc01400490a624493cc6d350e8438fb9337214566ebc32c5ac5da4a5` |
| 9 | `theorem` | [advance_successor](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/advance-successor--4a2f9ed8f2a88775820d448c.md) | 98 | `result-track:4a2f9ed8f2a88775820d448cf82705caee627a14b0fbb40f32a4cfb04bb9227a` |
| 10 | `theorem` | [advance_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/advance-add--801ca53e65037131ce69d413.md) | 105 | `result-track:801ca53e65037131ce69d4132b330f3ce6a4af62d196065fd73d01dc5cb0f6d9` |
| 11 | `theorem` | [advance_cycle](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/advance-cycle--bd35bd78dda652867ae9745d.md) | 112 | `result-track:bd35bd78dda652867ae9745ddba2624ddd38aeddf7895eb709d6a4028e52977e` |
| 12 | `theorem` | [advance_mod_cycle](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/advance-mod-cycle--6293ef3435f17ee11c652182.md) | 121 | `result-track:6293ef3435f17ee11c652182b84d41f79340ded73eadc68b5bdf2e0b6ba1f53c` |
| 13 | `theorem` | [advance_half](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/advance-half--376d30752bb84e48f7b39fa3.md) | 128 | `result-track:376d30752bb84e48f7b39fa318f730e9a7ba934fea338deed93724aeed9b4816` |
| 14 | `theorem` | [forwardProduct_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/forwardproduct-add--41e6a1b4627b0b5bd3df044a.md) | 143 | `result-track:41e6a1b4627b0b5bd3df044a738bc878d01dd8af525d610d71d6bcf32f7e8d33` |
| 15 | `theorem` | [forwardProduct_one](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/forwardproduct-one--317e42bce3c734f2791d2055.md) | 157 | `result-track:317e42bce3c734f2791d205531f2b980418028ef34a3682c266d652faad29907` |
| 16 | `def` | [monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/monodromy--3810ec9cd720381717fb6009.md) | 165 | `declaration-track:3810ec9cd720381717fb6009b4087f8a53fad57c762a9646251eba59ed4e4682` |
| 17 | `theorem` | [forwardProduct_cycle_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/forwardproduct-cycle-add--6718e614dee8619cc52168b5.md) | 175 | `result-track:6718e614dee8619cc52168b53580de2af0cdd3f6fa817333ce7590a6aafb162f` |
| 18 | `def` | [holonomyGroupAt](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/holonomygroupat--7c68a5a342d206948ba66c2f.md) | 184 | `declaration-track:7c68a5a342d206948ba66c2f26bf25cc533913744621aa460e71b5706f6ac224` |
| 19 | `theorem` | [mem_holonomyGroupAt_iff](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/mem-holonomygroupat-iff--422dafc177696cc603f2f7be.md) | 194 | `result-track:422dafc177696cc603f2f7be061f1361e7312b4cd8dc44c09ab505ee556a998e` |
| 20 | `def` | [StepsInSubgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/stepsinsubgroup--70c0c7e279f45566f66c835f.md) | 204 | `declaration-track:70c0c7e279f45566f66c835f2a554754ce4c39f5ffd3aa0be385fc3064765a85` |
| 21 | `theorem` | [forwardProduct_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/forwardproduct-mem-subgroup--4f978a42ccc5e3f268185d23.md) | 210 | `result-track:4f978a42ccc5e3f268185d23a364aae82a7eff9447aea190a6784c9779563d61` |
| 22 | `theorem` | [monodromy_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/monodromy-mem-subgroup--10b4a12da79e88effad1db8a.md) | 223 | `result-track:10b4a12da79e88effad1db8af3b21e19bffedf609f924b1282993aba9eb871e6` |
| 23 | `theorem` | [transport_intertwines_monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/transport-intertwines-monodromy--f73c5c367aecaab76e3cd161.md) | 231 | `result-track:f73c5c367aecaab76e3cd161c3ea479ab920eb67ed7cb2144ed39bbcfb9beb69` |
| 24 | `theorem` | [monodromy_advance_eq_conjugate](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/monodromy-advance-eq-conjugate--2934a7c4205e81842e2a92cc.md) | 257 | `result-track:2934a7c4205e81842e2a92ccd337fab30574886c88799030b636cb0fe39f49e6` |
| 25 | `theorem` | [monodromy_successor_eq_conjugate](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/monodromy-successor-eq-conjugate--e9ad828539c91d4de07cbc80.md) | 271 | `result-track:e9ad828539c91d4de07cbc80c0ff03019bac06e4ec43cd5e6691223f6279aec7` |
| 26 | `theorem` | [monodromy_successor_mem_of_mem_normalizer](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/monodromy-successor-mem-of-mem-normalizer--6d8e6a3876295524e23e00e2.md) | 286 | `result-track:6d8e6a3876295524e23e00e2580716c8a1cc9fa1f419836a3e167dbdd0e115c5` |
| 27 | `theorem` | [monodromy_successor_mem_of_normal](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/monodromy-successor-mem-of-normal--250b3b1973d0a0d3b970df88.md) | 305 | `result-track:250b3b1973d0a0d3b970df88a0f310290f1862fae40607ebdd611edce3addaec` |
| 28 | `def` | [ClosesAfterCircuit](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/closesaftercircuit--52fafc5b5c205bde7b708797.md) | 315 | `declaration-track:52fafc5b5c205bde7b7087976e0fb1cad8c0ef2e7a825f35d932a10a4d496a6e` |
| 29 | `theorem` | [closesAfterCircuit_iff_monodromy_fixed](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/closesaftercircuit-iff-monodromy-fixed--fc7012be06f91d10505b6ee4.md) | 320 | `result-track:fc7012be06f91d10505b6ee4b184ce78f66f7c3244eb227a9ea28c42f771789b` |
| 30 | `def` | [IsParallelSection](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/isparallelsection--4e37a09d5486d64c62f66b64.md) | 329 | `declaration-track:4e37a09d5486d64c62f66b64f64a3cb5a9d06da3aade19f5e97779b3f5998910` |
| 31 | `theorem` | [forwardProduct_apply_of_isParallelSection](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/forwardproduct-apply-of-isparallelsection--0c904e96a82e4ef8ee778f3c.md) | 334 | `result-track:0c904e96a82e4ef8ee778f3c02fe29d441f4cf8241bec6bf8962ac18cb557467` |
| 32 | `theorem` | [isParallelSection_closesAfterCircuit](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/isparallelsection-closesaftercircuit--31edf1ca767aa435cc527235.md) | 346 | `result-track:31edf1ca767aa435cc527235fd0af2bd040e5bfe206d33f656b99577f0f883bb` |
| 33 | `def` | [halfTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/halftransport--67380a02d664a24a8a43c4d8.md) | 355 | `declaration-track:67380a02d664a24a8a43c4d844d59df563f6b8ed20122c76d7cf9466781fc26d` |
| 34 | `theorem` | [monodromy_eq_halfTransport_trans_self](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/monodromy-eq-halftransport-trans-self--42c9f04b00c0780e830fcdcc.md) | 372 | `result-track:42c9f04b00c0780e830fcdcc34bea625363ab1a15cf07e385397f7e471e969fa` |
| 35 | `structure` | [PathDecomposition](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/pathdecomposition--2365d0efcade199dd3fbc073.md) | 387 | `declaration-track:2365d0efcade199dd3fbc0736035142233dded9ab608078e47d34e7c53c0db41` |
| 36 | `def` | [decomposeSteps](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/decomposesteps--8a503e05bb7dee50486a02a3.md) | 394 | `declaration-track:8a503e05bb7dee50486a02a3dc04ab211a9879be0cc90fa57c8f563b59e12030` |
| 37 | `theorem` | [decomposeSteps_recompose](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/decomposesteps-recompose--465492f1d581ee5b266eea27.md) | 401 | `result-track:465492f1d581ee5b266eea27afae195f489dd1fbc555479495ac99fc27e9341e` |
| 38 | `theorem` | [forwardProduct_laps_add](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/forwardproduct-laps-add--ed62f5690bf8079e4e04c9ad.md) | 415 | `result-track:ed62f5690bf8079e4e04c9ad42e1b354d39906a02210e00c7121ae46109c5c25` |
| 39 | `theorem` | [forwardProduct_decomposition](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/forwardproduct-decomposition--b25653d19f4f47d40245685c.md) | 442 | `result-track:b25653d19f4f47d40245685ca1ee028185572b7186639632207cdefd0338c5cc` |
| 40 | `abbrev` | [OneLapIndex](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/onelapindex--9ea9ea8f24ec4553c531f05d.md) | 458 | `declaration-track:9ea9ea8f24ec4553c531f05de92b527474420127af72667463979a3e5ac92a84` |
| 41 | `def` | [oneLapStart](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/onelapstart--e861ed2c371e5d6d4e93f534.md) | 463 | `declaration-track:e861ed2c371e5d6d4e93f5344e6a63fdcef4ed2c37968cbb92fdead0f5f4ce90` |
| 42 | `def` | [oneLapEnd](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/onelapend--2f44116c4a5f8e6cadf88533.md) | 468 | `declaration-track:2f44116c4a5f8e6cadf885331d44549a3d0fa0226d32e479f36c16c61bc98f6c` |
| 43 | `def` | [oneLapPhase](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/onelapphase--248a08a44552b6c6ccae580a.md) | 473 | `declaration-track:248a08a44552b6c6ccae580afef511f791f0e8c6052e2bbab2c2f225a0556777` |
| 44 | `def` | [oneLapProduct](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/onelapproduct--d3e144e55678c3c86784ba05.md) | 478 | `declaration-track:d3e144e55678c3c86784ba05817c8970e4b1636f89e562dfa68fc66a7b8a654d` |
| 45 | `theorem` | [oneLapPhase_start](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/onelapphase-start--cb4b2eb8459db334c802b896.md) | 483 | `result-track:cb4b2eb8459db334c802b89613fc2301ec437321319c7ff6f64a5be919a07493` |
| 46 | `theorem` | [oneLapPhase_end](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/onelapphase-end--6df30e1aebd5da90482ac71d.md) | 488 | `result-track:6df30e1aebd5da90482ac71d2946f6008364575c36f58a3d29c6e5ca9cb603f6` |
| 47 | `theorem` | [oneLapProduct_start](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/onelapproduct-start--4084b248cd3a0fc75f54a223.md) | 493 | `result-track:4084b248cd3a0fc75f54a2234dc20d08400e775ff4e35d71f070a997272cdf0d` |
| 48 | `theorem` | [oneLapProduct_end](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/onelapproduct-end--c19ea84fb158fe7171e0eb21.md) | 498 | `result-track:c19ea84fb158fe7171e0eb21aa2b99a46c2bc9dca69341297752222f427289d3` |
| 49 | `def` | [forwardProductWithPayload](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/forwardproductwithpayload--5f912ff4b8c7f6464edf41f0.md) | 512 | `declaration-track:5f912ff4b8c7f6464edf41f0793f2b405e0bfc561ec4829db90c1765052f3fae` |
| 50 | `theorem` | [forwardProduct_preserves_payload](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/forwardproduct-preserves-payload--3cb45799b2de82cc02f3d12b.md) | 517 | `result-track:3cb45799b2de82cc02f3d12bbfec6fbaf9755a63bd90936b0254aeedc18f576b` |
| 51 | `def` | [monodromyWithPayload](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/monodromywithpayload--41f69465bd02a1b93dc6323d.md) | 525 | `declaration-track:41f69465bd02a1b93dc6323d4179fb999554a0c56a928560e8ce8404dce90a38` |
| 52 | `theorem` | [monodromy_preserves_payload](../../../../../mathematics/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean/declarations/monodromy-preserves-payload--2e72abfe07e9eb31a5a7ab0b.md) | 530 | `result-track:2e72abfe07e9eb31a5a7ab0b68f8fc956393ebb5bf3aab4aa9ea3afbcda2d8b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
