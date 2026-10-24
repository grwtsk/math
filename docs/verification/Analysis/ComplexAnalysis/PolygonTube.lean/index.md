# Verification target: GRWTSK.Analysis.Complex.PolygonTube

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d69089dae09fd0f1bbae5ee2c19fa164ade031c5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/PolygonTube.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d69089dae09fd0f1bbae5ee2c19fa164ade031c5`.

Source path: `GRWTSK/Analysis/Complex/PolygonTube.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/PolygonTube.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Convex` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Norm` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blend](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/blend--5c944f2c13f22146be6d3210.md) | 24 | `declaration-track:5c944f2c13f22146be6d3210e7d7a08625925de71b12daa441a214c8f029c1db` |
| 2 | `theorem` | [blend_zero](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/blend-zero--5ffecadee3361c756d277382.md) | 26 | `result-track:5ffecadee3361c756d277382d9a5579a4bf2b6430ca4c6c4f40936732d865fe0` |
| 3 | `theorem` | [blend_one](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/blend-one--acf6197b4585a19f8ace48cc.md) | 27 | `result-track:acf6197b4585a19f8ace48ccc5fa0663ebd927fb85f3f2c242737ffb7eddfcc9` |
| 4 | `theorem` | [blend_self](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/blend-self--72040d934d3e3e53372b1cb1.md) | 28 | `result-track:72040d934d3e3e53372b1cb15f0f4aa87eea9305ee58553ceb6e92977a7187da` |
| 5 | `theorem` | [blend_mem_closedBall](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/blend-mem-closedball--c9fc86bacb41ab64874f31a6.md) | 32 | `result-track:c9fc86bacb41ab64874f31a6d5a9ca46fb70711e93cde9837dd300d879a04d5d` |
| 6 | `theorem` | [norm_blend_sub_le](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/norm-blend-sub-le--150d4ecf426b4a792b575e8a.md) | 37 | `result-track:150d4ecf426b4a792b575e8ab9fd9958d091b8708a6ee5aade3cf8f82cde3c0d` |
| 7 | `def` | [carrier](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/carrier--1b70ff87ee66bb290da3342a.md) | 45 | `declaration-track:1b70ff87ee66bb290da3342a7d7901c5660e7198e7b5cd715962d22b8f0b365b` |
| 8 | `theorem` | [edge_mem_carrier](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/edge-mem-carrier--55f4bfe04a4c404c6fce41ab.md) | 48 | `result-track:55f4bfe04a4c404c6fce41ab94d10c0b98bde688a0afee236a6392a1abb719f4` |
| 9 | `theorem` | [first_mem_carrier](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/first-mem-carrier--d4784c954531d72e7cfb28c5.md) | 52 | `result-track:d4784c954531d72e7cfb28c57dc08aea40ea2daaa05a74d4f24428b823b5c9b9` |
| 10 | `theorem` | [empty_carrier](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/empty-carrier--ddff59383e8c1659fe19cc58.md) | 55 | `result-track:ddff59383e8c1659fe19cc5898bfd2e09e04c7ec35fcf35d3920dde37be568ae` |
| 11 | `def` | [deformation](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/deformation--444fee1fb6f2cd92c53203ed.md) | 61 | `declaration-track:444fee1fb6f2cd92c53203ed869a6372b9dc74e4356fb4be93ba1f43480f66fa` |
| 12 | `theorem` | [deformation_source](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/deformation-source--03bca9facffd27e218b64ec9.md) | 64 | `result-track:03bca9facffd27e218b64ec96f973c4ee8c6e5ff0244ad203abf61f84c3010c2` |
| 13 | `theorem` | [deformation_polygon](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/deformation-polygon--e34f50fb9db1d08865fe67bd.md) | 67 | `result-track:e34f50fb9db1d08865fe67bd44702a4076d5b1c3e935547c748d7f1bddc32137` |
| 14 | `theorem` | [deformation_start](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/deformation-start--2f6531a77474a88ba914c327.md) | 70 | `result-track:2f6531a77474a88ba914c3272067fa5637b70e01b35ac7990cbda144f32a1bd3` |
| 15 | `theorem` | [deformation_finish](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/deformation-finish--03e7e43e813e628c5e8bf229.md) | 73 | `result-track:03e7e43e813e628c5e8bf229ac99956ef2cb9d54aa44e82b678c6d89b34683ba` |
| 16 | `theorem` | [deformation_continuous](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/deformation-continuous--7c0aca099bbf5d60bdce436e.md) | 76 | `result-track:7c0aca099bbf5d60bdce436eb532fcc33cc45331f90563419025d8874edbae49` |
| 17 | `theorem` | [deformation_bound](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/deformation-bound--8b217746ae6a5056e8ee99da.md) | 82 | `result-track:8b217746ae6a5056e8ee99da0378110d50ab9a5e382527dd9639472153482673` |
| 18 | `theorem` | [deformation_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/deformation-nonzero--1640240c1d8507f3ea204eda.md) | 89 | `result-track:1640240c1d8507f3ea204eda47c28c5ed68035ef7113a0d6a19aab2b73a2a889` |
| 19 | `theorem` | [adjacent_seam](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/adjacent-seam--a49762d102ed3f0b287af2cf.md) | 100 | `result-track:a49762d102ed3f0b287af2cfacc48df33955eaa3e02b699a36175f8bc459d235` |
| 20 | `theorem` | [closing_seam](../../../../mathematics/Analysis/ComplexAnalysis/PolygonTube.lean/declarations/closing-seam--7b459ec8f1d9a47893d602cc.md) | 104 | `result-track:7b459ec8f1d9a47893d602cc86f565de0127ca005032fe80f1c37d39c9839937` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
