# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixRing.Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ecaf3671a3d66db5b51c1ea944728f596ba750e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ecaf3671a3d66db5b51c1ea944728f596ba750e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.RingState` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FixedMatrixRingState](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean/declarations/fixedmatrixringstate--40e31c241279301532ca2611.md) | 14 | `declaration-track:40e31c241279301532ca26116ef073e52853034526b07017e5d1d3286f2a2c81` |
| 2 | `def` | [selectedRowsObservation](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean/declarations/selectedrowsobservation--2b718bece87e3eb4befdfe46.md) | 19 | `declaration-track:2b718bece87e3eb4befdfe46c6ca0df7b5b4a052e0707c2bfb14061720b3d41e` |
| 3 | `def` | [selectedColumnsObservation](../../../../../mathematics/Algebra/LinearAlgebra/MatrixRing/Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c.lean/declarations/selectedcolumnsobservation--d6f3288a8d887c02d1a43056.md) | 26 | `declaration-track:d6f3288a8d887c02d1a430561b60d32e506e98e7b33782cc6848043c0721fedc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
