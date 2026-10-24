# Verification target: GRWTSK.Analysis.Completion.Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "990268db0702ae345540de5c498504818c56cb79",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/index.md) · [Full source](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `990268db0702ae345540de5c498504818c56cb79`.

Source path: `GRWTSK/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/declarations/instance--366e746accc77c9bd476a481.md) | 45 | `declaration-track:366e746accc77c9bd476a481ea0e2eb03929f72e04a35d4d9386c737e430b359` |
| 2 | `def` | [toComplₗᵢ](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/declarations/tocompl--23a926b5999b1c7828b3cd57.md) | 55 | `declaration-track:23a926b5999b1c7828b3cd57eb5a7b59bd137f0b6c8ea687e9a9942c962561e6` |
| 3 | `theorem` | [coe_toComplₗᵢ](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/declarations/coe-tocompl--74fcd54719e543a250bf40d2.md) | 59 | `result-track:74fcd54719e543a250bf40d2aea305043fd735b912b78d3650b99200a6dea28b` |
| 4 | `lemma` | [toContinuousLinearMap_toComplₗᵢ](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/declarations/tocontinuouslinearmap-tocompl--bf5a5e0c425da9a05bed07df.md) | 62 | `result-track:bf5a5e0c425da9a05bed07dfe0e00cb0d43ac8b82c3a527c5f88ce656c40ab3a` |
| 5 | `theorem` | [norm_toComplL](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/declarations/norm-tocompll--15fac8dc48f666b4538ecc05.md) | 66 | `result-track:15fac8dc48f666b4538ecc058e63e93d8eeccc872fd3373fcd47075764228129` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/declarations/instance--9f378c45caacc10824486695.md) | 76 | `declaration-track:9f378c45caacc10824486695d05a033a612ab3e6ac40363ca03f6fc7a7a3b509` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/declarations/instance--50f05884588e56fd38add9bf.md) | 84 | `declaration-track:50f05884588e56fd38add9bf2d7d4a6d1ae6a09aa44911f1d19aebd8f08ea498` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/declarations/instance--843077a9c896f53f0437ccfe.md) | 88 | `declaration-track:843077a9c896f53f0437ccfe3d0f54ca6029efe732ba10e32b78406da5d45da8` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Varianta2d12b5dc2b685f891c3eb1f4afa7bb4a780da231ebec0c3db2d311cb8cae030.lean/declarations/instance--9bac4a74f04d868aa4122acd.md) | 92 | `declaration-track:9bac4a74f04d868aa4122acda09d468a3b3e64f2d45d5ce1e252bcabd5f3dbe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
