# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Slope.Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebb7c29ebf2d99400b76007506bb98b9524913b6",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebb7c29ebf2d99400b76007506bb98b9524913b6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Slope` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAtFilter_iff_tendsto_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivatfilter-iff-tendsto-slope--df216f7353aa5e8ff5862865.md) | 54 | `result-track:df216f7353aa5e8ff586286537f9d4b4660292a0f703c80b350610cbd4dec3e4` |
| 2 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivwithinat-iff-tendsto-slope--122246d2023a75bc70c5dd62.md) | 68 | `result-track:122246d2023a75bc70c5dd62f0f6bdd5891eb17eee3707921f6b8bfae1d784c6` |
| 3 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivwithinat-iff-tendsto-slope--f32d70ea3d37eecda9c0d972.md) | 73 | `result-track:f32d70ea3d37eecda9c0d972e36f45f64a25defc2016ef90a5a9481c4f29361d` |
| 4 | `theorem` | [hasDerivAt_iff_tendsto_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivat-iff-tendsto-slope--64d563b3ae71bef1c65f7fe1.md) | 77 | `result-track:64d563b3ae71bef1c65f7fe1e1709519787ea608a09e34ab76b8b25d28bfd9c8` |
| 5 | `theorem` | [hasDerivAt_iff_tendsto_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivat-iff-tendsto-slope-zero--d32e6c3e5d9bd40b56f02c71.md) | 80 | `result-track:d32e6c3e5d9bd40b56f02c71b54d30e14275f3dc2d5c7e300944e28fc9f50338` |
| 6 | `theorem` | [HasDerivAt.tendsto_slope_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivat-tendsto-slope-zero-right--bf9e66424c5400c629202bea.md) | 88 | `result-track:bf9e66424c5400c629202bea8a546bc837a57c7c7ab0eb0d7e1d481293fc7a93` |
| 7 | `theorem` | [HasDerivAt.tendsto_slope_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivat-tendsto-slope-zero-left--01f5173885e50503627b1db7.md) | 92 | `result-track:01f5173885e50503627b1db7de5db49eb49e131f4fb10f1b1931e8e3e02c15c3` |
| 8 | `theorem` | [range_derivWithin_subset_closure_span_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/range-derivwithin-subset-closure-span-image--8d9b65bffe9a9a81e8176fec.md) | 98 | `result-track:8d9b65bffe9a9a81e8176fec8024b89bbc2af767ddcf256bd26b4babe8fe0956` |
| 9 | `theorem` | [range_deriv_subset_closure_span_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/range-deriv-subset-closure-span-image--888df9d35ad6c96175a0b2bc.md) | 132 | `result-track:888df9d35ad6c96175a0b2bc54194cc10d7c856eaf2e45a6ed9c3681fc258e72` |
| 10 | `theorem` | [isSeparable_range_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/isseparable-range-derivwithin--94722eda4bb042eba1f43634.md) | 139 | `result-track:94722eda4bb042eba1f436347dfa16177cef1665c1b956f13b59254d313140f7` |
| 11 | `theorem` | [isSeparable_range_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/isseparable-range-deriv--6e2cf83fe47c5d28ebdc6505.md) | 147 | `result-track:6e2cf83fe47c5d28ebdc6505c688cfc4b9326a2666cc6d66360af7f50ae8a014` |
| 12 | `lemma` | [HasDerivAt.continuousAt_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivat-continuousat-div--ce089bf2926610dba5b79b2a.md) | 152 | `result-track:ce089bf2926610dba5b79b2a7171c4280585f689de6bf9d7604e91c2984608d2` |
| 13 | `theorem` | [HasDerivWithinAt.limsup_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivwithinat-limsup-slope-le--d0b4d7760ad2dd0010cfa7af.md) | 165 | `result-track:d0b4d7760ad2dd0010cfa7af5d7957fb386335727a513b231f7ba909b5ac76df` |
| 14 | `theorem` | [HasDerivWithinAt.limsup_slope_le'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivwithinat-limsup-slope-le--fd423d4ecff8bb8a04dfb89a.md) | 169 | `result-track:fd423d4ecff8bb8a04dfb89a221e4cd4ccb3e9072db81bc56ae0423de786fec6` |
| 15 | `theorem` | [HasDerivWithinAt.liminf_right_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivwithinat-liminf-right-slope-le--e98b78dcdbdd76c034696ab2.md) | 173 | `result-track:e98b78dcdbdd76c034696ab296fb140f56f76c7535f4c7bef3b24755d9ea8abc` |
| 16 | `theorem` | [HasDerivWithinAt.limsup_norm_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivwithinat-limsup-norm-slope-le--f28f1cb0ab8de36a44e4b8c6.md) | 190 | `result-track:f28f1cb0ab8de36a44e4b8c69c546cdecfebb977f8fdd578f5d30e45c3963752` |
| 17 | `theorem` | [HasDerivWithinAt.limsup_slope_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivwithinat-limsup-slope-norm-le--cb8a4af3e4cbfae48ce71774.md) | 210 | `result-track:cb8a4af3e4cbfae48ce717745e361eb835a190b61d6f4e15cfeb9312c24722f4` |
| 18 | `theorem` | [HasDerivWithinAt.liminf_right_norm_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivwithinat-liminf-right-norm-slope-le--61c84b51f008e7afd4abacdb.md) | 222 | `result-track:61c84b51f008e7afd4abacdb7aabbef77cad38e11b97fda09a261e6defcbde1b` |
| 19 | `theorem` | [HasDerivWithinAt.liminf_right_slope_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variantedd4405a618d1b2d9add1a575c7cb2d8ed2dd19b404f7cefefc4bea37f975517.lean/declarations/hasderivwithinat-liminf-right-slope-norm-le--0d11ce3f35ed8354f23b0f9d.md) | 237 | `result-track:0d11ce3f35ed8354f23b0f9d78c006a0fb051e64d20eb27d169f0490b76ddfc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
