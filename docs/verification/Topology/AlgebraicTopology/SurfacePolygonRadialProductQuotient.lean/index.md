# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialProductQuotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d802f5d2a36f7883d66948270457486c57faeb15",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d802f5d2a36f7883d66948270457486c57faeb15`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonJointRadialDescent`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonJointRadialDescent.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Separation.Hausdorff` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/declarations/cornerdiscretetopology--f3d1367167a7e13ae279f101.md) | 42 | `declaration-track:f3d1367167a7e13ae279f10120962e7f4a65e51aed3e1a22f1fe950f08a387d9` |
| 2 | `theorem` | [boundaryPointCompact](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/declarations/boundarypointcompact--a2d12a8090f637c62e8afd45.md) | 47 | `result-track:a2d12a8090f637c62e8afd45ff99bf906097fb3afeb337845c0bb0af76b2f928` |
| 3 | `theorem` | [perimeterT2](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/declarations/perimetert2--19050a695e0faa96c1a504ff.md) | 52 | `result-track:19050a695e0faa96c1a504ff5935d48f9e1cd08fd6b14ba36f1b0108b58b35cf` |
| 4 | `theorem` | [radialProductCompact](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/declarations/radialproductcompact--ba5f5a93275b8630313d9f5f.md) | 60 | `result-track:ba5f5a93275b8630313d9f5f7a3f42db97c1fe685a9ae908b123c4114e0bd5fc` |
| 5 | `theorem` | [perimeterProductProjection_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/declarations/perimeterproductprojection-continuous--9a17edc62e922f013cfbe561.md) | 67 | `result-track:9a17edc62e922f013cfbe56197b5353324a381c40a227dbfd33eceaf75980327` |
| 6 | `theorem` | [perimeterProductProjection_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/declarations/perimeterproductprojection-surjective--5dbcf9b7622340accdd7b04f.md) | 75 | `result-track:5dbcf9b7622340accdd7b04f5d840ad722e70826baab98c951b9280739ce73ad` |
| 7 | `theorem` | [perimeterProductProjection_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/declarations/perimeterproductprojection-isquotientmap--9e68b524d8e7201b5cdf9e56.md) | 85 | `result-track:9e68b524d8e7201b5cdf9e5662176a7eb8c2594cf61c4a9732eacb5900a40a86` |
| 8 | `theorem` | [perimeterJointRadialMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/declarations/perimeterjointradialmap-continuous--fdecf8afd37e7b637babd0a8.md) | 96 | `result-track:fdecf8afd37e7b637babd0a83fd5945bb2e2f0f76c0ec1019d5e12d675265588` |
| 9 | `theorem` | [unitCircleJointRadialMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialProductQuotient.lean/declarations/unitcirclejointradialmap-continuous--0417d2508eb951298c88cd2f.md) | 103 | `result-track:0417d2508eb951298c88cd2f6cc35b066eab223c5407968fc74a8b23c0eb0586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
