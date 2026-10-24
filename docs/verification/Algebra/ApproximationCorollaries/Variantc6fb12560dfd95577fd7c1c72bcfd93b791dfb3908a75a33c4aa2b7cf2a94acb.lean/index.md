# Verification target: GRWTSK.Algebra.ApproximationCorollaries.Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b7c8a85777d102036caaa6ca6da0b48517c9032",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ApproximationCorollaries/Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ApproximationCorollaries/Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb.lean/index.md) · [Full source](../../../../mathematics/Algebra/ApproximationCorollaries/Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b7c8a85777d102036caaa6ca6da0b48517c9032`.

Source path: `GRWTSK/Algebra/ApproximationCorollaries/Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ApproximationCorollaries/Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Approximations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.ConvergentsEquiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRightNhds` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_convs_eq_convs'](../../../../mathematics/Algebra/ApproximationCorollaries/Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb.lean/declarations/of-convs-eq-convs--1bb9cf5743bc36df1a966bab.md) | 47 | `result-track:1bb9cf5743bc36df1a966bab77b3f85fb0b88704fc709e404f76eecd2e92cee6` |
| 2 | `theorem` | [convs_succ](../../../../mathematics/Algebra/ApproximationCorollaries/Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb.lean/declarations/convs-succ--98426265526882864af17619.md) | 53 | `result-track:98426265526882864af17619913d0e96633376da170d5e6bc8c273188017f493` |
| 3 | `theorem` | [of_convergence_epsilon](../../../../mathematics/Algebra/ApproximationCorollaries/Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb.lean/declarations/of-convergence-epsilon--86b7890914efdfb4b5295f73.md) | 70 | `result-track:86b7890914efdfb4b5295f734dac378065322f111b22f92d76a7bedfd9153abf` |
| 4 | `theorem` | [of_convergence](../../../../mathematics/Algebra/ApproximationCorollaries/Variantc6fb12560dfd95577fd7c1c72bcfd93b791dfb3908a75a33c4aa2b7cf2a94acb.lean/declarations/of-convergence--3c81100e55b14c0df18a1dc3.md) | 115 | `result-track:3c81100e55b14c0df18a1dc3b31df23d0453120aa7692e8a88c522e9e3b8659e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
