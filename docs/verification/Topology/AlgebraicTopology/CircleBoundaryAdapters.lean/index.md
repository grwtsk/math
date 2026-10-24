# Verification target: GRWTSK.Topology.AlgebraicTopology.CircleBoundaryAdapters

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b22de388d2619b8897cb02a1276ff6def0abe69",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b22de388d2619b8897cb02a1276ff6def0abe69`.

Source path: `GRWTSK/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Sphere` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitAddCircleToComplexCircle](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/declarations/unitaddcircletocomplexcircle--54944fd3bada1f6374f9dfa9.md) | 25 | `declaration-track:54944fd3bada1f6374f9dfa986e512b345081003a7693dfc9be2fe5a1eebe42f` |
| 2 | `theorem` | [unitAddCircleToComplexCircle_apply](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/declarations/unitaddcircletocomplexcircle-apply--013369d607dbc2d1928f739c.md) | 30 | `result-track:013369d607dbc2d1928f739cd2cd98ad3c81797e2ef946d7735585588761ae61` |
| 3 | `theorem` | [unitAddCircleToComplexCircle_bijective](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/declarations/unitaddcircletocomplexcircle-bijective--6c7c83a6ad6cbc384cd345b3.md) | 35 | `result-track:6c7c83a6ad6cbc384cd345b3ae33eea5164d8762adf9820c879e5989d4e6f56c` |
| 4 | `abbrev` | [EuclideanClosedDisk](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/declarations/euclideancloseddisk--3c67277bc9130c3f6319ed22.md) | 41 | `declaration-track:3c67277bc9130c3f6319ed229ae73dd18279058af5d4f0d4162939ce8d8d81f0` |
| 5 | `abbrev` | [EuclideanDiskBoundary](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/declarations/euclideandiskboundary--657dc9092f2b94584a881b3d.md) | 44 | `declaration-track:657dc9092f2b94584a881b3dcbee5df6c16055be8c12b20e7c932df8bd4ddb36` |
| 6 | `def` | [BoundaryCompatible](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/declarations/boundarycompatible--b8216ef9c4681ecf855169d5.md) | 50 | `declaration-track:b8216ef9c4681ecf855169d54d6cb84f5f3d238b7c0bc2dbbf45091745e1cc2c` |
| 7 | `theorem` | [boundaryCompatible_iff](../../../../mathematics/Topology/AlgebraicTopology/CircleBoundaryAdapters.lean/declarations/boundarycompatible-iff--709d89aabfaf8fe550dda652.md) | 56 | `result-track:709d89aabfaf8fe550dda652f56d0c6408d66826f393a8203025616795d1235a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
