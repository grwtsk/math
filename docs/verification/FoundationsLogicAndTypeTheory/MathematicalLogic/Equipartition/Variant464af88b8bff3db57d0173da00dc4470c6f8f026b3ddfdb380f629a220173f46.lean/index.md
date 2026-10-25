# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equipartition.Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb41e198ea39fb58b4550fa0ad9a1f357ba61121",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb41e198ea39fb58b4550fa0ad9a1f357ba61121`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Equitable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition--74240dd785438811b418b7a5.md) | 34 | `declaration-track:74240dd785438811b418b7a5d0ccadab3b2ab88f062b14cbab9a92aa3698becc` |
| 2 | `theorem` | [isEquipartition_iff_card_parts_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-iff-card-parts-eq-average--3d0c839709a87ca94efd2bec.md) | 37 | `result-track:3d0c839709a87ca94efd2becf47553ffe1cbb431e5f5739432ec17bdcf8bd7d6` |
| 3 | `lemma` | [not_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/not-isequipartition--885df66a8738c6fd05d23956.md) | 44 | `result-track:885df66a8738c6fd05d23956ffa69b38d81485691b4a06664e7c1732918ea244` |
| 4 | `theorem` | [_root_.Set.Subsingleton.isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/root-set-subsingleton-isequipartition--daf38187c0617c86cb0dca21.md) | 47 | `result-track:daf38187c0617c86cb0dca21835c1991fcd67a747c261fe75b08511bc72d13a0` |
| 5 | `theorem` | [IsEquipartition.card_parts_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-card-parts-eq-average--b27bc5680bec701439bc9b58.md) | 51 | `result-track:b27bc5680bec701439bc9b5870144ed8afaa362d30af3d81687aac5cc4bc50cf` |
| 6 | `theorem` | [IsEquipartition.card_part_eq_average_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-card-part-eq-average-iff--b792248a5f1c96e79faf80a0.md) | 55 | `result-track:b792248a5f1c96e79faf80a068138978fbfb5b3258943cd9778b51c7d46f1c96` |
| 7 | `theorem` | [IsEquipartition.average_le_card_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-average-le-card-part--a4d83e0e05f6b09f9fd5ccda.md) | 62 | `result-track:a4d83e0e05f6b09f9fd5ccda7a23f52ed9382949b73fd4ddcbe2dca7bad960cc` |
| 8 | `theorem` | [IsEquipartition.card_part_le_average_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-card-part-le-average-add-one--bbf21274f0477ccef32b67e8.md) | 67 | `result-track:bbf21274f0477ccef32b67e8084bd0f424c43b6ead785fe264c4a30e9bcea390` |
| 9 | `theorem` | [IsEquipartition.filter_ne_average_add_one_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-filter-ne-average-add-one-eq-average--21d920f8b7b0cfd582274e53.md) | 72 | `result-track:21d920f8b7b0cfd582274e5335d1a554c3d33b1118da1dff081cf73f3ab8067f` |
| 10 | `theorem` | [IsEquipartition.card_large_parts_eq_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-card-large-parts-eq-mod--5abc17d1d6f3ba9dd39856e7.md) | 80 | `result-track:5abc17d1d6f3ba9dd39856e74f88d5bbd703feed7038d4518e518038d3c1f4ea` |
| 11 | `theorem` | [IsEquipartition.card_small_parts_eq_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-card-small-parts-eq-mod--bfe6a05a1a285f1ec586c562.md) | 92 | `result-track:bfe6a05a1a285f1ec586c56242a23daa231c44a40194bf9fb8fe9f19380999a9` |
| 12 | `theorem` | [IsEquipartition.exists_partsEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-exists-partsequiv--eb449f25f2e61a791573edb4.md) | 101 | `result-track:eb449f25f2e61a791573edb428d7e1d11d52533333aa71c9a578045fd8daf9f7` |
| 13 | `theorem` | [IsEquipartition.exists_partPreservingEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/isequipartition-exists-partpreservingequiv--7d31f51ed0ed704d25fc996f.md) | 124 | `result-track:7d31f51ed0ed704d25fc996f8eaa5943bcd3b0695132c7bcc2abfa4d9cb7bf2f` |
| 14 | `theorem` | [bot_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/bot-isequipartition--c6cdeb5034ec7f9caa20336b.md) | 158 | `result-track:c6cdeb5034ec7f9caa20336b0665b49c08d951a7f30a1547ce2e2be81b58313e` |
| 15 | `theorem` | [top_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/top-isequipartition--092ca4bc6a7514eb398396ff.md) | 161 | `result-track:092ca4bc6a7514eb398396ff9db195d221d17647905a5b76c2cc247214749400` |
| 16 | `theorem` | [indiscrete_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/declarations/indiscrete-isequipartition--bb8da31be0fe6e61cb0e0b00.md) | 164 | `result-track:bb8da31be0fe6e61cb0e0b00200a08eb849443e7c687e8c33521e8cf64fa27c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
