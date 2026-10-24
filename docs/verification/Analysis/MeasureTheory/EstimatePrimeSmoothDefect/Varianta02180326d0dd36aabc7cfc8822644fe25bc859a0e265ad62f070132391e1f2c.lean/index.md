# Verification target: GRWTSK.Analysis.MeasureTheory.EstimatePrimeSmoothDefect.Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25e8d649ff602dbefe763805fae3b26b6d41bb9d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25e8d649ff602dbefe763805fae3b26b6d41bb9d`.

Source path: `GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPrimeMoment](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/closedprimemoment--ff2e0d45983163a2f2b839a6.md) | 44 | `declaration-track:ff2e0d45983163a2f2b839a61453569b3d82d68263b2ae60cd51598747af4d0c` |
| 2 | `def` | [smoothMoment](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/smoothmoment--966bfa07d154309da77b2e1b.md) | 52 | `declaration-track:966bfa07d154309da77b2e1b8129341c5c25d449ac84be68e3781e85f7420b8b` |
| 3 | `def` | [endpointMoment](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/endpointmoment--39da3a6350204fa535c6296f.md) | 58 | `declaration-track:39da3a6350204fa535c6296fa428df0ba3f966dbdb0cc02c0bb2da370640e1e7` |
| 4 | `def` | [primeSmoothDefect](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/primesmoothdefect--ad03e895420047a0d49cee9e.md) | 64 | `declaration-track:ad03e895420047a0d49cee9e36981be3fca0f5c016999041ce0ee37150cf8a0f` |
| 5 | `theorem` | [primePowerContribution_eq_closedPrimeMoment](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/primepowercontribution-eq-closedprimemoment--1f1fdf39c23cf61dbbd68b4d.md) | 69 | `result-track:1f1fdf39c23cf61dbbd68b4dc18013e40cd711526e39e356d6f39744f5515f76` |
| 6 | `theorem` | [signedPairing_eq_endpoint_sub_defect](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/signedpairing-eq-endpoint-sub-defect--a4a94e5cfb7c5a855a162f35.md) | 81 | `result-track:a4a94e5cfb7c5a855a162f35bb5d145183b082fc6ed696271b8c99f13d612ac8` |
| 7 | `theorem` | [endpointMoment_abs_le](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/endpointmoment-abs-le--ce0f9ca5248955276d105263.md) | 95 | `result-track:ce0f9ca5248955276d1052638fa6be2bd20e43c706e2424c59df1078cac59c11` |
| 8 | `theorem` | [endpointMoment_lower](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/endpointmoment-lower--40f9dfbf75c950aa2ebdcb87.md) | 105 | `result-track:40f9dfbf75c950aa2ebdcb87e3fc6d2fc3d99e46c141de253aac33605ce5085c` |
| 9 | `theorem` | [endpointMoment_upper](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/endpointmoment-upper--689817b26f6b6585af9c20f0.md) | 110 | `result-track:689817b26f6b6585af9c20f030df106f74e4047c61cab465cc7b72f368567e28` |
| 10 | `def` | [PrimeSmoothDefectTailUpperBound](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/primesmoothdefecttailupperbound--3913aa1d04432c8ca7bce5cf.md) | 116 | `declaration-track:3913aa1d04432c8ca7bce5cff5ac36d9892f270eac2b46b4022cde1d2577e275` |
| 11 | `theorem` | [signed_pairing_tail_of_defect_tail](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/signed-pairing-tail-of-defect-tail--2357400e84498d1bb15af7c5.md) | 124 | `result-track:2357400e84498d1bb15af7c54696945f8c7bda7ef0d4549afc8d8f110aeee76f` |
| 12 | `theorem` | [defect_tail_of_signed_pairing_tail](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/defect-tail-of-signed-pairing-tail--f475f4a9d931a08cf91ccc36.md) | 138 | `result-track:f475f4a9d931a08cf91ccc36ebd12e022ec85f42d2d379948ec22bd1ba550df2` |
| 13 | `theorem` | [signed_pairing_tail_iff_prime_smooth_defect_tail](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/signed-pairing-tail-iff-prime-smooth-defect-tail--126c750e53175f8027b26ec6.md) | 152 | `result-track:126c750e53175f8027b26ec6c9fa098334e6d92b9ce75b5c456cd0735425c4a5` |
| 14 | `theorem` | [estimate_of_prime_smooth_defect_tail](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/estimate-of-prime-smooth-defect-tail--00cdac7642ce61ea821ce443.md) | 159 | `result-track:00cdac7642ce61ea821ce4435e0af7d48027d5dbca62335a94252ed9780c706d` |
| 15 | `def` | [PrimeSmoothDefectCheckpoint](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/primesmoothdefectcheckpoint--8daf08381bf72970e9b0c406.md) | 166 | `declaration-track:8daf08381bf72970e9b0c4069419c6ebd4f1f1e903344e4ea57bbdb1a2de28ec` |
| 16 | `theorem` | [prime_smooth_defect_checkpoint](../../../../../mathematics/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Varianta02180326d0dd36aabc7cfc8822644fe25bc859a0e265ad62f070132391e1f2c.lean/declarations/prime-smooth-defect-checkpoint--193b4585e728028e12efcaae.md) | 176 | `result-track:193b4585e728028e12efcaaee2f1a6c92b68f77e65e17eb0f0904b05534a8e74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
