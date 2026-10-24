# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "170a63bf2f367cfbdcbbfc3d1223b167bcbea1fb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `170a63bf2f367cfbdcbbfc3d1223b167bcbea1fb`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetCounting`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Algebra.Order.Archimedean.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exceptionalSet](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/declarations/exceptionalset--4f917c6d7794ad1703a4ce58.md) | 12 | `declaration-track:4f917c6d7794ad1703a4ce5827fcc8d8d0f97cdb202840cee08f0939b10e0c84` |
| 2 | `theorem` | [exceptionalSet_eq_exponentExceptionalSet](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/declarations/exceptionalset-eq-exponentexceptionalset--8c0a5aad12c09cbb9cf9b73b.md) | 17 | `result-track:8c0a5aad12c09cbb9cf9b73bc5d6848ef371206585f963b65f61b088c41a4f57` |
| 3 | `def` | [ABCFiniteExceptions](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/declarations/abcfiniteexceptions--73343f904b29d6f7636bb684.md) | 30 | `declaration-track:73343f904b29d6f7636bb68454a540db787b65c1638a77fcedbe7ac3804db854` |
| 4 | `theorem` | [finite_exceptions_implies_bound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/declarations/finite-exceptions-implies-bound--5b0f8c63798919f9ed2e16a5.md) | 33 | `result-track:5b0f8c63798919f9ed2e16a50be20554e69b4e96af8ab2686ce8de9c57a0771b` |
| 5 | `theorem` | [bound_half_implies_finite_exceptions](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/declarations/bound-half-implies-finite-exceptions--4c0c4c30265dab33ff2c7703.md) | 50 | `result-track:4c0c4c30265dab33ff2c770351ec3c7a212efb563e0bec746fe76d68fe9e57d6` |
| 6 | `theorem` | [abcConjecture_iff_finite_exceptions](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/declarations/abcconjecture-iff-finite-exceptions--c73e561fdb12c0dcf6786b50.md) | 73 | `result-track:c73e561fdb12c0dcf6786b50963f4e26e96eea51ec34ca0149344ac8318b71af` |
| 7 | `theorem` | [exceptionalSet_eq_quality_set](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/declarations/exceptionalset-eq-quality-set--c97efb442dedcae25332cdf7.md) | 81 | `result-track:c97efb442dedcae25332cdf7641fde1301bf92f17774a64a1232bbeee8593102` |
| 8 | `theorem` | [abcConjecture_iff_finitely_many_high_quality](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSet.lean/declarations/abcconjecture-iff-finitely-many-high-quality--c375891aac8cbbd21342a2f1.md) | 86 | `result-track:c375891aac8cbbd21342a2f10cb76e0be36b4d60dac4dea112277a08e0be64c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
