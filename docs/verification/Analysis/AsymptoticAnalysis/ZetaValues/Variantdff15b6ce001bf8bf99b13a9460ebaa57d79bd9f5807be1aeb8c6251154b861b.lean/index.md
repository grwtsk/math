# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaValues.Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "165a2cbeb6c12b7d07533128ad658a8a80c44724",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `165a2cbeb6c12b7d07533128ad658a8a80c44724`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.BernoulliPolynomials` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/bernoullifun--75b3c6ee9a7a4421164b842f.md) | 51 | `declaration-track:75b3c6ee9a7a4421164b842f5e6e3398b94129052d715f5e8af874d44367df83` |
| 2 | `theorem` | [bernoulliFun_eval_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/bernoullifun-eval-zero--7abd6eb35074fab24f65291f.md) | 54 | `result-track:7abd6eb35074fab24f65291f339d20e497d674d1e72cf5d1a2fb265ca7c76717` |
| 3 | `theorem` | [bernoulliFun_endpoints_eq_of_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/bernoullifun-endpoints-eq-of-ne-one--4814ea2391ba3076e6ecbff1.md) | 57 | `result-track:4814ea2391ba3076e6ecbff18ff9f861d767c99d91b8f22306c4a6f6b058a20a` |
| 4 | `theorem` | [bernoulliFun_eval_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/bernoullifun-eval-one--0f8d14510de3024b21c78613.md) | 62 | `result-track:0f8d14510de3024b21c78613820503001359db66f1c010c2eb58dc1485a69c02` |
| 5 | `theorem` | [hasDerivAt_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/hasderivat-bernoullifun--545d6d91f01b332a87872da4.md) | 69 | `result-track:545d6d91f01b332a87872da4ea4472902eb585bc9a444c936bfbc1105e833c67` |
| 6 | `theorem` | [antideriv_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/antideriv-bernoullifun--06edf62821de642b02b2313e.md) | 75 | `result-track:06edf62821de642b02b2313ea50ee45746b7e024e2dc715369ffd7f9410942cf` |
| 7 | `theorem` | [integral_bernoulliFun_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/integral-bernoullifun-eq-zero--e561cf2369cbf7e2602e8df2.md) | 80 | `result-track:e561cf2369cbf7e2602e8df2d899800e377fd1c715e30998e0a7a20785cc2185` |
| 8 | `def` | [bernoulliFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/bernoullifouriercoeff--26a0392f7938d3f0ba75ce6e.md) | 97 | `declaration-track:26a0392f7938d3f0ba75ce6e3d4fe45666aea51cd8d547c71d2964666e1bc593` |
| 9 | `theorem` | [bernoulliFourierCoeff_recurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/bernoullifouriercoeff-recurrence--070aa9c8d53c8a8dff4c87bf.md) | 101 | `result-track:070aa9c8d53c8a8dff4c87bf04722b20c72a4f1b5b5fbd3538ff78b1440da972` |
| 10 | `theorem` | [bernoulli_zero_fourier_coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/bernoulli-zero-fourier-coeff--11e51ca7a3fceea60e53b107.md) | 118 | `result-track:11e51ca7a3fceea60e53b1072bde6b754bb9e6811756e7a3280ddd3e82acfc0f` |
| 11 | `theorem` | [bernoulliFourierCoeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/bernoullifouriercoeff-zero--6f90d3e0f2ac29127d8623d3.md) | 122 | `result-track:6f90d3e0f2ac29127d8623d303ecde4029fd924ce1489a11ae2e63a15dce1cad` |
| 12 | `theorem` | [bernoulliFourierCoeff_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/bernoullifouriercoeff-eq--45abb9dc8dfe9f2409be83c0.md) | 127 | `result-track:45abb9dc8dfe9f2409be83c04f09baa099affe8a89471ce64858fe655813169b` |
| 13 | `def` | [periodizedBernoulli](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/periodizedbernoulli--5ad57e1d8018b323ae4757fa.md) | 155 | `declaration-track:5ad57e1d8018b323ae4757fafefa212530eef289fcd8fa40bde55a08ef437ccb` |
| 14 | `theorem` | [periodizedBernoulli.continuous](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/periodizedbernoulli-continuous--835c3bdaa8e0acb40db3ed4d.md) | 158 | `result-track:835c3bdaa8e0acb40db3ed4d65c7afebbe796fb41b736b4496eda678b3fee891` |
| 15 | `theorem` | [fourierCoeff_bernoulli_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/fouriercoeff-bernoulli-eq--a7f7eab8f9a1c5c5df6d579a.md) | 163 | `result-track:a7f7eab8f9a1c5c5df6d579a03447897287f377a45b9c050c861eddc044f0512` |
| 16 | `theorem` | [summable_bernoulli_fourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/summable-bernoulli-fourier--d07bf69dec6d24284cf8f59d.md) | 170 | `result-track:d07bf69dec6d24284cf8f59d486cd9ea462ace21f541c0c34b77977067066522` |
| 17 | `theorem` | [hasSum_one_div_pow_mul_fourier_mul_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/hassum-one-div-pow-mul-fourier-mul-bernoullifun--3c01dbd8667c8e872af7ee89.md) | 183 | `result-track:3c01dbd8667c8e872af7ee8997f1e7b491623ad20f48d589c3deea90d56e22be` |
| 18 | `theorem` | [hasSum_one_div_nat_pow_mul_fourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/hassum-one-div-nat-pow-mul-fourier--03db2ce641e80576da640a40.md) | 221 | `result-track:03db2ce641e80576da640a404d11c81a1609f7704aa88b95e6ef52d1a3b14b0e` |
| 19 | `theorem` | [hasSum_one_div_nat_pow_mul_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/hassum-one-div-nat-pow-mul-cos--8f2333e87ccb55491ba417d1.md) | 237 | `result-track:8f2333e87ccb55491ba417d12a8c743f8f9075987d15c119fc07275a4cf618f2` |
| 20 | `theorem` | [hasSum_one_div_nat_pow_mul_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/hassum-one-div-nat-pow-mul-sin--613b10b1e55fd77c38285c19.md) | 273 | `result-track:613b10b1e55fd77c38285c19069053cec8e407a1420805730cb4d93a15fa04b9` |
| 21 | `theorem` | [hasSum_zeta_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/hassum-zeta-nat--f6be01d4d56066d935e49a4d.md) | 316 | `result-track:f6be01d4d56066d935e49a4db5a51bdbcc472e91dab2168b1872200d231582ea` |
| 22 | `theorem` | [hasSum_zeta_two](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/hassum-zeta-two--ab0d6aec69cc0d8c4e7f8f48.md) | 338 | `result-track:ab0d6aec69cc0d8c4e7f8f480aa8353c261bd4eea21b9f7653eb191921a4bcfa` |
| 23 | `theorem` | [hasSum_zeta_four](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/hassum-zeta-four--1f8478f1cbe65acaf21b4383.md) | 343 | `result-track:1f8478f1cbe65acaf21b4383de757d6357d5b4ec200cd99f499182e3d81581b7` |
| 24 | `theorem` | [Polynomial.bernoulli_three_eval_one_quarter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/polynomial-bernoulli-three-eval-one-quarter--ae3bcded15cd59d320aea93e.md) | 349 | `result-track:ae3bcded15cd59d320aea93ee1a1af7409ffd33001e8202d689f3b1607e1de69` |
| 25 | `theorem` | [hasSum_L_function_mod_four_eval_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantdff15b6ce001bf8bf99b13a9460ebaa57d79bd9f5807be1aeb8c6251154b861b.lean/declarations/hassum-l-function-mod-four-eval-three--09e9ef5c1a64e3fc36f395d6.md) | 361 | `result-track:09e9ef5c1a64e3fc36f395d6c31ebbe2c921af6456bd77b5b405cb3ea1791c4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
