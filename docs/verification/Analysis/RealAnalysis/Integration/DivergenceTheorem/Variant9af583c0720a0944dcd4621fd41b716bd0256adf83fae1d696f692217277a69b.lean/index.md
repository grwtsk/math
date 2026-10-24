# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DivergenceTheorem.Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58ec17365a5e7ed878f9f72700ae7154a0ae6054",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58ec17365a5e7ed878f9f72700ae7154a0ae6054`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.DivergenceTheorem` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Integrability` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Prod.Integral` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable_aux₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable-aux--b54dd32274894d580552eba3.md) | 109 | `result-track:b54dd32274894d580552eba347fccf177ebd985ed26965116a2902c027a84d1e` |
| 2 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable_aux₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable-aux--55f43941c3267aeb9764bd1f.md) | 141 | `result-track:55f43941c3267aeb9764bd1f8ac22e7136b30a5747df4531af34eaa575db7f4b` |
| 3 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable--fb8fd380bb48dca2b12f740c.md) | 268 | `result-track:fb8fd380bb48dca2b12f740c734781b90371d3f05296c09b83713920fae5a4e5` |
| 4 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable--f77056883057e286c6378de5.md) | 301 | `result-track:f77056883057e286c6378de53555ea695b653383ea03c8a4e73ad8cd572089d5` |
| 5 | `theorem` | [integral_divergence_of_hasFDerivWithinAt_off_countable_of_equiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/declarations/integral-divergence-of-hasfderivwithinat-off-countable-of-equiv--b5277493e039423153e8bd37.md) | 319 | `result-track:b5277493e039423153e8bd37b3398cbf19a2e210b2270a191534697e215febc5` |
| 6 | `theorem` | [integral_eq_of_hasDerivWithinAt_off_countable_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/declarations/integral-eq-of-hasderivwithinat-off-countable-of-le--f9ad59a5c8b87926c35c2b58.md) | 381 | `result-track:f9ad59a5c8b87926c35c2b5895bb4c7138598fc994c412ca8c65bae20e6f7024` |
| 7 | `theorem` | [integral_eq_of_has_deriv_within_at_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/declarations/integral-eq-of-has-deriv-within-at-off-countable--3f5ed28aba99532491f11325.md) | 418 | `result-track:3f5ed28aba99532491f11325641dca399d18477b1404b3847ec746fa9abbea6a` |
| 8 | `theorem` | [integral_divergence_prod_Icc_of_hasFDerivWithinAt_off_countable_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/declarations/integral-divergence-prod-icc-of-hasfderivwithinat-off-countable-of-le--129287994b2eba10452b1c89.md) | 440 | `result-track:129287994b2eba10452b1c89947f113331d2a6fcbfa97670d4b5f400cddec10c` |
| 9 | `theorem` | [integral2_divergence_prod_of_hasFDerivWithinAt_off_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/declarations/integral2-divergence-prod-of-hasfderivwithinat-off-countable--6e6781c4a838e16366a7e655.md) | 491 | `result-track:6e6781c4a838e16366a7e6559ecfe30351c4a5fc7b2f4726ccb13d76e399b043` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
