# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bounds.Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74556206fd266f8c3f736934df0f4755127f7fa7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74556206fd266f8c3f736934df0f4755127f7fa7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Infix` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.EditDistance.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [suffixLevenshtein_minimum_le_levenshtein_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/declarations/suffixlevenshtein-minimum-le-levenshtein-cons--3435ae7c48529925db092ea3.md) | 33 | `result-track:3435ae7c48529925db092ea3e6dafdc12a48c96a996d9415cf35b60067cec398` |
| 2 | `theorem` | [le_suffixLevenshtein_cons_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/declarations/le-suffixlevenshtein-cons-minimum--02da7ba9001e57e05379b098.md) | 65 | `result-track:02da7ba9001e57e05379b098ee95565e17b66e0e3f0ebee821bf5e47fd813df6` |
| 3 | `theorem` | [le_suffixLevenshtein_append_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/declarations/le-suffixlevenshtein-append-minimum--c9106e7d044f425eeae9d58e.md) | 84 | `result-track:c9106e7d044f425eeae9d58ec0a7ff93c4796546389467b78248028593eb4d66` |
| 4 | `theorem` | [suffixLevenshtein_minimum_le_levenshtein_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/declarations/suffixlevenshtein-minimum-le-levenshtein-append--06447746d901e34668af769e.md) | 90 | `result-track:06447746d901e34668af769e7a22c4a20632819e7ab69d714fbd39e7cac0bc1c` |
| 5 | `theorem` | [le_levenshtein_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/declarations/le-levenshtein-cons--ff8e742b9462904e6e8d5425.md) | 98 | `result-track:ff8e742b9462904e6e8d542564a90378ea675eb4078cbd320cdcb001c7f8885a` |
| 6 | `theorem` | [le_levenshtein_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant117a6fa2cf8aede0deec678edb4f247ed0d6fd681408af6078752068c4f6cf2a.lean/declarations/le-levenshtein-append--19bcb0d4b2c81563c0b32a09.md) | 103 | `result-track:19bcb0d4b2c81563c0b32a09c784e3f2370cfa7a61fcf8b0b1cdb74da722381d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
