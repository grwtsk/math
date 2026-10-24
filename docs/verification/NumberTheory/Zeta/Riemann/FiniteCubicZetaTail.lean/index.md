# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.FiniteCubicZetaTail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9a10655c573ec4c0242dee5c72dc304387ebc38",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9a10655c573ec4c0242dee5c72dc304387ebc38`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.FiniteCubicZetaApproximation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaApproximation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.FiniteExponentialEnclosure`](../../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Complex.Liouville` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diskBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/declarations/diskbudget--553ade7ffab750c9f2372a6b.md) | 31 | `declaration-track:553ade7ffab750c9f2372a6bb0831e4c17322976822ec16a7425bfe70a09cb2d` |
| 2 | `theorem` | [diskBudget_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/declarations/diskbudget-nonneg--33970287053d1e13d54cf42f.md) | 35 | `result-track:33970287053d1e13d54cf42fa2bc38ff2941d806c47a595e9aab8182c1768324` |
| 3 | `theorem` | [norm_remainder_sub_prefix_le_square](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/declarations/norm-remainder-sub-prefix-le-square--8ea43c37155982f822bb3814.md) | 44 | `result-track:8ea43c37155982f822bb3814c30dfb8895a2a8b34ed56b3afa3f14a62179b414` |
| 4 | `theorem` | [norm_tail_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/declarations/norm-tail-le--d387300d783e3014198694af.md) | 60 | `result-track:d387300d783e3014198694af00267b6709bf921613ccb9b4a478dc7977b07694` |
| 5 | `theorem` | [re_nonneg_on_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/declarations/re-nonneg-on-disk--58caa61eb1bf93c8dda1c70d.md) | 69 | `result-track:58caa61eb1bf93c8dda1c70dea7dee519833b5092d15b338fe08f3a5712ee569` |
| 6 | `theorem` | [norm_tail_le_diskBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/declarations/norm-tail-le-diskbudget--5b2a9435a225b81ed3ba41d3.md) | 77 | `result-track:5b2a9435a225b81ed3ba41d37957b312d8d7a1c6dce88e4576b4cb7d78490004` |
| 7 | `theorem` | [norm_deriv_tail_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/declarations/norm-deriv-tail-le--b2e7077d6be90e5a63b8ea6b.md) | 99 | `result-track:b2e7077d6be90e5a63b8ea6b902cc4054e589ddce02ee01d095a6928099c3f94` |
| 8 | `theorem` | [value_and_slope_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/declarations/value-and-slope-bounds--37efa998562fad72d25f748d.md) | 112 | `result-track:37efa998562fad72d25f748d4d141bba9aaeb8a26b3e0b08c3a778645f1a9245` |
| 9 | `theorem` | [center_enclosures_of_finite](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteCubicZetaTail.lean/declarations/center-enclosures-of-finite--70c769d0517359a5c90d312c.md) | 124 | `result-track:70c769d0517359a5c90d312c096b6f70dc915272a0309ad8e7ed7e4be9178dbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
