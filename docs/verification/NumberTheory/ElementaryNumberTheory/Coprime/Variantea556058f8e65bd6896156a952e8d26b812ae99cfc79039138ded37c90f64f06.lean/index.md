# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Coprime.Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2923900a3f990b0104dec1b7aa41f5d545e2bd15",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2923900a3f990b0104dec1b7aa41f5d545e2bd15`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_iff_gcd_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean/declarations/eq-zero-iff-gcd-ne-one--a67af42401a3e2fbd9d10541.md) | 24 | `result-track:a67af42401a3e2fbd9d10541f5193b0c4a7da3a2d89c4cf8f1d1aaf997c82e3b` |
| 2 | `theorem` | [ne_zero_of_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean/declarations/ne-zero-of-gcd-eq-one--e2d8a8c71f526e876f6b697a.md) | 31 | `result-track:e2d8a8c71f526e876f6b697af7d773dde4e0d830947813a7d7ea217d083a6963` |
| 3 | `theorem` | [eq_zero_of_gcd_ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean/declarations/eq-zero-of-gcd-ne-one--16a3f9d96c2d16ef389dc8e6.md) | 35 | `result-track:16a3f9d96c2d16ef389dc8e60c4a2b69b6db5019d44bef43bc4d2a2ae0d0422e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
