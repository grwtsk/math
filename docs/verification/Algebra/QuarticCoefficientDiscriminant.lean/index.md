# Verification target: GRWTSK.Algebra.QuarticCoefficientDiscriminant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66cf4a70fde1c2ac1ae66a11649ac68711481c8a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticCoefficientDiscriminant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticCoefficientDiscriminant.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticCoefficientDiscriminant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66cf4a70fde1c2ac1ae66a11649ac68711481c8a`.

Source path: `GRWTSK/Algebra/QuarticCoefficientDiscriminant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticCoefficientDiscriminant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticCubicDiscriminant`](../../../mathematics/Algebra/QuarticCubicDiscriminant.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monicQuarticDiscriminant](../../../mathematics/Algebra/QuarticCoefficientDiscriminant.lean/declarations/monicquarticdiscriminant--393dcfe87433e09b167650d9.md) | 23 | `declaration-track:393dcfe87433e09b167650d95fd62e0ffb67dc186bdec02500e473285f378806` |
| 2 | `theorem` | [monicQuarticDiscriminant_eq_adjacencyCubic_discr](../../../mathematics/Algebra/QuarticCoefficientDiscriminant.lean/declarations/monicquarticdiscriminant-eq-adjacencycubic-discr--ef35bad04922e88a3567f238.md) | 35 | `result-track:ef35bad04922e88a3567f238c7d2c0d1d97e1854923d694f99d5d7c8b5b8276d` |
| 3 | `theorem` | [monicQuarticDiscriminant_map](../../../mathematics/Algebra/QuarticCoefficientDiscriminant.lean/declarations/monicquarticdiscriminant-map--2d9b1fea1d1edbec2a6df2b2.md) | 45 | `result-track:2d9b1fea1d1edbec2a6df2b23f66e15a5df32488b0a56ae572095d0287bbd8db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
