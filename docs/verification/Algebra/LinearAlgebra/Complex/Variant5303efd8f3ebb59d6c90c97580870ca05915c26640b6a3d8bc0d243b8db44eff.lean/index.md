# Verification target: GRWTSK.Algebra.LinearAlgebra.Complex.Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "599d8c47caf6c2d2e57e23a383eafef455c34e20",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `599d8c47caf6c2d2e57e23a383eafef455c34e20`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isometryEquivSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean/declarations/isometryequivsumsquares--c472c7ac44ef38e85b1e08da.md) | 28 | `declaration-track:c472c7ac44ef38e85b1e08dab1a247d3b15efa9950dc39af89a1061f7e3eebba` |
| 2 | `def` | [isometryEquivSumSquaresUnits](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean/declarations/isometryequivsumsquaresunits--95f59cbdcc1ca08c5c61bc92.md) | 65 | `declaration-track:95f59cbdcc1ca08c5c61bc92d32cc06ee9443047f898201d626d93c94123663c` |
| 3 | `theorem` | [equivalent_sum_squares](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean/declarations/equivalent-sum-squares--7b379a1afa18403196be240d.md) | 71 | `result-track:7b379a1afa18403196be240dbffb9bce8e8da6520044a40bca88a397c2fdc7d8` |
| 4 | `theorem` | [complex_equivalent](../../../../../mathematics/Algebra/LinearAlgebra/Complex/Variant5303efd8f3ebb59d6c90c97580870ca05915c26640b6a3d8bc0d243b8db44eff.lean/declarations/complex-equivalent--f64e5a04f0162eedc14ac2dc.md) | 78 | `result-track:f64e5a04f0162eedc14ac2dc6bf236617c10f4c7912773ee2362cf590ab8b25e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
