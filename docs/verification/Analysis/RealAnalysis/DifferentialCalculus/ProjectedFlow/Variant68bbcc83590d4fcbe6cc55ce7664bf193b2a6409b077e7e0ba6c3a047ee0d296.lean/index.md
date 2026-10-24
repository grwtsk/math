# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ProjectedFlow.Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b004d8c799dcfcf12e563614dad50302d1d4754",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b004d8c799dcfcf12e563614dad50302d1d4754`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteFeasibleGraph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/finitefeasiblegraph--cf1dad5690b606fc9b6b849e.md) | 15 | `declaration-track:cf1dad5690b606fc9b6b849e3f0bb3870cb7b7ddad54b4734eff53985f70ae9c` |
| 2 | `structure` | [FeasibleProbabilityVector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/feasibleprobabilityvector--cdb16f006c6eeebedb3b4a8c.md) | 22 | `declaration-track:cdb16f006c6eeebedb3b4a8cf06b96d8a861c223ea24dc21231c25f541508fe9` |
| 3 | `structure` | [ProjectedTransitionOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/projectedtransitionoperator--9145daf130cc6d09792cf60d.md) | 29 | `declaration-track:9145daf130cc6d09792cf60d1a9f9e07a110599b6950c370181d50f8b0513c87` |
| 4 | `structure` | [FeasibleBoundaryChecker](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/feasibleboundarychecker--7c131b0b8b58e5d109c9646e.md) | 36 | `declaration-track:7c131b0b8b58e5d109c9646ea56270855a2960ec74443d08b04f6f3f0c1ad7af` |
| 5 | `structure` | [ProjectedFlowCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/projectedflowcertificate--a743022e37602c65bee36194.md) | 42 | `declaration-track:a743022e37602c65bee36194d5f38ec9fef4332b1f29f0c365e7087ba472193f` |
| 6 | `def` | [ProjectedFlowCertificate.sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/projectedflowcertificate-sound--59450fe43a8867bcbf272020.md) | 49 | `declaration-track:59450fe43a8867bcbf272020b64fe50d3c7bcf6b72d36bdfda0283eb4192f9bb` |
| 7 | `theorem` | [projected_flow_preserves_feasibility](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/projected-flow-preserves-feasibility--3eea32327308ce4ecf8c05e8.md) | 56 | `result-track:3eea32327308ce4ecf8c05e8ff019a78e992b661900a960d04c9e22be827c1b2` |
| 8 | `theorem` | [projected_flow_preserves_zero_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/projected-flow-preserves-zero-boundary--37dbeb5892c7331c0c734fec.md) | 64 | `result-track:37dbeb5892c7331c0c734fec9fa8b6004aa3f690ec66ef182537abec76859445` |
| 9 | `theorem` | [projected_flow_certificate_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/projected-flow-certificate-sound--7ea3e96a371e1ceac2f40efe.md) | 70 | `result-track:7ea3e96a371e1ceac2f40efe5f18b88863eb99306ed5c34d6dd2a812ff40e60f` |
| 10 | `theorem` | [projected_flow_through_boundary_calculus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/projected-flow-through-boundary-calculus--1c74d3abba70b28d9b354587.md) | 78 | `result-track:1c74d3abba70b28d9b354587611835ce07667f3842ab30923d092f2a4de66cb3` |
| 11 | `def` | [FullStateFlowWithoutProjectionOwnsProjectedFeasibility](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/fullstateflowwithoutprojectionownsprojectedfeasibility--b19143c3fce527e4ddc79ce8.md) | 84 | `declaration-track:b19143c3fce527e4ddc79ce8fc63a3d98340b755d40ee3b8461f0a03d7147751` |
| 12 | `theorem` | [full_state_flow_without_projection_authority_attempt_fails](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ProjectedFlow/Variant68bbcc83590d4fcbe6cc55ce7664bf193b2a6409b077e7e0ba6c3a047ee0d296.lean/declarations/full-state-flow-without-projection-authority-attempt-fails--aaa01509ee12957ab490836e.md) | 89 | `result-track:aaa01509ee12957ab490836e0ef7e3a62c9af321540a2b4c1ec5db1bb5005880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
