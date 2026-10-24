# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f9efc9aa79056b1f07f3591e55c43c2258e64fb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f9efc9aa79056b1f07f3591e55c43c2258e64fb`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarJointContinuity.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Instances.AddCircle.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PolarCompactSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/declarations/polarcompactsource--1e2144e40ec8a9117aea0e4f.md) | 39 | `declaration-track:1e2144e40ec8a9117aea0e4f0fedb940f1d508c93cf0c60fa41d41f80701c4cc` |
| 2 | `def` | [compactPolarProjection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/declarations/compactpolarprojection--5d2340ffb0a8c86e8a3ee05e.md) | 43 | `declaration-track:5d2340ffb0a8c86e8a3ee05ee98dc24e415c25eda36651e6294927735bb0c14c` |
| 3 | `theorem` | [compactPolarProjection_factor](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/declarations/compactpolarprojection-factor--7b1286935c390ffd06dc1c64.md) | 49 | `result-track:7b1286935c390ffd06dc1c64217e71a56bec6790c3202ee0cc3566f286f2a950` |
| 4 | `theorem` | [compactPolarProjection_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/declarations/compactpolarprojection-continuous--58a8ee4211421e17c729bc95.md) | 53 | `result-track:58a8ee4211421e17c729bc954dbabd7fd8baf7f52570e0609a0423565869ed39` |
| 5 | `theorem` | [compactPolarSource_compact](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/declarations/compactpolarsource-compact--ffc90bdf51a55bfa7c35a211.md) | 60 | `result-track:ffc90bdf51a55bfa7c35a2115db90847e92f6310a621033ef0b6d9c926bfa2b5` |
| 6 | `theorem` | [compactPolarProjection_surjective_of_circle_cover](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/declarations/compactpolarprojection-surjective-of-circle-cover--bc063797ab2ef05d8dfcda3b.md) | 66 | `result-track:bc063797ab2ef05d8dfcda3b341779eef5f8cdfeebeac4350d03d4640e19336f` |
| 7 | `theorem` | [compactPolarProjection_isQuotientMap_of_cover](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/declarations/compactpolarprojection-isquotientmap-of-cover--a335f6411f69618879a5bb7b.md) | 77 | `result-track:a335f6411f69618879a5bb7b7cfc8e0cb3b782b794c79d37a7cf7c36607525c9` |
| 8 | `theorem` | [polarProductProjection_isQuotientMap_of_cover](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/declarations/polarproductprojection-isquotientmap-of-cover--14d54648c3cf6931f6bbbcd6.md) | 90 | `result-track:14d54648c3cf6931f6bbbcd6f1ff9754522176ca609c17835ca6118e92fce400` |
| 9 | `theorem` | [unitCircleJointPolar_continuous_of_cover](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/declarations/unitcirclejointpolar-continuous-of-cover--25ed0202659d047a0732ef62.md) | 108 | `result-track:25ed0202659d047a0732ef6208fb6c0d6286900f430f15de97d82678566cf211` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
