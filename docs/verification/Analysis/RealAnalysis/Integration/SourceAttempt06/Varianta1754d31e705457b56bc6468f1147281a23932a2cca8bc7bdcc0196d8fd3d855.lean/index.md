# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt06.Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf9c3249092c5f79cdbaa8f04b9682801c5a48e5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf9c3249092c5f79cdbaa8f04b9682801c5a48e5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/kernel--73d6bb1f4a43dfb97be6f812.md) | 13 | `declaration-track:73d6bb1f4a43dfb97be6f812ed535e69e0e54e3cb79195c7d7777d7e80c87a31` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/secondmomentintegrand--98033e906223eb339dbdbf6b.md) | 14 | `declaration-track:98033e906223eb339dbdbf6b47d44bb19b7593174c6f279ec547cf96ba2fe758` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/majorant--965b6612de112511b1981e17.md) | 15 | `declaration-track:965b6612de112511b1981e176d8f2dc28f939b528275a6ab981fd7bee8265173` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/denominator-pos--2d374107b6f62c8c1ea71f94.md) | 17 | `result-track:2d374107b6f62c8c1ea71f94cf0e52d8561ddf7d9357ce7351a761db1175e452` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/kernel-nonneg--048b26dbf8bb341087d37c45.md) | 22 | `result-track:048b26dbf8bb341087d37c45ef77364cb2062fa8aa0e68f33701214c231b73d7` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/reciprocal-denominator-bound--acf4b81105f76715158fbf8e.md) | 25 | `result-track:acf4b81105f76715158fbf8eebadbfabe5e627b2d60f58f28d08428e88366fba` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/secondmoment-bound--0cb30e37d53f75a45950d0ff.md) | 37 | `result-track:0cb30e37d53f75a45950d0ff440ab129ba7d9c7e3a9dbacf53b9ac7c86f0af28` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/polynomial-exp-integrable--f3004ed74e3cba546760ad0c.md) | 49 | `result-track:f3004ed74e3cba546760ad0cff5f95d4c93b4cdac4d256c12f5e3626f5680a8d` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/polynomial-exp-integral--52f3465a01c92f4a485a8814.md) | 58 | `result-track:52f3465a01c92f4a485a8814cf28055fb1464498c3aadab25d4998bdae7f9e3f` |
| 10 | `theorem` | [majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/majorant-integrable--f72190c54d8b1f9c266b440b.md) | 68 | `result-track:f72190c54d8b1f9c266b440bd3715c8cf0924f9f53ab943ab70541083d32bdc8` |
| 11 | `theorem` | [majorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/majorant-integral--086b2cb286f3b12882978194.md) | 76 | `result-track:086b2cb286f3b128829781946a8260523d3874a4faba7e63db77b78382a1a4d8` |
| 12 | `theorem` | [secondMoment_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/secondmoment-measurable--379c6f38267b11cc515c6abf.md) | 86 | `result-track:379c6f38267b11cc515c6abfa09d021cc89b8fcdceedc721945876b4bf6c5e86` |
| 13 | `theorem` | [secondMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/secondmoment-integrable--146feab95790afd8fc7538b7.md) | 90 | `result-track:146feab95790afd8fc7538b7f6e91aaf46a5dd684194376b0e987149c9d00b2f` |
| 14 | `theorem` | [secondMoment_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/secondmoment-integral-nonneg--f11be43be381b19743d5d453.md) | 97 | `result-track:f11be43be381b19743d5d4532b58077705b62483891abdb5ed61805184501df7` |
| 15 | `theorem` | [secondMoment_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/secondmoment-integral-le--e7ea33a0673aeea532ddfe25.md) | 102 | `result-track:e7ea33a0673aeea532ddfe25592914af9a2b9f019d3da2f790c53fb590e6dad1` |
| 16 | `def` | [weightedDeficit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/weighteddeficit--ad2209457c2742c2c6d81251.md) | 108 | `declaration-track:ad2209457c2742c2c6d81251c52cd77cc8e0fd0e71f1c035626579732165838c` |
| 17 | `theorem` | [weightedDeficit_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/weighteddeficit-measurable--d164c9b58a9fb47d6e8715fa.md) | 110 | `result-track:d164c9b58a9fb47d6e8715fa03cd5b22878d53457004cb4ebd947171f7b1aa30` |
| 18 | `theorem` | [weightedDeficit_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/weighteddeficit-bound--413266eff95e2fd8d2770a6d.md) | 115 | `result-track:413266eff95e2fd8d2770a6dec844e9b9f8410c4fb6bb6a55a6258a815cdef6f` |
| 19 | `theorem` | [weightedDeficit_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/weighteddeficit-integrable--ae8984fdd981d8b25c08fb5e.md) | 123 | `result-track:ae8984fdd981d8b25c08fb5e57ce1f3636db539e68711bb9dbb8f2be60d59c5f` |
| 20 | `theorem` | [weightedDeficit_integral_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/weighteddeficit-integral-budget--b12709739e5ccb4b5c4f0af1.md) | 133 | `result-track:b12709739e5ccb4b5c4f0af1854e6f68f2f8355bdb6332e4fec8a21f0bd44c5b` |
| 21 | `theorem` | [gamma_budget_from_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Varianta1754d31e705457b56bc6468f1147281a23932a2cca8bc7bdcc0196d8fd3d855.lean/declarations/gamma-budget-from-identity--c9fe026f9f860d809bb8a27e.md) | 153 | `result-track:c9fe026f9f860d809bb8a27e7f7610ff7964c1f5583a3b0937ba875d7c505d2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
