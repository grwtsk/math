# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcb280baacb9c0afdb38e10353ae5a9112ae863b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcb280baacb9c0afdb38e10353ae5a9112ae863b`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/declarations/complex-norm-eventually-eq-of-mdifferentiableat-of-islocalmax--4d81a3cd4364b7f45cd9676c.md) | 59 | `result-track:4d81a3cd4364b7f45cd9676c3162fba97d391c0f1d25b7357b309fdef9261268` |
| 2 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--d0b5fd5e9d3678fe79c563d7.md) | 91 | `result-track:d0b5fd5e9d3678fe79c563d70a8fbe3d1ad92d4be6823669d07be9900318d6d0` |
| 3 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--3dbbf9b884fc3ff920644244.md) | 116 | `result-track:3dbbf9b884fc3ff920644244f0799025b7065214a6f8de5cc185d65a6df96184` |
| 4 | `theorem` | [apply_eq_of_isPreconnected_isCompact_isOpen](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/declarations/apply-eq-of-ispreconnected-iscompact-isopen--d8712ea5cbcff8d9cf6dbd26.md) | 129 | `result-track:d8712ea5cbcff8d9cf6dbd267fcce0ee1dba2f3a124bb2b47e0e6363ecaf38b6` |
| 5 | `theorem` | [isLocallyConstant](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/declarations/islocallyconstant--7ec8f7418dffadb6260756f8.md) | 160 | `result-track:7ec8f7418dffadb6260756f897e26e6bd2954fbbb4bc455c9a3832c22420b84e` |
| 6 | `theorem` | [apply_eq_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/declarations/apply-eq-of-compactspace--d786dbf9faf3f403f5f555c9.md) | 169 | `result-track:d786dbf9faf3f403f5f555c9751e7e2d5903f91f44940c1a124c46b188994fbb` |
| 7 | `theorem` | [exists_eq_const_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/declarations/exists-eq-const-of-compactspace--0cf9a4bba251ccd504a5d434.md) | 175 | `result-track:0cf9a4bba251ccd504a5d43481bc4b26fa4acf05e6f19ae04eb442ae076548a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
