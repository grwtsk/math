# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarFundamentalCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dbda112ae4755e9d0715348e7497221a42fd225",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dbda112ae4755e9d0715348e7497221a42fd225`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactDescent`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Instances.AddCircle.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle.Real` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitAddCircle_unitInterval_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/declarations/unitaddcircle-unitinterval-surjective--a1eb822f98ab3e67aed81aff.md) | 40 | `result-track:a1eb822f98ab3e67aed81aff7c1cc1e36594732fcbbb2babe23df247f50cb57b` |
| 2 | `theorem` | [compactPolarProjection_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/declarations/compactpolarprojection-isquotientmap--b9366a605715536c7a2eae77.md) | 53 | `result-track:b9366a605715536c7a2eae779cc8c25f39544021c9768084628b81037cb522c7` |
| 3 | `theorem` | [polarProductProjection_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/declarations/polarproductprojection-isquotientmap--6918bb069f8b5dab6db9c48e.md) | 63 | `result-track:6918bb069f8b5dab6db9c48ec74ef43025f98122cb3ae6d34f3091a84c022918` |
| 4 | `theorem` | [unitCircleJointPolar_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/declarations/unitcirclejointpolar-continuous--98db7dc854824ac4835d5e75.md) | 73 | `result-track:98db7dc854824ac4835d5e75360ff2a585b40e9dd8150ef346d6aa41398f55f3` |
| 5 | `theorem` | [unitCircleJointPolar_existsUnique_continuous_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/declarations/unitcirclejointpolar-existsunique-continuous-source--94f2ca50ce59e964a57db1e9.md) | 83 | `result-track:94f2ca50ce59e964a57db1e920d78d163c806195a5aa16e879c88baa90164620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
