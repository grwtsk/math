# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bounds.Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d32957b304c2c7998b65ab79074e96dc0e12b4b5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d32957b304c2c7998b65ab79074e96dc0e12b4b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Infix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.MinMax` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.EditDistance.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [suffixLevenshtein_minimum_le_levenshtein_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean/declarations/suffixlevenshtein-minimum-le-levenshtein-cons--21d906fc81896b315e918fae.md) | 25 | `result-track:21d906fc81896b315e918fae45241648df57edf8474b4f47579df9eb57a27d23` |
| 2 | `theorem` | [le_suffixLevenshtein_cons_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean/declarations/le-suffixlevenshtein-cons-minimum--e7c0a93752d6c110fcab9a28.md) | 57 | `result-track:e7c0a93752d6c110fcab9a28f7fbf7982a73f9454118d4cb225802804221d05d` |
| 3 | `theorem` | [le_suffixLevenshtein_append_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean/declarations/le-suffixlevenshtein-append-minimum--492424e9b28d9cd6c143e008.md) | 74 | `result-track:492424e9b28d9cd6c143e008e259ff1b9fa9569ffe5520d610e0e8811cdbff18` |
| 4 | `theorem` | [suffixLevenshtein_minimum_le_levenshtein_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean/declarations/suffixlevenshtein-minimum-le-levenshtein-append--f9bf548596e046694528d7fb.md) | 80 | `result-track:f9bf548596e046694528d7fbc6ebfd1b67053218bea2b80f659a12a282911aa6` |
| 5 | `theorem` | [le_levenshtein_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean/declarations/le-levenshtein-cons--414218c3f38d9b56a52c6815.md) | 88 | `result-track:414218c3f38d9b56a52c6815cbbebca5fe1b6732a97cffe0e7b59d80f63a2bc6` |
| 6 | `theorem` | [le_levenshtein_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bounds/Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c.lean/declarations/le-levenshtein-append--6632409c733c3b3897e42da4.md) | 93 | `result-track:6632409c733c3b3897e42da4af8019f6094ca8eba1fba5e59de719b905c671e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
