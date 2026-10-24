# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2e50a040abe731f9ceaa7a6de1cab4488c8db33",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2e50a040abe731f9ceaa7a6de1cab4488c8db33`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Spectrum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.NonUnital` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cfcL_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/declarations/cfcl-integral--159878115a6a59428ae2a354.md) | 51 | `result-track:159878115a6a59428ae2a354c12ee8150cfc333cc62e73f5217000ee60d84b66` |
| 2 | `lemma` | [cfcHom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/declarations/cfchom-integral--8ee7e00ccfc249838573e589.md) | 56 | `result-track:8ee7e00ccfc249838573e58937b167406a46c6c3a77117bb70644ed48fa8f563` |
| 3 | `lemma` | [cfc_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/declarations/cfc-integral--a942935118db9fc29ecfd75b.md) | 63 | `result-track:a942935118db9fc29ecfd75bba3fbfb36fcbec99a7a89b4c8303a77b3321607b` |
| 4 | `lemma` | [cfc_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/declarations/cfc-integral--87dacbda3d10284fa9a3883d.md) | 86 | `result-track:87dacbda3d10284fa9a3883d6ca2381d374c92495c9c6303d5b569d288e13e42` |
| 5 | `lemma` | [cfcₙL_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/declarations/cfc-l-integral--d42f6074e4fc46ce1c1f8eb2.md) | 105 | `result-track:d42f6074e4fc46ce1c1f8eb20cc0b4f4a1b74fa5865911a87cd7694f36400050` |
| 6 | `lemma` | [cfcₙHom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/declarations/cfc-hom-integral--f25db750b1d5b3ea962170c8.md) | 110 | `result-track:f25db750b1d5b3ea962170c830beb5384bf839073e991f3bf8143b6b2f05ccbe` |
| 7 | `lemma` | [cfcₙ_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/declarations/cfc-integral--24204a41d8b799ea15fd22eb.md) | 117 | `result-track:24204a41d8b799ea15fd22eb6da08b3f688c59eb66208bd9707ca73598adc7a9` |
| 8 | `lemma` | [cfcₙ_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/declarations/cfc-integral--f46520d32349dcbf11d5820f.md) | 142 | `result-track:f46520d32349dcbf11d5820fb9916c097df1af09d193b8a4673a9e44f42f4347` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
