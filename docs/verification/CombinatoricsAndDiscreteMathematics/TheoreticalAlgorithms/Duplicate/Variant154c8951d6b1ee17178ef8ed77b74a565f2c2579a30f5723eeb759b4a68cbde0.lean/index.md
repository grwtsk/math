# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Duplicate.Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0158359841cca8d3a94b61c27bc7e65f229c6373",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0158359841cca8d3a94b61c27bc7e65f229c6373`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Duplicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate--67b4b91a4dca420b1782ead9.md) | 35 | `declaration-track:67b4b91a4dca420b1782ead920438ca1c6a99ad3c922b05486591e1297e8cc8e` |
| 2 | `theorem` | [Mem.duplicate_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/mem-duplicate-cons-self--604e4055298e5414c567de97.md) | 43 | `result-track:604e4055298e5414c567de975432b8e03af644ad8c44f5a794b0279d6e7835d9` |
| 3 | `theorem` | [Duplicate.duplicate_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-duplicate-cons--16e369b3258014451a212cc5.md) | 46 | `result-track:16e369b3258014451a212cc58a10a0c6c5b68b388eb4416a50cd4a27031177fc` |
| 4 | `theorem` | [Duplicate.mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-mem--51df3d258c1e47284beb5a5e.md) | 49 | `result-track:51df3d258c1e47284beb5a5ecd0ca15df96f6b940963135dc9b161565933e341` |
| 5 | `theorem` | [Duplicate.mem_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-mem-cons-self--90807a41e499c53192d6a1c2.md) | 54 | `result-track:90807a41e499c53192d6a1c26468c1fc32fd20b858cd651e3d6b4bf3e8a8f7af` |
| 6 | `theorem` | [duplicate_cons_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-cons-self-iff--6bb4ae4b97842f7f42cda91a.md) | 60 | `result-track:6bb4ae4b97842f7f42cda91a5389d721d3ebe82aa09f8d9d2ec3e2cc3b4853ff` |
| 7 | `theorem` | [Duplicate.ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-ne-nil--fd67d7621feadb302453311b.md) | 63 | `result-track:fd67d7621feadb302453311bd7d894c51a7f45a744bb6c8a195aed60850451f0` |
| 8 | `theorem` | [not_duplicate_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/not-duplicate-nil--03e116e48be2e2e089d0027c.md) | 66 | `result-track:03e116e48be2e2e089d0027c20ad08d6c026561c82e45928f6bc2ab760b4d264` |
| 9 | `theorem` | [Duplicate.ne_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-ne-singleton--947dd7315a7a7eb6204d9b4d.md) | 68 | `result-track:947dd7315a7a7eb6204d9b4d1f66a2a2af3618002a8a9a1f90c7ed4bc85bfe3f` |
| 10 | `theorem` | [not_duplicate_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/not-duplicate-singleton--5929e2551e91277525957066.md) | 74 | `result-track:5929e2551e91277525957066a52cd279381de1d446b3ba544770dbdfefe8d6b2` |
| 11 | `theorem` | [Duplicate.elim_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-elim-nil--d03da2a235750009cc5d4fad.md) | 76 | `result-track:d03da2a235750009cc5d4fad312905960c9a6dc06ea5a52cc63c8a459114eadc` |
| 12 | `theorem` | [Duplicate.elim_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-elim-singleton--c58dcb5643764b42d059012c.md) | 79 | `result-track:c58dcb5643764b42d059012cade437ad5817a1c8d35bd8bd7205ea4c2467b26c` |
| 13 | `theorem` | [duplicate_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-cons-iff--7267ef241a9348514f1117a6.md) | 82 | `result-track:7267ef241a9348514f1117a629e71ff4b7d8ac8556227bc77b4909ed0b942ad9` |
| 14 | `theorem` | [Duplicate.of_duplicate_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-of-duplicate-cons--57b77aedbf1427f3ec36f170.md) | 91 | `result-track:57b77aedbf1427f3ec36f170d7b8b5f49064ba2b04619af69f691212f58fd4be` |
| 15 | `theorem` | [duplicate_cons_iff_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-cons-iff-of-ne--d13b4f38c055f2bf377d12bd.md) | 94 | `result-track:d13b4f38c055f2bf377d12bd1dcb4d9d021ce7bbe2f47b2b3c11a7b018fcd894` |
| 16 | `theorem` | [Duplicate.mono_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-mono-sublist--1da8b425d4f371b6e03888b5.md) | 97 | `result-track:1da8b425d4f371b6e03888b5ea8d40457766511b980cc3f35b20bb773e2f4874` |
| 17 | `theorem` | [duplicate_iff_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-iff-sublist--5b4b4ee998e8809c2a25400b.md) | 108 | `result-track:5b4b4ee998e8809c2a25400b98aa454eb8e1a43e01567feea81a3a5df83e0480` |
| 18 | `theorem` | [nodup_iff_forall_not_duplicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/nodup-iff-forall-not-duplicate--1949dec6231bbfaeaa7ccc69.md) | 119 | `result-track:1949dec6231bbfaeaa7ccc690407d5e498cc42cbe8dc168e27e035e9dabefe54` |
| 19 | `theorem` | [exists_duplicate_iff_not_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/exists-duplicate-iff-not-nodup--501aa21e8a7c161ce8d5031f.md) | 122 | `result-track:501aa21e8a7c161ce8d5031f52f6fe6ab816f227aa7122b3fd3d615b8d887bf9` |
| 20 | `theorem` | [Duplicate.not_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-not-nodup--308774fad20d52a7d89e52c8.md) | 125 | `result-track:308774fad20d52a7d89e52c889d44222bda5689f1df88772f61463d93e9b0927` |
| 21 | `theorem` | [duplicate_iff_two_le_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/duplicate-iff-two-le-count--62af3cddb7b0587fff30bf93.md) | 128 | `result-track:62af3cddb7b0587fff30bf93da426a0490204578ce39e794084a208ae634786c` |
| 22 | `instance` | [decidableDuplicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Duplicate/Variant154c8951d6b1ee17178ef8ed77b74a565f2c2579a30f5723eeb759b4a68cbde0.lean/declarations/decidableduplicate--fe606b581fdf6e09a871b918.md) | 131 | `declaration-track:fe606b581fdf6e09a871b918bbff110a70a66673aecd8bdb420b7a2c5c7f9741` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
