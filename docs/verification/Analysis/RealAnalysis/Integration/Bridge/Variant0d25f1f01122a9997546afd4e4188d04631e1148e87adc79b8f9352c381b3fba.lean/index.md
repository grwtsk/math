# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Bridge.Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faa550820f77d9a30084b43fcb1b073ae5550001",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faa550820f77d9a30084b43fcb1b073ae5550001`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ExplicitFormula` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.JapaneseBracket` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_abs_le_of_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/declarations/exists-abs-le-of-hascompactsupport--4f4cbfc49f361b36dd3de18e.md) | 33 | `result-track:4f4cbfc49f361b36dd3de18ef37ec82bb8af4e4b48064a7409c46460092d1c1f` |
| 2 | `theorem` | [norm_fourier_mul_one_add_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/declarations/norm-fourier-mul-one-add-sq-le--5dc2a6d1213bf255ff74a260.md) | 42 | `result-track:5dc2a6d1213bf255ff74a260f6a23f0887079a9c462aee0021fcdb835fc9376b` |
| 3 | `theorem` | [continuous_fourier_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/declarations/continuous-fourier-of-integrable--b73a7ecb471e3726fc4d1390.md) | 65 | `result-track:b73a7ecb471e3726fc4d1390eae43971726d8979d77ca3bc7d02fa2a70734267` |
| 4 | `theorem` | [integrable_fourier_of_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/declarations/integrable-fourier-of-contdiff-two--484411cea0e0a18e75fab3eb.md) | 69 | `result-track:484411cea0e0a18e75fab3ebe08f4c607343a410348be24da855426d1456adb2` |
| 5 | `theorem` | [norm_paperFT_mul_one_add_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/declarations/norm-paperft-mul-one-add-sq-le--1d2cf7596d2fd8ed78a3d805.md) | 80 | `result-track:1d2cf7596d2fd8ed78a3d805cc9955570999606b3a5deedc5c36cefcebcc4c16` |
| 6 | `theorem` | [abs_mu_le_of_gammaFacts](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/declarations/abs-mu-le-of-gammafacts--3fce4b7c976ae0f307de0bd6.md) | 94 | `result-track:3fce4b7c976ae0f307de0bd6ae4c42f15131473c89bec4319aff4fe0127e20ae` |
| 7 | `theorem` | [integrable_paperFT_mul_mu](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/declarations/integrable-paperft-mul-mu--14c45bb8ca53e9546ed33688.md) | 158 | `result-track:14c45bb8ca53e9546ed336889dcc3c9c6830caf15cb62d5144bf1381a982f6a7` |
| 8 | `theorem` | [explicitFormulaPaper_of_lit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant0d25f1f01122a9997546afd4e4188d04631e1148e87adc79b8f9352c381b3fba.lean/declarations/explicitformulapaper-of-lit--fd62121bca18433f5dbc52e2.md) | 191 | `result-track:fd62121bca18433f5dbc52e2048ad3b0cb64f6b6cff31bf309d4b13bf8613ce5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
