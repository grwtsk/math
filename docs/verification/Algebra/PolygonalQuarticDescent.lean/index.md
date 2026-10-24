# Verification target: GRWTSK.Algebra.PolygonalQuarticDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cb3d314c0b674ed563068610ef6fb08abd62de0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PolygonalQuarticDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/index.md) · [Full source](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cb3d314c0b674ed563068610ef6fb08abd62de0`.

Source path: `GRWTSK/Algebra/PolygonalQuarticDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PolygonalQuarticDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eOne](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/eone--fbcf5a2f29ac893e078a0c76.md) | 31 | `declaration-track:fbcf5a2f29ac893e078a0c767454ba617c67bc9b154fc83d1485ec7cde12504c` |
| 2 | `def` | [eTwo](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/etwo--e53472a239f036910884f6aa.md) | 32 | `declaration-track:e53472a239f036910884f6aae56f7c07ff4fab3ccb01c2d3856c6ce526ad7086` |
| 3 | `def` | [eThree](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/ethree--8870205bde12a2379786accd.md) | 34 | `declaration-track:8870205bde12a2379786accdd81dd79505f344aed363646bacc09c446d97d166` |
| 4 | `def` | [eFour](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/efour--dd7ae7cd27c5b286f8c5812a.md) | 36 | `declaration-track:dd7ae7cd27c5b286f8c5812a44e7e4ecbc1b5a9cacc084ec2631cd95e224cc61` |
| 5 | `def` | [qOne](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/qone--937323b8fc9836274f8b986b.md) | 38 | `declaration-track:937323b8fc9836274f8b986b3d531cf821c96a7896c1ced4ca53f31d530384a2` |
| 6 | `def` | [qTwo](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/qtwo--dc706c87e33b8eaa3c34317b.md) | 39 | `declaration-track:dc706c87e33b8eaa3c34317bdbdda4dd3d9c155396b14412234183c0f23d98f0` |
| 7 | `def` | [qThree](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/qthree--4a43701b6bd823ec7bb9a8e8.md) | 40 | `declaration-track:4a43701b6bd823ec7bb9a8e8f31dc12c2fc202dc1c25abb035ddf59619e179fa` |
| 8 | `theorem` | [matching_sum](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/matching-sum--4fec373d2bade9afcb8099bf.md) | 42 | `result-track:4fec373d2bade9afcb8099bffc315d68f1dc982a7e4830491f154b29bf6ac572` |
| 9 | `theorem` | [matching_pair_sum](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/matching-pair-sum--22ae2b16f1f37edd15cae5d9.md) | 48 | `result-track:22ae2b16f1f37edd15cae5d9597c164f2f14ab89be9b4097270d5836be2f62f1` |
| 10 | `theorem` | [matching_product](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/matching-product--dc813a2229dfb9cb07c75a5a.md) | 56 | `result-track:dc813a2229dfb9cb07c75a5afa00e127e4049153b77f9ff1ee1f23d0e08312e5` |
| 11 | `def` | [adjacencyOne](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacencyone--24efa1f76769c05d916fba5f.md) | 64 | `declaration-track:24efa1f76769c05d916fba5f0164c4d7b4c7d4c330da89d90e5978af984ea646` |
| 12 | `def` | [adjacencyTwo](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacencytwo--e1c19ca6d1c4605ca47f4e8a.md) | 65 | `declaration-track:e1c19ca6d1c4605ca47f4e8a5e97f842d92c92408d6294c4d819a7e80271b7b0` |
| 13 | `def` | [adjacencyThree](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacencythree--e539531d9faa2442e63c4fb7.md) | 66 | `declaration-track:e539531d9faa2442e63c4fb7b6b2a21b342700c0f886e25caa68fed46502a072` |
| 14 | `theorem` | [adjacency_sum](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacency-sum--dd0d741d2a50e42a48471a6d.md) | 68 | `result-track:dd0d741d2a50e42a48471a6d112bf666c807f6f948855c7047aeb1f6e7c04aa3` |
| 15 | `theorem` | [adjacency_pair_sum](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacency-pair-sum--b1998267cce474782e0f219e.md) | 75 | `result-track:b1998267cce474782e0f219ee8f1d20369c297359df46060cad57d01310c475b` |
| 16 | `theorem` | [adjacency_product](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacency-product--24e9e2acc0ad3834775d7e13.md) | 85 | `result-track:24e9e2acc0ad3834775d7e13c5d6241b201fa0780ecb7320ba44b74b50279a54` |
| 17 | `def` | [edge](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/edge--3e4ff21f2b3f12622e7134e9.md) | 98 | `declaration-track:3e4ff21f2b3f12622e7134e9005f452035936a3c12211ae3bca403c78e5cd79e` |
| 18 | `def` | [cyclicEdges](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/cyclicedges--7374e5cf6abb77c7642d4fb6.md) | 99 | `declaration-track:7374e5cf6abb77c7642d4fb69c12df4b6e638b357934a664955842422351924f` |
| 19 | `def` | [referenceCycles](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/referencecycles--5e98d7708a46b88eab49adb5.md) | 103 | `declaration-track:5e98d7708a46b88eab49adb5b8156cf8190d3c3d1d05078f5a61711ecc303c27` |
| 20 | `theorem` | [every_four_cycle_is_one_of_three](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/every-four-cycle-is-one-of-three--a1a6e6f57a911586bbf83935.md) | 108 | `result-track:a1a6e6f57a911586bbf839351bc9e3912e4239f68109e902ad05898f5be5d04c` |
| 21 | `theorem` | [referenceCycles_card](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/referencecycles-card--14aa882d83c730103809f05d.md) | 113 | `result-track:14aa882d83c730103809f05d0073e4a58bdcbccac089fb4032f00a56226f388a` |
| 22 | `def` | [adjacencyResolventFromVieta](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacencyresolventfromvieta--4431bf646e8afb116fc55f1e.md) | 121 | `declaration-track:4431bf646e8afb116fc55f1e834bd0c4fca38bdc5f4a4a37d19c43fd71a65bd2` |
| 23 | `def` | [adjacencyResolventFromRoots](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacencyresolventfromroots--0151f0c823f8782d6f03131b.md) | 127 | `declaration-track:0151f0c823f8782d6f03131b976f5fd4d558d85df8fe18aed2d3ab3a17c553e8` |
| 24 | `theorem` | [adjacencyResolvent_vieta](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacencyresolvent-vieta--f5c0b06825b0f3f7ef1f9e5c.md) | 132 | `result-track:f5c0b06825b0f3f7ef1f9e5c848a73ba1ec57bc793afbe7c7499e99f6206719c` |
| 25 | `def` | [quarticFromVieta](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/quarticfromvieta--0c90e18b853757e8f671e57a.md) | 144 | `declaration-track:0c90e18b853757e8f671e57a65caa1242cbbf686ef3167e65f0f05bcf67538da` |
| 26 | `theorem` | [four_linear_factors_vieta](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/four-linear-factors-vieta--63ba7339ee0337cdf27d197c.md) | 149 | `result-track:63ba7339ee0337cdf27d197c70c1ae7b1f9d7800bc40fb27a5c8f2603275fc40` |
| 27 | `def` | [adjacencyResolventOfMonicCoefficients](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacencyresolventofmoniccoefficients--c0d9dfb3aaaeaea2967c0f50.md) | 162 | `declaration-track:c0d9dfb3aaaeaea2967c0f50071aeebf0f848a362564d91a063c922cc4c50288` |
| 28 | `theorem` | [adjacencyResolvent_coefficient_substitution](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacencyresolvent-coefficient-substitution--f9ccfe4e94983dc6a30c628e.md) | 165 | `result-track:f9ccfe4e94983dc6a30c628e5fe7cca76c9f46ec16e1842ff794e6a8b81fb149` |
| 29 | `theorem` | [quartic_coefficients_of_factorization](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/quartic-coefficients-of-factorization--3690abf896bdee19e9a01019.md) | 177 | `result-track:3690abf896bdee19e9a01019f3d71eee6d976a07782445813ee5fe82ba1b6ba1` |
| 30 | `theorem` | [resolvent_of_actual_factored_quartic](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/resolvent-of-actual-factored-quartic--1e15b9e19ea437bbecdf5c15.md) | 213 | `result-track:1e15b9e19ea437bbecdf5c15f6098071fced463e7a865477491008f264046ef4` |
| 31 | `theorem` | [adjacencyResolvent_permutation](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/declarations/adjacencyresolvent-permutation--d3223a71b91ac95e73791987.md) | 232 | `result-track:d3223a71b91ac95e737919879634573c7c249602cf156f9c58f5b1c5d8c8d0cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
