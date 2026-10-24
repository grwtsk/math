# Verification target: GRWTSK.Analysis.PrismMesh.Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cf30650159e9d5d48157b92d94ea11924f0955f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/index.md) · [Full source](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cf30650159e9d5d48157b92d94ea11924f0955f`.

Source path: `GRWTSK/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.PrismCarrier` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MeshOrientation](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/meshorientation--45bfda34bc5d158d18c16a99.md) | 18 | `declaration-track:45bfda34bc5d158d18c16a99273f33e50ebbdc79a4689fc8154faeaefde3685a` |
| 2 | `structure` | [PrismMesh](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/prismmesh--74ed88defa4cb557e8805ce0.md) | 25 | `declaration-track:74ed88defa4cb557e8805ce075bb76716e53bdcb97d34b9345b99ec2eb5b0452` |
| 3 | `abbrev` | [ActiveCell](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/activecell--e09ad18cdbebcf6147bdca51.md) | 65 | `declaration-track:e09ad18cdbebcf6147bdca51b9fcc63bc376b6ae6c9eb9fd0ac6fd65ce5f7419` |
| 4 | `def` | [activeCellId](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/activecellid--a80dcbea2f161b99c2b0f304.md) | 69 | `declaration-track:a80dcbea2f161b99c2b0f304352e9ff5780fe7b3c834b92e16edce3748175bec` |
| 5 | `theorem` | [activeCellId_injective](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/activecellid-injective--3cfef4d707f52ab64af705cc.md) | 73 | `result-track:3cfef4d707f52ab64af705cc1712514a5e872b1bdc0a5cee21263099ace87857` |
| 6 | `theorem` | [activeCell_mem](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/activecell-mem--9a8e3e28dad40afc8b7db51b.md) | 78 | `result-track:9a8e3e28dad40afc8b7db51be93fb15b33fac58c975589181259ffbbc7272059` |
| 7 | `theorem` | [boundaryCell_active](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/boundarycell-active--67204e4a4787757e986a212b.md) | 85 | `result-track:67204e4a4787757e986a212bd329c41508794a8c186e53211e0afdccd169708d` |
| 8 | `theorem` | [boundaryCell_mem](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/boundarycell-mem--c5995d3b1668a69c4a3ba468.md) | 92 | `result-track:c5995d3b1668a69c4a3ba468c81581af98b8c83c448965086461b23f9b21ef1f` |
| 9 | `theorem` | [obstacleCell_active](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/obstaclecell-active--894513fd9ea2d880b91f911b.md) | 99 | `result-track:894513fd9ea2d880b91f911b61c8ed6921c66685de5917c2d5bc826aa449b289` |
| 10 | `theorem` | [obstacleCell_mem](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/obstaclecell-mem--15b770b2fef6c006b36bbd5c.md) | 106 | `result-track:15b770b2fef6c006b36bbd5cf2e336675a9315cf9ea33ff6fd0adb959de7a262` |
| 11 | `theorem` | [interpolation_partition_of_unity](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/interpolation-partition-of-unity--9c690e91b1c2dacfe1591c35.md) | 113 | `result-track:9c690e91b1c2dacfe1591c359413adc91146e048b1b7c21b03fdd3d5b68b1ee0` |
| 12 | `theorem` | [interpolationWeight_eq_zero_of_not_mem](../../../../mathematics/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/declarations/interpolationweight-eq-zero-of-not-mem--757deab9746d93fa2f6c5ae1.md) | 123 | `result-track:757deab9746d93fa2f6c5ae10b2f66953974c1309582e6988c5d65fe27473cb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
