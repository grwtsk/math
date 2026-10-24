# Verification target: GRWTSK.LinearAlgebra.OrientedRealLine.FiniteComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f66deb4cb0654d61d5f05eaf3596512e635d3e5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/OrientedRealLine/FiniteComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f66deb4cb0654d61d5f05eaf3596512e635d3e5`.

Source path: `GRWTSK/LinearAlgebra/OrientedRealLine/FiniteComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/OrientedRealLine/FiniteComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale`](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteComparisonRepair](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean/declarations/finitecomparisonrepair--7e236883d7964bc2d817045f.md) | 25 | `declaration-track:7e236883d7964bc2d817045f0ad4f04c6dc46f61b506dba2e2e5607823604772` |
| 2 | `theorem` | [weighted_bound](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean/declarations/weighted-bound--103e3dc1d2b90caf72c64393.md) | 44 | `result-track:103e3dc1d2b90caf72c643935d0c61a098b99d3b18d033681175cded389877a7` |
| 3 | `theorem` | [weighted_degree_le](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/FiniteComparison.lean/declarations/weighted-degree-le--8fc9615ab0de286e7d1812f8.md) | 91 | `result-track:8fc9615ab0de286e7d1812f860f10624195097ba5c3d55d8730c13122d79766f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
