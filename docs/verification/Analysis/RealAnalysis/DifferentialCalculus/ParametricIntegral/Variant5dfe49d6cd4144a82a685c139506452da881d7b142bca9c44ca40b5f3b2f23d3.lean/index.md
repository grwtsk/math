# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ParametricIntegral.Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4e2e1aeb414cb5130d8f6e4dce216979a6332a8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4e2e1aeb414cb5130d8f6e4dce216979a6332a8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HahnBanach.SeparatingDual` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_integral_of_dominated_loc_of_lip'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean/declarations/hasfderivat-integral-of-dominated-loc-of-lip--c4fda2d7b44d6dec754dd98c.md) | 74 | `result-track:c4fda2d7b44d6dec754dd98c0d17cea38e07d659f948689d7d81e60832bae7d1` |
| 2 | `theorem` | [hasFDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean/declarations/hasfderivat-integral-of-dominated-loc-of-lip--7f613fd831792d6d039edc83.md) | 160 | `result-track:7f613fd831792d6d039edc83b305a34fd3fa7e05e952a1c417fac6807943554a` |
| 3 | `theorem` | [hasFDerivAt_integral_of_dominated_loc_of_lip_interval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean/declarations/hasfderivat-integral-of-dominated-loc-of-lip-interval--bd94b20607c9d433d170abd6.md) | 180 | `result-track:bd94b20607c9d433d170abd673173e0e304a17e481f52dc94b7caa8d6689086b` |
| 4 | `theorem` | [hasFDerivAt_integral_of_dominated_of_fderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean/declarations/hasfderivat-integral-of-dominated-of-fderiv-le--9648ab10ac1ffa533069f588.md) | 205 | `result-track:9648ab10ac1ffa533069f5888c8d3f6832f89c08015d22ab44a645d047f152fd` |
| 5 | `theorem` | [hasFDerivAt_integral_of_dominated_of_fderiv_le''](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean/declarations/hasfderivat-integral-of-dominated-of-fderiv-le--38e2ad92e4cc746d1bdc41cd.md) | 231 | `result-track:38e2ad92e4cc746d1bdc41cdaba32f83cc4cbeeec0125dd37bbfb8cd592f78d3` |
| 6 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_lip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean/declarations/hasderivat-integral-of-dominated-loc-of-lip--6f8f1274805c290194b58067.md) | 256 | `result-track:6f8f1274805c290194b58067f56452977c6335697d72f6bef227eaa024b61897` |
| 7 | `theorem` | [hasDerivAt_integral_of_dominated_loc_of_deriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant5dfe49d6cd4144a82a685c139506452da881d7b142bca9c44ca40b5f3b2f23d3.lean/declarations/hasderivat-integral-of-dominated-loc-of-deriv-le--3cf3bece3923a53f990466cf.md) | 285 | `result-track:3cf3bece3923a53f990466cf2e1e852fbae9eeef22797a1e9530ef27ae155b2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
