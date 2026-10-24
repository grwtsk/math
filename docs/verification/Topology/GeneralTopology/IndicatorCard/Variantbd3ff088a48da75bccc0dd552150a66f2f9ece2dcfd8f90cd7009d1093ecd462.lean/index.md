# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorCard.Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b43bb0a24772289a5c7712439dcab0ef4f8b9a35",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b43bb0a24772289a5c7712439dcab0ef4f8b9a35`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Indicator` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LiminfLimsup` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_indicator_eventually_eq_card](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean/declarations/sum-indicator-eventually-eq-card--05577c4d8057e372ef169d3b.md) | 34 | `result-track:05577c4d8057e372ef169d3b8802fcea74ec3321a7eede9cff5bef3168041b24` |
| 2 | `lemma` | [infinite_iff_tendsto_sum_indicator_atTop](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean/declarations/infinite-iff-tendsto-sum-indicator-attop--cb86e992a545cc0c9870b395.md) | 47 | `result-track:cb86e992a545cc0c9870b395deda52de3e8941d4168bdfa8e3ad058de4603b54` |
| 3 | `lemma` | [limsup_eq_tendsto_sum_indicator_atTop](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variantbd3ff088a48da75bccc0dd552150a66f2f9ece2dcfd8f90cd7009d1093ecd462.lean/declarations/limsup-eq-tendsto-sum-indicator-attop--a23f14ea5e9797e4601c15b6.md) | 75 | `result-track:a23f14ea5e9797e4601c15b64f6e6b67cba69424315baf15538313ec13b3c4c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
