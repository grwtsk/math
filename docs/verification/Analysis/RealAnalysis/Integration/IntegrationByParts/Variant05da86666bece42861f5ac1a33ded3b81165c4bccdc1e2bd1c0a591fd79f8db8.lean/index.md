# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegrationByParts.Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2eb13a246a8408f166a396fb79e83f25da79f6f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2eb13a246a8408f166a396fb79e83f25da79f6f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_deriv_mul_eq_sub_of_hasDeriv_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-deriv-mul-eq-sub-of-hasderiv-right--e557a7cdefe9db0a4b66323e.md) | 45 | `result-track:e557a7cdefe9db0a4b66323e789b0fb0f713438d26f7bbc93afcd95ce6a2fdcb` |
| 2 | `theorem` | [integral_deriv_mul_eq_sub_of_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-deriv-mul-eq-sub-of-hasderivat--30b5e95a825ed156e96ea4da.md) | 58 | `result-track:30b5e95a825ed156e96ea4dae5ba53fd4a9d2823eb16852c2f7896d71e72a7b9` |
| 3 | `theorem` | [integral_deriv_mul_eq_sub_of_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-deriv-mul-eq-sub-of-hasderivwithinat--7321ca9a1b4daf4b1534ee58.md) | 70 | `result-track:7321ca9a1b4daf4b1534ee5877fddd9ea78c75455f323cd66f51d4c37e2a7e9f` |
| 4 | `theorem` | [integral_deriv_mul_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-deriv-mul-eq-sub--ec205e9e9436639d6e81418d.md) | 85 | `result-track:ec205e9e9436639d6e81418dd4280a67d730a40a9d3fbedcd49ed57a0cbf98e6` |
| 5 | `theorem` | [integral_mul_deriv_eq_deriv_mul_of_hasDeriv_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-mul-deriv-eq-deriv-mul-of-hasderiv-right--586389f3dca114b43d22ccbb.md) | 96 | `result-track:586389f3dca114b43d22ccbbad62e3f72cc18d9259e81ad0ca2e5a88a02a4813` |
| 6 | `theorem` | [integral_mul_deriv_eq_deriv_mul_of_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-mul-deriv-eq-deriv-mul-of-hasderivat--02a066030f4e75805c112022.md) | 109 | `result-track:02a066030f4e75805c1120223977db38f97d5266c11da6bd40cfe55249518838` |
| 7 | `theorem` | [integral_mul_deriv_eq_deriv_mul_of_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-mul-deriv-eq-deriv-mul-of-hasderivwithinat--853b06678d06b3911417230a.md) | 121 | `result-track:853b06678d06b3911417230afc164e32810ec38eda1ac27e669144179e046cf5` |
| 8 | `theorem` | [integral_mul_deriv_eq_deriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-mul-deriv-eq-deriv-mul--5c66f8a653c9aec5ee84fe41.md) | 140 | `result-track:5c66f8a653c9aec5ee84fe41bfa7d54920b67d7c8578e55f9cd03e19d7e4eab3` |
| 9 | `theorem` | [integral_comp_smul_deriv'''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-comp-smul-deriv--fec5585018fa928db90a619b.md) | 162 | `result-track:fec5585018fa928db90a619bf2d1116be38a1a9a9c68c509b9bc19929addf569` |
| 10 | `theorem` | [integral_comp_smul_deriv''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-comp-smul-deriv--8331e1ea59d898abe84f9934.md) | 208 | `result-track:8331e1ea59d898abe84f9934642ea1d1727a38e66dc528110a8b13fbbf4a119c` |
| 11 | `theorem` | [integral_comp_smul_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-comp-smul-deriv--017d6ad10e383ef0276115ec.md) | 223 | `result-track:017d6ad10e383ef0276115ec731d840ad406a0075b6168102dd19dfafb4f39be` |
| 12 | `theorem` | [integral_comp_smul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-comp-smul-deriv--088426e3f14292233dad2543.md) | 233 | `result-track:088426e3f14292233dad25432aab809bcb318a11e708233f4ead1865ec20bdf4` |
| 13 | `theorem` | [integral_deriv_comp_smul_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-deriv-comp-smul-deriv--a98d10f06c744e281da858e4.md) | 242 | `result-track:a98d10f06c744e281da858e4780ac2835472eda647ddc11e24aac132b82b3676` |
| 14 | `theorem` | [integral_deriv_comp_smul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-deriv-comp-smul-deriv--1febcb493655969eae69c359.md) | 252 | `result-track:1febcb493655969eae69c35989a95e6654bb3acf27a5f29cb213b66d986d639d` |
| 15 | `theorem` | [integral_comp_mul_deriv'''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-comp-mul-deriv--7bdd077f04889dd5d7823a79.md) | 269 | `result-track:7bdd077f04889dd5d7823a794e99eed6bf4adc4358a9113597268bf065d78091` |
| 16 | `theorem` | [integral_comp_mul_deriv''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-comp-mul-deriv--98b99a436caed0511befbcaf.md) | 282 | `result-track:98b99a436caed0511befbcafb69406a095ee5f5b33f414d5f4a8b19b77611e5d` |
| 17 | `theorem` | [integral_comp_mul_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-comp-mul-deriv--0b8db43569e298f66fa0c6e8.md) | 294 | `result-track:0b8db43569e298f66fa0c6e8c6f9493f07bb8b69421df311a9e3165e4abe5f8c` |
| 18 | `theorem` | [integral_comp_mul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-comp-mul-deriv--9463eed4dd1a18abe6203867.md) | 303 | `result-track:9463eed4dd1a18abe6203867f12513d7971c6aa249f388c880a232de1de23bfb` |
| 19 | `theorem` | [integral_deriv_comp_mul_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-deriv-comp-mul-deriv--f4ef232cb5829328054e3476.md) | 308 | `result-track:f4ef232cb5829328054e3476c8f26a058ba8aa6832ecfecaa274c29c46e1e4b7` |
| 20 | `theorem` | [integral_deriv_comp_mul_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant05da86666bece42861f5ac1a33ded3b81165c4bccdc1e2bd1c0a591fd79f8db8.lean/declarations/integral-deriv-comp-mul-deriv--23815fd14841d9638fd02dd9.md) | 316 | `result-track:23815fd14841d9638fd02dd948b74782e2558bd75972fefa38f93512505f390d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
