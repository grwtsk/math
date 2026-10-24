# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventKernelAudit.Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcd44305c17b02c282f721147dc2c2bf460ef01b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcd44305c17b02c282f721147dc2c2bf460ef01b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveshift--eb8f9ccccb8b5d69d930caff.md) | 29 | `declaration-track:eb8f9ccccb8b5d69d930caff7eda649312ec326164d9abe5f945d74f038ec8f0` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveshift-ispositive--740712208ca23a93bbd5c6b9.md) | 33 | `result-track:740712208ca23a93bbd5c6b99409e92d0b7c3aa35f83dddd91781f653d89c13f` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveshift-coercive--934838ea17678783d67892c5.md) | 40 | `result-track:934838ea17678783d67892c52926118bf589614a0c44730c2dae50525e33710a` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveshift-isunit--0b86d88715d7850fd12c1fc8.md) | 55 | `result-track:0b86d88715d7850fd12c1fc84a7719c5c2ad1c4e4eacb616b2f8e22277dfd455` |
| 5 | `def` | [positiveResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveresolvent--614e68121b173a7df5abc007.md) | 66 | `declaration-track:614e68121b173a7df5abc0079a6b9b82e922d866b1f1290576dde1e15930b643` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveshift-mul-resolvent--3384dbba01e7c9c5bab74bb9.md) | 70 | `result-track:3384dbba01e7c9c5bab74bb9611a252c2e6c18036fa4ad703d24c79550c9e2ac` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/resolvent-mul-positiveshift--699fd1b2d7e8a8b60a636846.md) | 75 | `result-track:699fd1b2d7e8a8b60a636846ddbd980f1ebd7c234b52ab6631bc190fe8962ee0` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveshift-resolvent-apply--9381fa85fc99b59c4d674aca.md) | 80 | `result-track:9381fa85fc99b59c4d674aca8897bf68767f4c24355f03558e720d2c9e04d030` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveresolvent-norm-le--7a6fe720df5adda3bbb0ae56.md) | 87 | `result-track:7a6fe720df5adda3bbb0ae56cea1633fd9083a5107a29d86b741d652c57621cb` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveresolvent-ispositive--491e4d5a468ecbd64bd608a1.md) | 103 | `result-track:491e4d5a468ecbd64bd608a19d66930e3d3f557dffdf0589978edf5cc1f22174` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveresolvent-sub--00f1691b74341e3571aae69f.md) | 114 | `result-track:00f1691b74341e3571aae69ff337350938842be36ef8f5088089bd02d7ba257e` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positiveresolvent-sub-norm-le--2722ab093dfa5e710f4fed38.md) | 126 | `result-track:2722ab093dfa5e710f4fed38b224ab0eee6e8965dbd551c1b4eeeeeffda153cc` |
| 13 | `def` | [regularizedMass](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/regularizedmass--b63e7d7c9359f6c9cb23162c.md) | 140 | `declaration-track:b63e7d7c9359f6c9cb23162c43995e0dde216ea3f04331607ccfe5ef9e09c2b9` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/abs-re-inner-map-le--9cbc23b1981896d199cb1971.md) | 144 | `result-track:9cbc23b1981896d199cb1971d693da8ce8c755bf6d29396dc1b3d728ace326ef` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/regularizedmass-sub-abs-le--5ee747b7bef048564324aecd.md) | 153 | `result-track:5ee747b7bef048564324aecdc59542655757fd8184ee5e16c153aa98321746a2` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/reference-regularizedmass-sub-abs-le--a90e90c7582449688ea58eb1.md) | 173 | `result-track:a90e90c7582449688ea58eb1b9bd4d12a8af95789151e490fdecec787643d07e` |
| 17 | `theorem` | [positive_fixed_direction_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/positive-fixed-direction-le--c54d2d62c4bb088501601d38.md) | 198 | `result-track:c54d2d62c4bb088501601d3858907a684f3d4c07e5be742bc939a2b2c09e013d` |
| 18 | `theorem` | [regularized_resolvent_kernel_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/regularized-resolvent-kernel-apply--96ddda789e19502856a7e15f.md) | 231 | `result-track:96ddda789e19502856a7e15f00d920687f5988ed3e352a2fd6bf55bc082008da` |
| 19 | `theorem` | [kernel_witness_regularizedMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/declarations/kernel-witness-regularizedmass-le--09279ccf72a04988aa109bfb.md) | 239 | `result-track:09279ccf72a04988aa109bfbeb009885a0928e6b61dd4ddb4e2fe67e32a8901b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
