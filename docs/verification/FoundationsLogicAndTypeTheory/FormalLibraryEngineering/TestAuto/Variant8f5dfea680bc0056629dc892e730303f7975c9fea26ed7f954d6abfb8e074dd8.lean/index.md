# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestAuto.Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8a960997c8279a9388141c38ea45cfc85cc2b3f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8a960997c8279a9388141c38ea45cfc85cc2b3f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I01](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/i01--fb3f5a1eb2a3e6df3a256699.md) | 20 | `declaration-track:fb3f5a1eb2a3e6df3a2566996beaee3b82ce228f9f4613dd024f9830caab5149` |
| 2 | `theorem` | [test_xsq_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-xsq-le-one--9290571c87d455476076ea40.md) | 23 | `result-track:9290571c87d455476076ea4028c464e979100fba2bfb98b9e42baa748f4324ce` |
| 3 | `theorem` | [test_zero_le_xsq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-zero-le-xsq--471f1ff6b66268d4952df1b3.md) | 27 | `result-track:471f1ff6b66268d4952df1b3d8c939adaee2b3a700440569579147b63961e59e` |
| 4 | `theorem` | [test_sin_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-sin-le-one--95b1b62d48b66d351ea92ac5.md) | 31 | `result-track:95b1b62d48b66d351ea92ac5158cc228fa6258f2835c143b5857680dca8c4c86` |
| 5 | `theorem` | [test_neg_one_le_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-neg-one-le-sin--8f00a13e365520f059749279.md) | 35 | `result-track:8f00a13e365520f059749279bf973c692960c776de646b20cfdad760bdd765f5` |
| 6 | `theorem` | [test_xsq_plus_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-xsq-plus-sin--9d2d2654ea7489a4269ac18f.md) | 39 | `result-track:9d2d2654ea7489a4269ac18f9704c1186e797f1f66ee449a305752b7206437de` |
| 7 | `theorem` | [test_xsq_minus_two_lt_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-xsq-minus-two-lt-zero--28d65b5ade4a03245f974e9f.md) | 44 | `result-track:28d65b5ade4a03245f974e9fa1c3fe6a8ad87bd3b31f0d65bc920418e6077ad1` |
| 8 | `theorem` | [test_exp_le_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-exp-le-three--5c007adcbf7893f1cd351b1b.md) | 49 | `result-track:5c007adcbf7893f1cd351b1babc634c215275fa77b95677895d54ba4f92eacf7` |
| 9 | `theorem` | [test_point_nine_le_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-point-nine-le-exp--9cdf0d9cb00722d1d96083bd.md) | 54 | `result-track:9cdf0d9cb00722d1d96083bdfb5d019d18ff50aae24fe002b3a7cb308c5d30f5` |
| 10 | `theorem` | [test_one_le_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-one-le-exp--4578418945507fdfe92a2c90.md) | 61 | `result-track:4578418945507fdfe92a2c90ca12fde9a3da2c1e429cc242b5a033132a8de2e1` |
| 11 | `theorem` | [test_exp_le_e_approx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-exp-le-e-approx--e73518749437508ff34f8e95.md) | 67 | `result-track:e73518749437508ff34f8e9588fed8340f13f7f1ebbaa3832461dde080826128` |
| 12 | `theorem` | [test_raw_xsq_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-raw-xsq-le-one--3cabe853308d8277a897598b.md) | 78 | `result-track:3cabe853308d8277a897598be99fd392afad1f88bd9cebf56dc510dc27afef1a` |
| 13 | `theorem` | [test_raw_zero_le_xsq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-raw-zero-le-xsq--7f46903ef6236e796134e681.md) | 82 | `result-track:7f46903ef6236e796134e681201685cdc71b4e20cb37426713caa9d21de7042b` |
| 14 | `theorem` | [test_raw_sin_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-raw-sin-le-one--fd62840b142dcc4df1392bc7.md) | 86 | `result-track:fd62840b142dcc4df1392bc7bb57570976b486a60b21f5c0325ce4c104875912` |
| 15 | `theorem` | [test_raw_exp_le_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-raw-exp-le-three--2658953840b2ca15e7d33801.md) | 90 | `result-track:2658953840b2ca15e7d338016efa9cf84ad79922ee16038b54b9077988b564a9` |
| 16 | `theorem` | [test_raw_one_le_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-raw-one-le-exp--8fe19c392703c32bd98795b4.md) | 94 | `result-track:8fe19c392703c32bd98795b4cc4a71ea064544aa2f380a70b0aa8b2c14974ab8` |
| 17 | `theorem` | [test_raw_xsq_plus_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-raw-xsq-plus-sin--7c5c01a30aece1c6b03493d4.md) | 98 | `result-track:7c5c01a30aece1c6b03493d48df1539451c682334838fcc5b51a87c4f67ad69e` |
| 18 | `def` | [B01](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/b01--0f0a1da98c6c143ce20726d2.md) | 110 | `declaration-track:0f0a1da98c6c143ce20726d257a2b915858d74b0f7d01924708a0ebc0a8f04df` |
| 19 | `def` | [B01_2D](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/b01-2d--93dd1cd27bfa718b83b4b65a.md) | 114 | `declaration-track:93dd1cd27bfa718b83b4b65abfb4d498cf6df58ac5b197b60d33200225ce27b3` |
| 20 | `theorem` | [test_opt_xsq_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-opt-xsq-le-one--08abc4589b17e4eccaaf8161.md) | 120 | `result-track:08abc4589b17e4eccaaf81618d67b625700b644635f60f58cc076918c55da9b0` |
| 21 | `theorem` | [test_opt_zero_le_xsq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-opt-zero-le-xsq--76dc39c7040c36d544b7ecbb.md) | 131 | `result-track:76dc39c7040c36d544b7ecbb8cf73c0d9ce71babaec8e2c325a455921915032b` |
| 22 | `theorem` | [test_opt_2d_sum_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-opt-2d-sum-sq--fdea18de4be76b52a54535ea.md) | 142 | `result-track:fdea18de4be76b52a54535ea87c8b36d4a6c86a0261554230cde306a7c051f7f` |
| 23 | `theorem` | [test_xsq_plus_one_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-xsq-plus-one-ne-zero--d4577c28729c1639ae481c8e.md) | 160 | `result-track:d4577c28729c1639ae481c8ef37dc9ced8243a85a45f80744e35d4711b84c3ea` |
| 24 | `theorem` | [test_exp_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-exp-ne-zero--0dbe795922407c461257245a.md) | 165 | `result-track:0dbe795922407c461257245a7a778c6b99acdc3cba36f744b42c688703bbe90b` |
| 25 | `theorem` | [test_x_plus_two_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-x-plus-two-ne-zero--8c03edc427140633ca87158c.md) | 170 | `result-track:8c03edc427140633ca87158c4510cd39a65b758f45f51d51e2881d9feea91263` |
| 26 | `theorem` | [test_xsq_minus_two_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestAuto/Variant8f5dfea680bc0056629dc892e730303f7975c9fea26ed7f954d6abfb8e074dd8.lean/declarations/test-xsq-minus-two-ne-zero--7d3a5089eab75d555c80e8b3.md) | 176 | `result-track:7d3a5089eab75d555c80e8b3bc4334941124cfa71210b44d78838e9826c10a41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
