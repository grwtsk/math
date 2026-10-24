# Verification target: GRWTSK.Geometry.Hodge.RationalCycleCellular

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02308219aad0658167bb756fd418a815bb7e261d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/RationalCycleCellular.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02308219aad0658167bb756fd418a815bb7e261d`.

Source path: `GRWTSK/Geometry/Hodge/RationalCycleCellular.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/RationalCycleCellular.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.FramedFiberPort`](../../../../mathematics/Algebra/LinearAlgebra/FramedFiberPort.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SourceIdentity](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/sourceidentity--33182e77090f7c2f19120d90.md) | 8 | `declaration-track:33182e77090f7c2f19120d90f26512b32f80777d3e2b46723c526bcf5ef989cb` |
| 2 | `structure` | [SourceBoundGlobalTheorem](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/sourceboundglobaltheorem--97059a3e3eac98254f805130.md) | 19 | `declaration-track:97059a3e3eac98254f805130023039ac61606329db3b34ebcf379186a887b536` |
| 3 | `theorem` | [specialize](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/specialize--e8293d7984312e6e2c30a2f8.md) | 29 | `result-track:e8293d7984312e6e2c30a2f8918620fd14baf6e61494d9c58dce846ba42e2fb1` |
| 4 | `structure` | [RationalHodgeData](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/rationalhodgedata--1bf7875e5a5308c4aaf0b7f4.md) | 40 | `declaration-track:1bf7875e5a5308c4aaf0b7f4d74024ad754e2d4ff513a093e810a870e26af745` |
| 5 | `def` | [IsSurjective](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/issurjective--faa3831b8f658206deaeec23.md) | 54 | `declaration-track:faa3831b8f658206deaeec2347302d5f18f1b5b8ad564626585eed43cb34e41a` |
| 6 | `structure` | [CycleWitness](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/cyclewitness--0d7d5fa62c66f84ae5e93cbb.md) | 58 | `declaration-track:0d7d5fa62c66f84ae5e93cbbca3ba5b99da806915fff55874d8db7d1af6af09f` |
| 7 | `theorem` | [cycleWitness_of_surjective](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/cyclewitness-of-surjective--9d0c9bd5fcf2fdeb1515f08b.md) | 63 | `result-track:9d0c9bd5fcf2fdeb1515f08b3888bd460415233de4f76b30711985cbde6e7cde` |
| 8 | `structure` | [SourceBoundRationalHodgeTheorem](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/sourceboundrationalhodgetheorem--f4ac335e81e0b57931061d2b.md) | 75 | `declaration-track:f4ac335e81e0b57931061d2bd35558d490a03620473df9f6f307cf8b090c4d1b` |
| 9 | `def` | [openAICMRationalHodgeSource](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/openaicmrationalhodgesource--23f8f0865d4472d9bb2d3ce5.md) | 89 | `declaration-track:23f8f0865d4472d9bb2d3ce503c4b1fece52cb946f549477a7377f2abb1b5abe` |
| 10 | `structure` | [CycleCellularComparison](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/cyclecellularcomparison--34cf5cf6938da7ac1aff3acf.md) | 98 | `declaration-track:34cf5cf6938da7ac1aff3acff0daf60cc30b83f0780608f52c6d0891fbb1adcd` |
| 11 | `theorem` | [cycleToCell_apply](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/cycletocell-apply--5a73dbc52372b6140bff8a89.md) | 118 | `result-track:5a73dbc52372b6140bff8a89ad4bc078783e2d370425bc8f3c1e4bd64d049a96` |
| 12 | `structure` | [CellularHarmonicRealization](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/cellularharmonicrealization--9ca1d24739f8fb34cbe3e008.md) | 131 | `declaration-track:9ca1d24739f8fb34cbe3e008f30215cc5ff7f8fee1e91e0d65371a9f7913f571` |
| 13 | `structure` | [RationalHodgeCellularAdapter](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/rationalhodgecellularadapter--e229b3ad1f6bd8ddd9421614.md) | 142 | `declaration-track:e229b3ad1f6bd8ddd9421614d044e48972ec5d94503d46f8c9b5ae38e9be899e` |
| 14 | `theorem` | [exists_cycle_and_harmonic](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/exists-cycle-and-harmonic--2405c0aae01d77a9521d0c2d.md) | 170 | `result-track:2405c0aae01d77a9521d0c2db61ed409a86bfaac9f6a2aa1a37ad355a351522f` |
| 15 | `def` | [lineHodgeData](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/linehodgedata--a9e7e6a6ac2570a473ff6c52.md) | 186 | `declaration-track:a9e7e6a6ac2570a473ff6c520768e6d370ce0c4751eda12becdaed8e77c2b482` |
| 16 | `theorem` | [lineHodgeData_surjective](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/linehodgedata-surjective--6773e1b1ba35b54b0f8f53b7.md) | 189 | `result-track:6773e1b1ba35b54b0f8f53b75cbe584d71dc65c26eb5d4a89714727fd776da86` |
| 17 | `def` | [lineSourceTheorem](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/linesourcetheorem--129cb113bfb8f6cf2f9b37ab.md) | 193 | `declaration-track:129cb113bfb8f6cf2f9b37ab30c5e3c033acbab223f0731a6cff26161b6c67e6` |
| 18 | `def` | [lineComparison](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/linecomparison--3576e09cd867242c5f6a65fc.md) | 204 | `declaration-track:3576e09cd867242c5f6a65fcbc66f9eeb09ac1ba0c66e3d91b3b4de5dd680370` |
| 19 | `def` | [lineZeroHodge](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/linezerohodge--9e14a9c5a4ebdcbe6213a55f.md) | 209 | `declaration-track:9e14a9c5a4ebdcbe6213a55f4d90e6c99f0d1012364d2bceebbdedef40788fba` |
| 20 | `def` | [lineHarmonicRealization](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/lineharmonicrealization--893e9aa9298e10119d12f66d.md) | 213 | `declaration-track:893e9aa9298e10119d12f66d11a3833340749213848f53d763ee5114bdec71ae` |
| 21 | `def` | [lineAdapter](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/lineadapter--d75364ce89b79a72a1e49b0e.md) | 220 | `declaration-track:d75364ce89b79a72a1e49b0ed12395d719c207486435c6f6c92d21d41ead95ad` |
| 22 | `theorem` | [lineAdapter_realizes](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/declarations/lineadapter-realizes--faa2cba5d9de6899560fbb56.md) | 227 | `result-track:faa2cba5d9de6899560fbb569542bae12aa7a4d7c9499bee78bc19b9f41848b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
