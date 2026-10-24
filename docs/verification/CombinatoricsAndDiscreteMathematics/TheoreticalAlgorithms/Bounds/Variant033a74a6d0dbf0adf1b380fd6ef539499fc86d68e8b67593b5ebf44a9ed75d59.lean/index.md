# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bounds.Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3beb732597d7e87a90531f26ebcbbecf250369a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3beb732597d7e87a90531f26ebcbbecf250369a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Infix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.EditDistance.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [suffixLevenshtein_minimum_le_levenshtein_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean/declarations/suffixlevenshtein-minimum-le-levenshtein-cons--c26f4555b33523c3ed6bffad.md) | 25 | `result-track:c26f4555b33523c3ed6bffadf586d13bf58de167a3566c187e0c891cad6588e4` |
| 2 | `theorem` | [le_suffixLevenshtein_cons_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean/declarations/le-suffixlevenshtein-cons-minimum--ac0c752e39866f4510df1c2a.md) | 57 | `result-track:ac0c752e39866f4510df1c2aebd076b827cf3fbc9a81f329778d702f6da2eb76` |
| 3 | `theorem` | [le_suffixLevenshtein_append_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean/declarations/le-suffixlevenshtein-append-minimum--600fc36aa8ccb1ad01a9d21f.md) | 76 | `result-track:600fc36aa8ccb1ad01a9d21ffebba22ade91d11d42bc507ea0d2b5a2f8589aca` |
| 4 | `theorem` | [suffixLevenshtein_minimum_le_levenshtein_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean/declarations/suffixlevenshtein-minimum-le-levenshtein-append--7f07c7d0be8a5281937f4cbb.md) | 82 | `result-track:7f07c7d0be8a5281937f4cbbc0d62cbc6f8cc13130f3b25511bebdebebfc9a1d` |
| 5 | `theorem` | [le_levenshtein_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean/declarations/le-levenshtein-cons--2c24a68413e2c7906d9c52c4.md) | 90 | `result-track:2c24a68413e2c7906d9c52c4400dc42225b57c3f86e614625018994a97bcc53f` |
| 6 | `theorem` | [le_levenshtein_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant033a74a6d0dbf0adf1b380fd6ef539499fc86d68e8b67593b5ebf44a9ed75d59.lean/declarations/le-levenshtein-append--03c58cfee454d58ed5c19e94.md) | 95 | `result-track:03c58cfee454d58ed5c19e9463d809afd05811d5a631e3c98c54afddd3c8ff0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
