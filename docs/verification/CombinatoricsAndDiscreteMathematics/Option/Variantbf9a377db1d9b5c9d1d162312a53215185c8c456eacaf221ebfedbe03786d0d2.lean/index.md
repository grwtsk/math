# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Option.Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6567cf106be1d1ca5b81ae80f7e07a1500c27f30",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6567cf106be1d1ca5b81ae80f7e07a1500c27f30`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Option/Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2.lean/declarations/prod-insertnone--b60210207e7cad1346c89bda.md) | 31 | `result-track:b60210207e7cad1346c89bdab81d9dab72736ba22c60af16326734ad1dfe9caf` |
| 2 | `theorem` | [mul_prod_eq_prod_insertNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2.lean/declarations/mul-prod-eq-prod-insertnone--6cc4b961daa7a61a25794dd9.md) | 35 | `result-track:6cc4b961daa7a61a25794dd904e90f69feadfd8a993b3dde2b3bdb135b89ec1f` |
| 3 | `theorem` | [prod_eraseNone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Option/Variantbf9a377db1d9b5c9d1d162312a53215185c8c456eacaf221ebfedbe03786d0d2.lean/declarations/prod-erasenone--677d2d4290fb7db517811142.md) | 40 | `result-track:677d2d4290fb7db517811142e6a9d621a5ddf01d4a6ba7a80dbe02a97a2a9124` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
