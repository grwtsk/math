# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteArray.Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "786375492ccdc38d6d885be1e18ed7908e4761fb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `786375492ccdc38d6d885be1e18ed7908e4761fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Char` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.UInt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Up](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/up--2f731557794f1e28e88cc701.md) | 20 | `declaration-track:2f731557794f1e28e88cc70171e42e905ea081d3dffd3a28562e67ddb095ff87` |
| 2 | `lemma` | [Up.next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/up-next--b286b0e607420ee548e8d391.md) | 22 | `result-track:b286b0e607420ee548e8d391c56f94315eefc0f7d9c754432f0987a5a29f70a9` |
| 3 | `lemma` | [Up.WF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/up-wf--9591274673b9468a533449f7.md) | 24 | `result-track:9591274673b9468a533449f7f83b3e8f5cdd3788ec199de6a1b9c3af87904c6b` |
| 4 | `def` | [upRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/uprel--53da0ece7d3e966f67baf55f.md) | 28 | `declaration-track:53da0ece7d3e966f67baf55f5d1b8eacd5bc7dbc245cb92f9b97e167a988d57a` |
| 5 | `structure` | [ByteSliceT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/byteslicet--1a4e1a573121a826859017df.md) | 33 | `declaration-track:1a4e1a573121a826859017dfebc437949d01d3400eafe34c072a74cc6ad7f9d8` |
| 6 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/size--ed9a9d935671ea693e0fdc28.md) | 38 | `declaration-track:ed9a9d935671ea693e0fdc28fd93e626f37aa399bf44fc98e99752fcaf2cfcf2` |
| 7 | `def` | [getOp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/getop--22664d85d4ebf2175eceb225.md) | 41 | `declaration-track:22664d85d4ebf2175eceb225b3055934bacba5632830946c5ccd9e4886b595af` |
| 8 | `def` | [ByteArray.toSliceT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/bytearray-toslicet--ee58af8e19eca14ae8dd6181.md) | 46 | `declaration-track:ee58af8e19eca14ae8dd61816333c7cf4b8c48c74e8ae110cae9d0f720af15b6` |
| 9 | `structure` | [ByteSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/byteslice--408466adcf8407ddf29c831f.md) | 49 | `declaration-track:408466adcf8407ddf29c831f8351ebbb48d392f55f1a8f8d967017a9efc4ddf4` |
| 10 | `def` | [toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/toarray--4bff1266d7f02d151583cf6e.md) | 54 | `declaration-track:4bff1266d7f02d151583cf6eda1c1db6bd373311a737370fc594136e4544c048` |
| 11 | `def` | [getOp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/getop--4bad5173938ea78125409e15.md) | 58 | `declaration-track:4bad5173938ea78125409e152b9196072ec1a4d740abc2329afe8140ccdd48d3` |
| 12 | `def` | [forIn.loop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/forin-loop--4842a9bdd99d0670d34389b8.md) | 62 | `declaration-track:4842a9bdd99d0670d34389b8ef4cd89c741e4a925363b41d1854fbf0b9912d60` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/instance--5e504bf9bd4e9ed4e7d610ce.md) | 71 | `declaration-track:5e504bf9bd4e9ed4e7d610cee1a18ceed406104138203d14cb0890d9f1897d03` |
| 14 | `def` | [ByteSliceT.toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/byteslicet-toslice--f346d609cc847208a598839d.md) | 77 | `declaration-track:f346d609cc847208a598839dbefd7dc40662faa492e1067ab063d154c2c497da` |
| 15 | `def` | [ByteArray.toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/bytearray-toslice--6988b20a18ee0bc19b840808.md) | 81 | `declaration-track:6988b20a18ee0bc19b840808fbac7c64269e693bc729bc3694e663d5203d8785` |
| 16 | `def` | [String.toAsciiByteArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/string-toasciibytearray--c5f5015b6d8f7dea49f7f4b8.md) | 85 | `declaration-track:c5f5015b6d8f7dea49f7f4b8ccb6c1fc38f6d7f22b36af78f0bb359654b2b998` |
| 17 | `def` | [ByteSlice.toString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/byteslice-tostring--0fd415b8ad3ab4b277fc2ed5.md) | 98 | `declaration-track:0fd415b8ad3ab4b277fc2ed57b079c2f923ea191414eda4b2cf70537b238a640` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variantc58c21bbee91269e09d175ebc4e9cd01458e8d51678721df0337948e8816e975.lean/declarations/instance--c41ce092cfc5aabf1dfc6d91.md) | 103 | `declaration-track:c41ce092cfc5aabf1dfc6d91cf7808753e90e517850fdb58d96fe46f3c97bab3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
