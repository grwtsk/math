# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FBinop.Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9983af485f988e6e419e4c0f090e36ed855a200",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9983af485f988e6e419e4c0f090e36ed855a200`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FBinop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/test-sorry--ee796b40869c823282c8fdca.md) | 14 | `declaration-track:ee796b40869c823282c8fdcab0c1ec15b1dfefbe8469e9657c791538c305beb4` |
| 2 | `class` | [SProd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/sprod--5e532e8262dbf204084463b5.md) | 21 | `declaration-track:5e532e8262dbf204084463b5383ae5eb17e9bd9d80deedb44b6153c8ed030d8d` |
| 3 | `macro_rules` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/macro-rules--8f29d258f45e558196359a23.md) | 27 | `declaration-track:8f29d258f45e558196359a239e51d35efe630312fef78ca6f7ca49025e577665` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/instance--48ffbcc27eccccedb94044e8.md) | 30 | `declaration-track:48ffbcc27eccccedb94044e8be371fa7ed5cc33deae80eecb5dfbd4180bfce59` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/instance--bd77b808bc2cb3a957fca727.md) | 31 | `declaration-track:bd77b808bc2cb3a957fca727841b517f407de6277b036ef33019fe5b89ab68c2` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--e7bc428d82b95564035cf37f.md) | 37 | `declaration-track:e7bc428d82b95564035cf37fc5d349925018634564e759070af70e51322116a0` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--63f36c7b9bfc062bfec5d09e.md) | 38 | `declaration-track:63f36c7b9bfc062bfec5d09ee461e2b59bbb17d44e4a37a3084462a68167e5e0` |
| 8 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--fe0daf7376fc83055fc083e3.md) | 40 | `declaration-track:fe0daf7376fc83055fc083e33dd033866d3b8bb17153eec49e3574abae80179b` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--8a2838adc1c0086c0156a977.md) | 41 | `declaration-track:8a2838adc1c0086c0156a977b08d220e8b7ec1f1d0c0128cbd567c42453f6d58` |
| 10 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--c784d0c977435e60d2a1e9c2.md) | 42 | `declaration-track:c784d0c977435e60d2a1e9c2528e148fc4eb31ddcf6d1307f74aa8d075199f56` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--2bcc806b50468b331bad3bb1.md) | 43 | `declaration-track:2bcc806b50468b331bad3bb1c8482da496791defa8f6ef21d6a1bef52f811335` |
| 12 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--6df7ded4c4651e9c54bdf584.md) | 44 | `declaration-track:6df7ded4c4651e9c54bdf58448efcaeb86196ef370660dcc633138c2eae65860` |
| 13 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--89c42071338638bac5cfd1d3.md) | 45 | `declaration-track:89c42071338638bac5cfd1d3994722148aa3f8f5b06dceaf207aa51c2b8f0c88` |
| 14 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--60835991678195f3733b663f.md) | 46 | `declaration-track:60835991678195f3733b663f0712320060dba05b380bcb867b1668826056be06` |
| 15 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--df42ca2c7725e5c22b33979e.md) | 47 | `declaration-track:df42ca2c7725e5c22b33979ea1d3e05c39eae80e283d98a59a896394a3ac85db` |
| 16 | `axiom` | [Nat.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/nat-card--1c572056fc75a079617cb1cd.md) | 49 | `declaration-track:1c572056fc75a079617cb1cd7a7a4167f019179d3a47290322817b0122760e50` |
| 17 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--a79fb0d336c2c845bc1c1156.md) | 50 | `declaration-track:a79fb0d336c2c845bc1c1156dab379b354901d4f2d3e8dc5c7b7d85ac7b5cd0f` |
| 18 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--4cb49b80b5a7337962c407d9.md) | 52 | `declaration-track:4cb49b80b5a7337962c407d992032bb4b20d390a064de77cf26105476f2b0c4c` |
| 19 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--472c934ceb13a68c17c565ee.md) | 53 | `declaration-track:472c934ceb13a68c17c565ee67c2d4f99e89a406f75d47338405c8bb129a5e15` |
| 20 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--de150275eb7f3b6f36a86675.md) | 54 | `declaration-track:de150275eb7f3b6f36a86675befa2358a64307082c6fd457ec530d148b923361` |
| 21 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--7be8c2e106f4bc17e7435164.md) | 58 | `declaration-track:7be8c2e106f4bc17e7435164a34480174a9e7ded18af356c611fb3c98312ba0b` |
| 22 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--e8ec70743a91d4a87c080a51.md) | 59 | `declaration-track:e8ec70743a91d4a87c080a51192877af2a7ad2d83a123c05153d34850ad7484f` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--2ef34906739dce40686e0fec.md) | 60 | `declaration-track:2ef34906739dce40686e0fec36de1561396a671d79a3793879efd75bdba29e89` |
| 24 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--ae194fb1ee141e7d66a43833.md) | 61 | `declaration-track:ae194fb1ee141e7d66a43833f62e2e5148575333bd0c87b49c4c375e5b5a30fd` |
| 25 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--9da9d53211a10dd68b985624.md) | 69 | `declaration-track:9da9d53211a10dd68b98562487b1605692f3bcdacbaaae634cc7d0568771f19d` |
| 26 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/example--0216961b8271cd65cadd2d49.md) | 71 | `declaration-track:0216961b8271cd65cadd2d49747cd326d6e5476c3c4c56d8ecb45f9f6c6f2074` |
| 27 | `structure` | [SubObj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/subobj--e1d9faee51c5c644ef58da22.md) | 74 | `declaration-track:e1d9faee51c5c644ef58da224acc880ca6bf955c8797f4a57ac2075a46ebd931` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/instance--0670b10f3ce1650485597321.md) | 77 | `declaration-track:0670b10f3ce16504855973217d633610525f73d74f6ef18953bf771b48a3caae` |
| 29 | `def` | [SubObj.prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/subobj-prod--352111b8f7f31e43498e08f1.md) | 82 | `declaration-track:352111b8f7f31e43498e08f1337339aaae22432fe8b9af6393fb8f7fb2dafba9` |
| 30 | `structure` | [DecSubObj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/decsubobj--f7eda468d440bbb4b4211720.md) | 86 | `declaration-track:f7eda468d440bbb4b4211720c7efc2e56e2bd87fbf59c5f8e7a28d789828d5d9` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/instance--fed57afd2f862af9ffc4a72e.md) | 89 | `declaration-track:fed57afd2f862af9ffc4a72e7577649a4824d5477f6c758be67cc5c2a05ddee3` |
| 32 | `def` | [DecSubObj.prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FBinop/Variantc6ae18494538592db8bc4fd77b1efb69604b82b050a505f39bf2099d9fae5397.lean/declarations/decsubobj-prod--3f38401c42366e81d58814c6.md) | 94 | `declaration-track:3f38401c42366e81d58814c683358f0d3fae9214d39813affb9ad8e9aa9609bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
