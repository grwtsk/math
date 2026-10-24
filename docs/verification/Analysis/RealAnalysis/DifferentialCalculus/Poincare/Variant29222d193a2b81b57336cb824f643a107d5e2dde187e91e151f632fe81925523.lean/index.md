# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Poincare.Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a87cb3a0d2a5d2dc3cc452a7319962a792d91dca",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a87cb3a0d2a5d2dc3cc452a7319962a792d91dca`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.AddTorsor.AffineMap` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt_off_countable_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/curveintegral-add-curveintegral-eq-of-hasfderivwithinat-off-countable-re--b7271634deb5f194ee7397a0.md) | 51 | `result-track:b7271634deb5f194ee7397a07708fb562d01def24f87735ee06103135f81a070` |
| 2 | `theorem` | [curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/curveintegral-add-curveintegral-eq-of-hasfderivwithinat-off-countable--3473574812558b0455dbff2d.md) | 232 | `result-track:3473574812558b0455dbff2dc9e4eb4f8a923b26a3ea53c27b7242bd202cda04` |
| 3 | `theorem` | [curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/curveintegral-add-curveintegral-eq-of-hasfderivwithinat--b617aff0979d997216db9724.md) | 257 | `result-track:b617aff0979d997216db97247862053716602eedef799a60e725eeaa0b9f09d2` |
| 4 | `theorem` | [curveIntegral_add_curveIntegral_eq_of_diffContOnCl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/curveintegral-add-curveintegral-eq-of-diffcontoncl--6ceea898dd8a5eb417cac1f9.md) | 275 | `result-track:6ceea898dd8a5eb417cac1f96737a5fa3059b2a0b67a670e98809a1fa2c07a97` |
| 5 | `theorem` | [curveIntegral_segment_add_eq_of_hasFDerivWithinAt_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/curveintegral-segment-add-eq-of-hasfderivwithinat-symmetric--b235c1ce293bef099fda3f10.md) | 303 | `result-track:b235c1ce293bef099fda3f108ff1708266eeb293eca59476fdfbdf82a46f0e5d` |
| 6 | `theorem` | [hasFDerivWithinAt_curveIntegral_segment_of_hasFDerivWithinAt_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/hasfderivwithinat-curveintegral-segment-of-hasfderivwithinat-symmetric--037d93363e816de45f75009c.md) | 343 | `result-track:037d93363e816de45f75009c7f8d716457759fd92e009a7ba3f9c7ad113a51eb` |
| 7 | `theorem` | [exists_forall_hasFDerivWithinAt_of_hasFDerivWithinAt_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/exists-forall-hasfderivwithinat-of-hasfderivwithinat-symmetric--72107dd452c96fb18e91465c.md) | 357 | `result-track:72107dd452c96fb18e91465caf92973baf71a340f179b86f1ffec1539a17e999` |
| 8 | `theorem` | [exists_forall_hasFDerivWithinAt_of_fderivWithin_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/exists-forall-hasfderivwithinat-of-fderivwithin-symmetric--4811a0dbe65762793d6e2a41.md) | 369 | `result-track:4811a0dbe65762793d6e2a41c2b9b6349d8f2c4cca72ec8a502846fe1ebf1ce0` |
| 9 | `theorem` | [exists_forall_hasFDerivAt_of_fderiv_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/exists-forall-hasfderivat-of-fderiv-symmetric--861db9333074125fcb056a90.md) | 379 | `result-track:861db9333074125fcb056a90a4257b0cc73ea681baad7447b5cc91ac4c624ce4` |
| 10 | `theorem` | [exists_forall_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant29222d193a2b81b57336cb824f643a107d5e2dde187e91e151f632fe81925523.lean/declarations/exists-forall-hasderivwithinat--c0f9c354be9f6ee949f0d12c.md) | 396 | `result-track:c0f9c354be9f6ee949f0d12c410947fd981b89d49787fc43c311e84ae814a742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
