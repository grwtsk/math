# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointLogRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c08f947c11d29aaa1ec5ed47c6ece6f0348b4d8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c08f947c11d29aaa1ec5ed47c6ece6f0348b4d8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalAtanhPower`](../../../../../../mathematics/Analysis/ErrorBounds/RationalAtanhPower.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.Log` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [candidateLog](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/candidatelog--05db2f30412ab7f5b4c7b6c8.md) | 27 | `declaration-track:05db2f30412ab7f5b4c7b6c8a4f67c9730486094aa0cd5acc6b4c2701da82fdf` |
| 2 | `theorem` | [all_scales_valid](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/all-scales-valid--35e3684793dd6d8ffabfe2f1.md) | 29 | `result-track:35e3684793dd6d8ffabfe2f1566a13d9d9135c81e0650c2527be0c7f825335c7` |
| 3 | `theorem` | [candidate_log_sound](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/candidate-log-sound--ad9f5dc1cc4d29ab0a56958f.md) | 33 | `result-track:ad9f5dc1cc4d29ab0a56958f77ac1cd3a2cf2d7adb59624e9ea5274e22caaeb1` |
| 4 | `theorem` | [all_log_radii_small](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/all-log-radii-small--e528419b0b8a6ee2faa322c0.md) | 39 | `result-track:e528419b0b8a6ee2faa322c093cf0dff7926945e24a47b63fcb49303b1d20bcf` |
| 5 | `theorem` | [candidate_log_precision](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/candidate-log-precision--ea344dd3be4e20ff987d3b14.md) | 42 | `result-track:ea344dd3be4e20ff987d3b148807951ccf07121af44511de07ce7396b9301bf1` |
| 6 | `theorem` | [signed_rounding_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/signed-rounding-control--510410229dec0fbdad983959.md) | 47 | `result-track:510410229dec0fbdad983959e1840eeedbced5f538ec07ac33cb8ce953f8facc` |
| 7 | `theorem` | [log_two_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/log-two-control--631cac959df810ca3e2184af.md) | 52 | `result-track:631cac959df810ca3e2184af6094712fa553c52afd1f9c918fbb6fee5c6e0a86` |
| 8 | `theorem` | [rounded_log_two_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/rounded-log-two-control--a9a12fdbc6a79e5a13b1de2f.md) | 58 | `result-track:a9a12fdbc6a79e5a13b1de2f9a903a9265bb95b365b09dabc1d239de40fb6717` |
| 9 | `theorem` | [halving_tail_at_lower_is_false](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/halving-tail-at-lower-is-false--37cde32f6ad210a6147f03f1.md) | 64 | `result-track:37cde32f6ad210a6147f03f11f3dd8f0df57eb602a11a6573ecd2d0bf4fca542` |
| 10 | `theorem` | [shared_radius_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/shared-radius-control--ce40eea8ce9d8e566dc967a3.md) | 72 | `result-track:ce40eea8ce9d8e566dc967a3922a81a41e570691e9cc0465bf5be4daad7826cd` |
| 11 | `theorem` | [domain_and_zero_terms_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/domain-and-zero-terms-control--36f620cf31299c2eefd0d5ea.md) | 77 | `result-track:36f620cf31299c2eefd0d5ea7635d340cdb97d2f172727ce4d0723baf6d2c2c3` |
| 12 | `theorem` | [complex_center_displacement_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/complex-center-displacement-control--4858d064fff37561ae91c0a7.md) | 85 | `result-track:4858d064fff37561ae91c0a7a6dad513ab3bab1b2bd5cb3eb2e2cccb48f79201` |
| 13 | `theorem` | [cross_radius_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/cross-radius-control--b8971186fea332fa9cd414a6.md) | 90 | `result-track:b8971186fea332fa9cd414a68f9034a48e28a4ab130ebc6dbe9ba3f1ea7fa405` |
| 14 | `theorem` | [outward_recurrence_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/outward-recurrence-control--5e07e0231001a5bb5fcbb073.md) | 94 | `result-track:5e07e0231001a5bb5fcbb07326b6103051002377a031dcfd313c5949aad6388e` |
| 15 | `theorem` | [negative_radius_not_evidence](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/negative-radius-not-evidence--1cd211982e723ed4104a33b8.md) | 100 | `result-track:1cd211982e723ed4104a33b89f4781125fc657738682cc09aa0710d588691244` |
| 16 | `def` | [inverseTwoTrace](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/inversetwotrace--24a272b17a4707d83e6aed2e.md) | 104 | `declaration-track:24a272b17a4707d83e6aed2e179fc2c3d8b30f4c2003a6f50826c5cc13f1cf4d` |
| 17 | `theorem` | [inverse_two_trace_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/inverse-two-trace-checked--5944cd85baac5d6b222c8978.md) | 107 | `result-track:5944cd85baac5d6b222c8978072e6122fd0b7ad4bec128cae45d9d8bc5514c01` |
| 18 | `theorem` | [inverse_two_enclosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/inverse-two-enclosed--83a9d691cbdb7f3cf541e482.md) | 112 | `result-track:83a9d691cbdb7f3cf541e482f7a4fe5b5aecc469fe591884de2d155f4b5169d0` |
| 19 | `theorem` | [inverse_two_total_radius](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointLogRefinement.lean/declarations/inverse-two-total-radius--c8ec8f0506c5fb7047f6da69.md) | 119 | `result-track:c8ec8f0506c5fb7047f6da69e347d7c3c3620a314e2244a594a46f8175468db0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
