# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Exponential.Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fa2e08fb6aed53f419504fb6fd21d8db6ce2ead",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fa2e08fb6aed53f419504fb6fd21d8db6ce2ead`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.CDF` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gamma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialpdfreal--775980ea02215fbfa33e340e.md) | 47 | `declaration-track:775980ea02215fbfa33e340e224a5ba335bf874a1b4c8c6c0ebb6468e6b1e373` |
| 2 | `def` | [exponentialPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialpdf--e22991143a393e41a33d671b.md) | 52 | `declaration-track:e22991143a393e41a33d671b241ee767cd7ca2f9c1f93006d8999ac99cfeda85` |
| 3 | `lemma` | [exponentialPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialpdf-eq--33a3e70d3db61d8e087145f2.md) | 55 | `result-track:33a3e70d3db61d8e087145f253518eb94e1b1391a46f0c031772556463d6f057` |
| 4 | `lemma` | [exponentialPDF_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialpdf-of-neg--bcd9dddf7f0ebc21c79849c0.md) | 60 | `result-track:bcd9dddf7f0ebc21c79849c0ad99ee64f0e7890bf9864a88557cb567123db71c` |
| 5 | `lemma` | [exponentialPDF_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialpdf-of-nonneg--0fd6bac8b3380dd0314509fd.md) | 62 | `result-track:0fd6bac8b3380dd0314509fd42dc20ee5dd1f7dfb847e1ae3596afced37cbf59` |
| 6 | `lemma` | [lintegral_exponentialPDF_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/lintegral-exponentialpdf-of-nonpos--8e2c32e7d9496993a02f2628.md) | 67 | `result-track:8e2c32e7d9496993a02f262803936d4f0eb791b0bfdf94e853a84776dc9fe4f9` |
| 7 | `lemma` | [measurable_exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/measurable-exponentialpdfreal--8f09ff09f0dfce73bae7d88f.md) | 72 | `result-track:8f09ff09f0dfce73bae7d88f644eb0a7eeb7457a709fc84cc4fc9307cf853282` |
| 8 | `lemma` | [stronglyMeasurable_exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/stronglymeasurable-exponentialpdfreal--8a460fc82d59b88e795649ab.md) | 77 | `result-track:8a460fc82d59b88e795649ab05d9f89a487ca7e4d887edcc76d045e39a52e617` |
| 9 | `lemma` | [exponentialPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialpdfreal-pos--a8cfcca9af404e802408bb11.md) | 81 | `result-track:a8cfcca9af404e802408bb118487e470a3af3c58cfc0e985e4edc138aefee666` |
| 10 | `lemma` | [exponentialPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialpdfreal-nonneg--908b088f9c805c0375863a74.md) | 85 | `result-track:908b088f9c805c0375863a748d0b4c935dd0889358f66ce467a6f27de5f6d329` |
| 11 | `lemma` | [lintegral_exponentialPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/lintegral-exponentialpdf-eq-one--8af614adbc252ce25ff4f8ca.md) | 92 | `result-track:8af614adbc252ce25ff4f8caf271cb7834704a67f271031604141ae83776d2dd` |
| 12 | `def` | [expMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/expmeasure--33fc30bf15d4ba4e72996b6a.md) | 101 | `declaration-track:33fc30bf15d4ba4e72996b6a7904ce45b0f78b7937945f36284367258e75f48c` |
| 13 | `lemma` | [isProbabilityMeasureExponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/isprobabilitymeasureexponential--6da26dadc594ed6a26efa182.md) | 103 | `result-track:6da26dadc594ed6a26efa1828294e70a9bc34834f69cebb52ffbf04ba47b2dec` |
| 14 | `def` | [exponentialCDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialcdfreal--af330e74504d80ebd9c8a0e1.md) | 110 | `declaration-track:af330e74504d80ebd9c8a0e1fb7bad50786b9ba365d7efcb79ab3cd12d3b57b8` |
| 15 | `lemma` | [exponentialCDFReal_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialcdfreal-eq-integral--bce9eab627a87cbdd3772a4c.md) | 113 | `result-track:bce9eab627a87cbdd3772a4c4af224fb52209b71d4003a4c5023b855a5041ce3` |
| 16 | `lemma` | [exponentialCDFReal_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialcdfreal-eq-lintegral--571f1e600fb35a1727371012.md) | 117 | `result-track:571f1e600fb35a17273710128bce100b2bb8fe41a65ecc3f09684b18d4cc4ab8` |
| 17 | `lemma` | [hasDerivAt_neg_exp_mul_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/hasderivat-neg-exp-mul-exp--6e3dadf33639c76838c96ad6.md) | 123 | `result-track:6e3dadf33639c76838c96ad60ed11789f38229485306120f09a1d0929f298c74` |
| 18 | `lemma` | [exp_neg_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exp-neg-integrableon-ioc--38bd4aabdf8b61e7ba6771ea.md) | 130 | `result-track:38bd4aabdf8b61e7ba6771eaf4983fbf3d14918b0eb270d13ec68fd696842210` |
| 19 | `lemma` | [lintegral_exponentialPDF_eq_antiDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/lintegral-exponentialpdf-eq-antideriv--2475f0150d3e6acdaaa4b76f.md) | 135 | `result-track:2475f0150d3e6acdaaa4b76f3e14a0e66ec10ff4bc5e525f123962d1386a18f3` |
| 20 | `lemma` | [exponentialCDFReal_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/declarations/exponentialcdfreal-eq--d391316868bcacfda13d2074.md) | 173 | `result-track:d391316868bcacfda13d2074e8d9e0f135cc1c1a57c224c064996dc4f7b91760` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
