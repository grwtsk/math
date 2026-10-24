# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee24cd3fb1e15518edd12799ec4f10dd52967aad",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee24cd3fb1e15518edd12799ec4f10dd52967aad`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarPhaseInteger`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarPhaseInteger.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Instances.AddCircle.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle.Real` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitAddCircle_coe_eq_iff_integer](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/declarations/unitaddcircle-coe-eq-iff-integer--5ee53a6f31f5171448f0751f.md) | 33 | `result-track:5ee53a6f31f5171448f0751f746a9cdb83a7b534393c7dc01b450ad61fa4c850` |
| 2 | `theorem` | [polar_phase_eq_iff_unitAddCircle_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/declarations/polar-phase-eq-iff-unitaddcircle-eq--4c41e3543cff52290560675a.md) | 53 | `result-track:4c41e3543cff52290560675a8cbb2b6ddf7d4b802fe159b8272f03b64b6788d0` |
| 3 | `theorem` | [polar_eq_implies_unitAddCircle_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/declarations/polar-eq-implies-unitaddcircle-eq--b4d78a19958482c8262cf5df.md) | 61 | `result-track:b4d78a19958482c8262cf5df4f98b41ae1eb0d49ad22d0382dd156b8d30b802f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
