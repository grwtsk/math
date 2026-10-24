# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivativeGain.Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dae85803ea1722edab862b668ed8b9ccebf0e098",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dae85803ea1722edab862b668ed8b9ccebf0e098`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.Residual` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DerivativeGainCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/declarations/derivativegaincertificate--4cb89c02b3d3b011534789b9.md) | 7 | `declaration-track:4cb89c02b3d3b011534789b9137c60d10043087751e254451d7ca221881e804b` |
| 2 | `theorem` | [derivative_gain_bounds_one_step](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/declarations/derivative-gain-bounds-one-step--30165d102f8863b0bbc2ed44.md) | 20 | `result-track:30165d102f8863b0bbc2ed445473945f33c57e03d3576abdcd7324484f6f9ca2` |
| 3 | `structure` | [ScaledDerivativeGainCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/declarations/scaledderivativegaincertificate--fe63918290f79cc2a050f226.md) | 39 | `declaration-track:fe63918290f79cc2a050f226b90d5cddb731d4653294bb81c194b5848d89bdcc` |
| 4 | `theorem` | [scaled_derivative_gain_bounds_one_step](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/declarations/scaled-derivative-gain-bounds-one-step--b1caa9c932ec85983c4a0d39.md) | 55 | `result-track:b1caa9c932ec85983c4a0d39e0904483b8503ec376193c4f40de3210345ecdd3` |
| 5 | `structure` | [GainInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/declarations/gaininterval--6bdb371fc9de179515fcd75d.md) | 70 | `declaration-track:6bdb371fc9de179515fcd75ddc220031f46facc8f77e7ba2e3cf41ab4b4a1485` |
| 6 | `inductive` | [StabilityRegime](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/declarations/stabilityregime--f6710ee5d9b56dd243c4ce68.md) | 75 | `declaration-track:f6710ee5d9b56dd243c4ce68ced3ce5c798958d095b531de8afde2792c93d57b` |
| 7 | `def` | [classifyGain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/declarations/classifygain--7cd3e38c876b74a20754684f.md) | 87 | `declaration-track:7cd3e38c876b74a20754684f7518d561c5536eefb26c0d75ca46c514ee6ef5f1` |
| 8 | `theorem` | [strict_upper_bound_classifies_contractive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/declarations/strict-upper-bound-classifies-contractive--6fcbde1b89039d84ff1e04d4.md) | 96 | `result-track:6fcbde1b89039d84ff1e04d4ddac5c3f8d6d7752a55e6bd4da6c3bb4a1d73072` |
| 9 | `theorem` | [unresolved_unit_intersection_is_critical](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3.lean/declarations/unresolved-unit-intersection-is-critical--06eecb2da2b403a48416e297.md) | 103 | `result-track:06eecb2da2b403a48416e297053e99b56c830bad51e591fedaa6cc6ac98cb40e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
