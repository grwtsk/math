# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HadamardLogDerivative.Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e9f467853a59ff75ff7afdf24a0b8e2b31e8fb3",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e9f467853a59ff75ff7afdf24a0b8e2b31e8fb3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hadamardGenusOneFactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/hadamardgenusonefactor--4dee94c03875825965aa9791.md) | 28 | `declaration-track:4dee94c03875825965aa979130d960c03bd5af7df7db4561b1855055ac7db867` |
| 2 | `theorem` | [hadamardGenusOneFactor_pair_cancellation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/hadamardgenusonefactor-pair-cancellation--f0caaf9ebdb564bfef0ccc07.md) | 32 | `result-track:f0caaf9ebdb564bfef0ccc075ce939ca8d3cfe1a7a296e2ea5a50508c5424912` |
| 3 | `def` | [centeredHadamardOrbitBlock](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/centeredhadamardorbitblock--0eea91e4ce2e76471baefc94.md) | 52 | `declaration-track:0eea91e4ce2e76471baefc940771d52733df5cf1fb1c0bb37d2794cdb547aa9f` |
| 4 | `theorem` | [centeredHadamardOrbitBlock_base](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/centeredhadamardorbitblock-base--af2c8d2dc2617a778acbeffb.md) | 55 | `result-track:af2c8d2dc2617a778acbeffb6a41a3b96d5c540af75190c66e3ce20f4ee2f97a` |
| 5 | `theorem` | [centeredHadamardOrbitBlock_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/centeredhadamardorbitblock-zero-pos--e9223ecdbb9c409d93e33a80.md) | 60 | `result-track:e9223ecdbb9c409d93e33a804c809d0f19cbf5b9861c5ff976912a63aef5eae8` |
| 6 | `theorem` | [centeredHadamardOrbitBlock_zero_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/centeredhadamardorbitblock-zero-neg--6ea58d0ccbf04216be787ac5.md) | 65 | `result-track:6ea58d0ccbf04216be787ac516d094752fd03651bdac615a0dd3f620e3ea9b6a` |
| 7 | `theorem` | [centeredHadamardOrbitBlock_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/centeredhadamardorbitblock-ne-zero--edad228677af636893bf78ee.md) | 70 | `result-track:edad228677af636893bf78ee102aa9a7f402fdb244274cdf9bbcb931289d9b01` |
| 8 | `theorem` | [normalized_hadamardGenusOneFactor_pair_cancellation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/normalized-hadamardgenusonefactor-pair-cancellation--d69490432a826fa911e3d8ce.md) | 80 | `result-track:d69490432a826fa911e3d8ce279c3b75d43cd29a41b43daee875aa83dd4e542e` |
| 9 | `theorem` | [logDeriv_centeredHadamardOrbitBlock](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/logderiv-centeredhadamardorbitblock--3befc162001a88a75cb3c42a.md) | 89 | `result-track:3befc162001a88a75cb3c42a9a22c316c4f7406ecb5f661bb1e19e22d81afe1d` |
| 10 | `def` | [finiteCenteredHadamardOrbitProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/finitecenteredhadamardorbitproduct--0babd2c881cd4bbb633110ae.md) | 106 | `declaration-track:0babd2c881cd4bbb633110aeb4f53c29891fba9ad5c08533ea8b523311cecb65` |
| 11 | `def` | [finiteCenteredHadamardOrbitLogDerivSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/finitecenteredhadamardorbitlogderivsum--eb1799623eba523305075a0b.md) | 110 | `declaration-track:eb1799623eba523305075a0bf18c0ba06489bd00766c2149b754dd535ea98c26` |
| 12 | `def` | [genusOneZeroLogTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/genusonezerologterm--073dfbd6681e631edec8bf60.md) | 114 | `declaration-track:073dfbd6681e631edec8bf600017462a3f1f5f3677a2a84e596cd8f51cb63f0f` |
| 13 | `def` | [genusOneZeroLogSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/genusonezerologsum--9fdfea7587ddbc4b635b04c4.md) | 118 | `declaration-track:9fdfea7587ddbc4b635b04c41a333b54114a24ddd130e7a7c0bd991c6cad99bc` |
| 14 | `def` | [centeredHadamardOrbitLogTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/centeredhadamardorbitlogterm--f21e827561dbb0f7128d5c82.md) | 122 | `declaration-track:f21e827561dbb0f7128d5c82ed2f7eb787092b2beba59a804568157de958ed8f` |
| 15 | `def` | [centeredHadamardOrbitLogSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/centeredhadamardorbitlogsum--882f660b31f96cdddf7c6eba.md) | 127 | `declaration-track:882f660b31f96cdddf7c6eba9c5094fbd74b4cccd7faec19e0f29c0760997bdc` |
| 16 | `theorem` | [logDeriv_finiteCenteredHadamardOrbitProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/logderiv-finitecenteredhadamardorbitproduct--0bd0658c34da24759700415d.md) | 131 | `result-track:0bd0658c34da24759700415d80d8269b1f92b68e2b059aed4f280367d32d9963` |
| 17 | `def` | [zetaPoleFactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/zetapolefactor--185034c82af70eed11c257c8.md) | 147 | `declaration-track:185034c82af70eed11c257c8ff37006c3a7551680784f79e64b74f9541a527d0` |
| 18 | `def` | [zetaPiFactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/zetapifactor--d36174b7b199eafceda30617.md) | 152 | `declaration-track:d36174b7b199eafceda30617b574010b6fcc34266c48d7a7f65ccd8843331716` |
| 19 | `def` | [zetaGammaFactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/zetagammafactor--6a63d9a798d009724192d9e6.md) | 156 | `declaration-track:6a63d9a798d009724192d9e6b63a782c99d4f426a7f0711d66f8781d882ef507` |
| 20 | `def` | [completedZetaFactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/completedzetafactor--ce76a86c2deb9c152c628dfd.md) | 161 | `declaration-track:ce76a86c2deb9c152c628dfd3b9f56c7ccfd67feae0e2a576c27c2e09829de22` |
| 21 | `theorem` | [logDeriv_zetaPoleFactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/logderiv-zetapolefactor--46c34dee6a6a6aa6f7242bc6.md) | 164 | `result-track:46c34dee6a6a6aa6f7242bc620f1462272756eb8a47623548b92f69dd696990c` |
| 22 | `theorem` | [logDeriv_zetaPiFactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/logderiv-zetapifactor--1fce91a53c0f1b2e95c0dbb6.md) | 170 | `result-track:1fce91a53c0f1b2e95c0dbb6cff93ac27061b1a491898e0121f31d24bc692bfb` |
| 23 | `theorem` | [logDeriv_zetaGammaFactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/logderiv-zetagammafactor--d33c2635c41bbd4ec88f64be.md) | 180 | `result-track:d33c2635c41bbd4ec88f64be2e38685ff03c8ad7498b1dc3da534d7d3a39b243` |
| 24 | `theorem` | [logDeriv_completedZetaFactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/logderiv-completedzetafactor--742de306e66900c427a8ac9d.md) | 192 | `result-track:742de306e66900c427a8ac9d9084d012dabc46ff844b1aae9dd284a5a42b8d95` |
| 25 | `theorem` | [neg_zeta_logDeriv_eq_neg_completedZeta_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/neg-zeta-logderiv-eq-neg-completedzeta-logderiv--e756c996f0dc9cce2fb22b4b.md) | 238 | `result-track:e756c996f0dc9cce2fb22b4be41435e5e6aa6bc25f1d36d2a2fb060c82f2a176` |
| 26 | `theorem` | [neg_zeta_logDeriv_eq_of_completed_hadamard_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/neg-zeta-logderiv-eq-of-completed-hadamard-logderiv--13c57b9290d0896ee008cf6d.md) | 253 | `result-track:13c57b9290d0896ee008cf6d247c9cde638506f77236f694a8bb5d6965a56a1f` |
| 27 | `theorem` | [neg_zeta_logDeriv_eq_of_genusOne_hadamard](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/neg-zeta-logderiv-eq-of-genusone-hadamard--2bfcecaab92099f96dff57c2.md) | 273 | `result-track:2bfcecaab92099f96dff57c2eafb1a5a26f5b61a0fbb8b894685296f546837b3` |
| 28 | `theorem` | [neg_zeta_logDeriv_eq_of_centered_orbit_hadamard](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/declarations/neg-zeta-logderiv-eq-of-centered-orbit-hadamard--04cdd40646331fd5edc82a4e.md) | 293 | `result-track:04cdd40646331fd5edc82a4efb72565dee99f2586b6d90403f2a844086639f45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
