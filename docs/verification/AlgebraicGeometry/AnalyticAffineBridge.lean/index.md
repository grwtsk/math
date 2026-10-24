# Verification target: GRWTSK.AlgebraicGeometry.AnalyticAffineBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a4b9d131b2e64b2d34763459bd64a51985ba33c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/AnalyticAffineBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/index.md) · [Full source](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a4b9d131b2e64b2d34763459bd64a51985ba33c`.

Source path: `GRWTSK/AlgebraicGeometry/AnalyticAffineBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/AnalyticAffineBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicEvaluationSpectrum`](../../../mathematics/Analysis/Complex/HolomorphicEvaluationSpectrum.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Topology.PortFiber.Basic`](../../../mathematics/Topology/PortFiber/Basic.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Bridge](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/bridge--536f7a016272959188d8d7c8.md) | 17 | `declaration-track:536f7a016272959188d8d7c8bd0b6ac788be6a5452d57aa34d0b8ab4e8dac85f` |
| 2 | `def` | [pointMap](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/pointmap--93dd95e8cf0d759957c0450a.md) | 24 | `declaration-track:93dd95e8cf0d759957c0450a34dcd6d021147dabf72da5bf8d8dd46908d713c5` |
| 3 | `def` | [precomp](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/precomp--827fe84f44229a68609e9b70.md) | 29 | `declaration-track:827fe84f44229a68609e9b708be355bbae50b2c26514ebf2499e8493edb9556a` |
| 4 | `theorem` | [pointMap_precomp](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/pointmap-precomp--a53867346163ef9a8840e661.md) | 34 | `result-track:a53867346163ef9a8840e66122984b1ca30e62605e93bbb1d26a5b4a51cfed5f` |
| 5 | `def` | [restrict](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/restrict--aadba4b54d171b19438c7367.md) | 41 | `declaration-track:aadba4b54d171b19438c7367060369d03206aca56927d04bdaade2d5132233ac` |
| 6 | `theorem` | [pointMap_restrict](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/pointmap-restrict--fee888de210bf6acf2f0eb73.md) | 46 | `result-track:fee888de210bf6acf2f0eb7357396e055d8e0733d29c89d531afe3a065ea58dc` |
| 7 | `theorem` | [restrict_precomp](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/restrict-precomp--98bff8baf30333fac1a6d93e.md) | 59 | `result-track:98bff8baf30333fac1a6d93edfff21eaa71ea9dce3152f2d3342a9879e67c801` |
| 8 | `def` | [identity](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/identity--429d304761a5102064a5db22.md) | 66 | `declaration-track:429d304761a5102064a5db2215886174e3968375ee5b3f94dc798b5485e8dd65` |
| 9 | `theorem` | [identity_pointMap](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/identity-pointmap--0ae104fd7d4370923909a12d.md) | 71 | `result-track:0ae104fd7d4370923909a12d9165f43ac186674a389f146550b07fb909d14949` |
| 10 | `structure` | [SourceBoundBridge](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/sourceboundbridge--ea08b0116919a4dddaf9e85e.md) | 79 | `declaration-track:ea08b0116919a4dddaf9e85e00aea8cda58d934d52b11c2b573689f1d6c21508` |
| 11 | `theorem` | [restrictionPath_pointMap](../../../mathematics/AlgebraicGeometry/AnalyticAffineBridge.lean/declarations/restrictionpath-pointmap--d6b08853074016ee8a277b12.md) | 90 | `result-track:d6b08853074016ee8a277b12788687d82f79f6d4eb6bc35ba07af326931daac4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
