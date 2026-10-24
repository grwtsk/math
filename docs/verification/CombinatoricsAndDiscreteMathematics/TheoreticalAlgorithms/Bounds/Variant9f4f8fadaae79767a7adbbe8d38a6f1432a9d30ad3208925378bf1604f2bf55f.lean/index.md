# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bounds.Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a407f61043d03108652fd114aed848094357f53",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a407f61043d03108652fd114aed848094357f53`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Infix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.EditDistance.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [suffixLevenshtein_minimum_le_levenshtein_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean/declarations/suffixlevenshtein-minimum-le-levenshtein-cons--3febf087a74607fbd7a8d4cd.md) | 33 | `result-track:3febf087a74607fbd7a8d4cd8dfe7b11f56c94ffde6de2925a6830e1d4aa5798` |
| 2 | `theorem` | [le_suffixLevenshtein_cons_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean/declarations/le-suffixlevenshtein-cons-minimum--7f29e1d66e2b951c275d7ea2.md) | 65 | `result-track:7f29e1d66e2b951c275d7ea24cfcb7d43a5350ff8d20f03362352e28b8a15405` |
| 3 | `theorem` | [le_suffixLevenshtein_append_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean/declarations/le-suffixlevenshtein-append-minimum--e3604f9cd099f86b60a54f45.md) | 82 | `result-track:e3604f9cd099f86b60a54f45cc3907e99959efe647e8a33cba7776b302cedbdf` |
| 4 | `theorem` | [suffixLevenshtein_minimum_le_levenshtein_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean/declarations/suffixlevenshtein-minimum-le-levenshtein-append--2766d1eadc9b39c5d671902b.md) | 88 | `result-track:2766d1eadc9b39c5d671902bbba9a1c20bfae672ee2830b361619530e3dca0d7` |
| 5 | `theorem` | [le_levenshtein_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean/declarations/le-levenshtein-cons--d8e26dab0fec83bb396dadfb.md) | 96 | `result-track:d8e26dab0fec83bb396dadfbd3b3b2d21a1d4fa8d4a2557df78851eb4488e43f` |
| 6 | `theorem` | [le_levenshtein_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f.lean/declarations/le-levenshtein-append--d2c448632147877cdf3f162e.md) | 101 | `result-track:d2c448632147877cdf3f162e3b2f536d06b4ded65b6d77625fe5f7ccb5783cc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
