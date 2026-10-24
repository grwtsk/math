# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Exponential.Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f216d7e749e28202a90e8509d8f373d5fafdd959",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f216d7e749e28202a90e8509d8f373d5fafdd959`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.CDF` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gamma` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialpdfreal--bcde7542e555cd11e91e6174.md) | 39 | `declaration-track:bcde7542e555cd11e91e617493e190f4711658cb0536574acb77e239d2ffbb7f` |
| 2 | `def` | [exponentialPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialpdf--4f59e45084e8506b056df471.md) | 44 | `declaration-track:4f59e45084e8506b056df47114733c965cc3e64605700e9338c58a4a6e06a062` |
| 3 | `lemma` | [exponentialPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialpdf-eq--653f3683b985f8bd08d0c457.md) | 47 | `result-track:653f3683b985f8bd08d0c457064eac52a900ecc60f2943b3f204744ba74e7062` |
| 4 | `lemma` | [exponentialPDF_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialpdf-of-neg--7ba78ce887907471dc098b72.md) | 52 | `result-track:7ba78ce887907471dc098b72266cfd107bdf4ae3ce5c2b45221850e58bc53e96` |
| 5 | `lemma` | [exponentialPDF_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialpdf-of-nonneg--3ac56fb5c28ddb865bc80dfa.md) | 54 | `result-track:3ac56fb5c28ddb865bc80dfa85261d3d5b3c6954b001a5639381330a7231ebad` |
| 6 | `lemma` | [lintegral_exponentialPDF_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/lintegral-exponentialpdf-of-nonpos--25642ed81014c701024a6855.md) | 59 | `result-track:25642ed81014c701024a68550dd617cf16199d3fac021c0376a49d576d5b856e` |
| 7 | `lemma` | [measurable_exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/measurable-exponentialpdfreal--46f79579d563d3afb561c6ea.md) | 64 | `result-track:46f79579d563d3afb561c6ea4d44d9d5717328d81d4f59a9ec9433b9aec4b48d` |
| 8 | `lemma` | [stronglyMeasurable_exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/stronglymeasurable-exponentialpdfreal--3fea6144915dea1d6722e808.md) | 69 | `result-track:3fea6144915dea1d6722e8080c7407e10547cf6b23ef45bb2eb374ef0d000188` |
| 9 | `lemma` | [exponentialPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialpdfreal-pos--0b47b17695da19facb6b5f4a.md) | 73 | `result-track:0b47b17695da19facb6b5f4a7cbbef0d550037ef7e34ae8c0cbc72c61a3130a9` |
| 10 | `lemma` | [exponentialPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialpdfreal-nonneg--3909f081825920a8d1406cbd.md) | 77 | `result-track:3909f081825920a8d1406cbd56a1411de943031beca7e8876bb0211191a4f06a` |
| 11 | `lemma` | [lintegral_exponentialPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/lintegral-exponentialpdf-eq-one--1fbd059ad4af4979d23b297b.md) | 84 | `result-track:1fbd059ad4af4979d23b297bc7a0edcc56a734d78e9345170719dc492f2721e5` |
| 12 | `def` | [expMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/expmeasure--5a0ee67c5effa60e93efe39f.md) | 93 | `declaration-track:5a0ee67c5effa60e93efe39f192416b58e8ffce7b2f2aa6db24624953d3ea12a` |
| 13 | `lemma` | [isProbabilityMeasureExponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/isprobabilitymeasureexponential--65aac7164bbebcc78d57e535.md) | 95 | `result-track:65aac7164bbebcc78d57e53553452e12124cd4d630ecb04263af568af72e512e` |
| 14 | `def` | [exponentialCDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialcdfreal--9c3935c79c07e21c25db256e.md) | 102 | `declaration-track:9c3935c79c07e21c25db256e85032a73a663baec08959f45360d1a6290fcbe15` |
| 15 | `lemma` | [exponentialCDFReal_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialcdfreal-eq-integral--27b5691b3bd17bfe7a7d1ff0.md) | 105 | `result-track:27b5691b3bd17bfe7a7d1ff0cc2aa871d2503e3da07233287b06c11280f85ffd` |
| 16 | `lemma` | [exponentialCDFReal_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialcdfreal-eq-lintegral--2f8da26abf73bfb6455cd8a4.md) | 109 | `result-track:2f8da26abf73bfb6455cd8a4504dbf0879bd75bc5db750caf0f617f646e1561b` |
| 17 | `lemma` | [hasDerivAt_neg_exp_mul_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/hasderivat-neg-exp-mul-exp--e8850945c67d69dfb0b094e6.md) | 115 | `result-track:e8850945c67d69dfb0b094e68659a1674177aa2e0548432b0230489bb21acaee` |
| 18 | `lemma` | [exp_neg_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exp-neg-integrableon-ioc--e4afcf77532ca30f970836e6.md) | 122 | `result-track:e4afcf77532ca30f970836e6dd7f7551db3c0bad1e47fc6bc0c7c993ec33845b` |
| 19 | `lemma` | [lintegral_exponentialPDF_eq_antiDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/lintegral-exponentialpdf-eq-antideriv--d6fa5d513e12ed231101ec06.md) | 127 | `result-track:d6fa5d513e12ed231101ec064bff9ee6962261522a820613cafeba4d1be5ba0b` |
| 20 | `lemma` | [exponentialCDFReal_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant27c7b9c45ecdd17038b82bff37a0b50ec780dac95ef804f97eaebe9c2f979f0c.lean/declarations/exponentialcdfreal-eq--54b439b618b54228b8388e87.md) | 165 | `result-track:54b439b618b54228b8388e87f0ce680480e82d65cc209f79878e4c9a001766c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
