# Verification target: GRWTSK.Algebra.GroupTheory.CohomologicalGluing.Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c61996d2481ccb955ae5c6b476636d5ed259b72b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c61996d2481ccb955ae5c6b476636d5ed259b72b`.

Source path: `GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.AffineTorusBundle` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Homology.FiberMetric` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Homology.PrincipalFiniteCover` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteGluingControl](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/declarations/finitegluingcontrol--3e2d9f5ef30fcf15c9cd8d1b.md) | 18 | `declaration-track:3e2d9f5ef30fcf15c9cd8d1b62fd3da6d1a683d4d5793070a5e20bf67f032105` |
| 2 | `structure` | [CoverTopologyChannel](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/declarations/covertopologychannel--a97686fadff0f19ff73dc959.md) | 33 | `declaration-track:a97686fadff0f19ff73dc95986e3300c0adee88fa9d250293c2604bec5235d14` |
| 3 | `structure` | [TorsionRoundedCover](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/declarations/torsionroundedcover--dc14884a7b0c11de21ad533a.md) | 51 | `declaration-track:dc14884a7b0c11de21ad533a23c96bc855ff70fcf0e97656688f45de443f8f94` |
| 4 | `def` | [withMetric](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/declarations/withmetric--1791086d5fd6f0c1bae5d157.md) | 74 | `declaration-track:1791086d5fd6f0c1bae5d157ba0761b1a614bf5ca082164f66f0933c8a04079d` |
| 5 | `theorem` | [withMetric_topology](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/declarations/withmetric-topology--6fc3e3bd83309c49b6bdb51f.md) | 83 | `result-track:6fc3e3bd83309c49b6bdb51fc92edef4aa9b15b99d39378c75a6c908554aff74` |
| 6 | `def` | [withTopology](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/declarations/withtopology--5c17a1c437059e57511e7ccc.md) | 92 | `declaration-track:5c17a1c437059e57511e7ccc122f29a462ebd6a4a1422318ebbeda3dfdfa01d9` |
| 7 | `theorem` | [withTopology_metric](../../../../../mathematics/Algebra/GroupTheory/CohomologicalGluing/Varianta2c26b2d65b839b14ba58e857f6460ffbf64f69269e8711a3205572d947e9a24.lean/declarations/withtopology-metric--a60ffa78dee6745b6e9e4027.md) | 102 | `result-track:a60ffa78dee6745b6e9e402773416a8c50dbb6ce683059e2a098b21f481a2d1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
