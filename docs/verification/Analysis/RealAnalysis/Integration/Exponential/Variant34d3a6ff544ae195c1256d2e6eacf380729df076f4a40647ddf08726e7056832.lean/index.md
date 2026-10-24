# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Exponential.Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3e5e8a331badecbfe1cc2d17fc44479062489c8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3e5e8a331badecbfe1cc2d17fc44479062489c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/exponentialpdfreal--6e86067e1cea000bcc263a62.md) | 49 | `declaration-track:6e86067e1cea000bcc263a621d90c37fe9e2268e4101c6ad3c5dccbe2aaca36f` |
| 2 | `def` | [exponentialPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/exponentialpdf--d8f783ebbc944bfa297149ec.md) | 54 | `declaration-track:d8f783ebbc944bfa297149ecdb9f3a8149c99c311ff0ea7faa3a037459160a4c` |
| 3 | `lemma` | [exponentialPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/exponentialpdf-eq--5ca11c1119f980841cf85c07.md) | 57 | `result-track:5ca11c1119f980841cf85c0788a636c8394e7a8bafc1789141f0a666b70b442b` |
| 4 | `lemma` | [exponentialPDF_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/exponentialpdf-of-neg--6d6ac994ede4528eb002474e.md) | 62 | `result-track:6d6ac994ede4528eb002474e5bbaaeed1be972f5b8592f92c22846a2aae9b91e` |
| 5 | `lemma` | [exponentialPDF_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/exponentialpdf-of-nonneg--65fc33455c76776cff535eec.md) | 64 | `result-track:65fc33455c76776cff535eec82155440755a8be04b35c3c24a17594b333efba3` |
| 6 | `lemma` | [lintegral_exponentialPDF_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/lintegral-exponentialpdf-of-nonpos--cdb1fdb37c3808debc31db76.md) | 69 | `result-track:cdb1fdb37c3808debc31db760c21a2903b0ffa67dd8716e31fd8bdc2819f59e1` |
| 7 | `lemma` | [measurable_exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/measurable-exponentialpdfreal--028ece239af9e174028320ed.md) | 74 | `result-track:028ece239af9e174028320edb737dda7ebc08ebb1de376313dcbe9dcf4bee911` |
| 8 | `lemma` | [stronglyMeasurable_exponentialPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/stronglymeasurable-exponentialpdfreal--08987209e26d4c2e3d148427.md) | 79 | `result-track:08987209e26d4c2e3d1484279b65a15294ba17721ac3397cfced1500b2927ed3` |
| 9 | `lemma` | [exponentialPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/exponentialpdfreal-pos--c663ab778b0b48c0e5e91be0.md) | 83 | `result-track:c663ab778b0b48c0e5e91be0384555b513d361091c494f85e79fdb70f635f907` |
| 10 | `lemma` | [exponentialPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/exponentialpdfreal-nonneg--5e08566316bd31da7130b346.md) | 87 | `result-track:5e08566316bd31da7130b34619f444c8938a40433207886013f53b5c83af395a` |
| 11 | `lemma` | [lintegral_exponentialPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/lintegral-exponentialpdf-eq-one--14be8eca6031cea46a7d237e.md) | 94 | `result-track:14be8eca6031cea46a7d237e924c0cfd8dccd8aadb340fac2c8824f52815475c` |
| 12 | `def` | [expMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/expmeasure--fe18d04a462c42776abe9b15.md) | 104 | `declaration-track:fe18d04a462c42776abe9b15171678db8a30d4f1c9863c1a0e213a07d5e30fdb` |
| 13 | `lemma` | [isProbabilityMeasure_expMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/isprobabilitymeasure-expmeasure--6bf1206a91b66b3c6c8496a2.md) | 106 | `result-track:6bf1206a91b66b3c6c8496a2183316f140c99a212df8cba17198c86063947a91` |
| 14 | `lemma` | [cdf_expMeasure_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/cdf-expmeasure-eq-integral--5e91f37bcc5db83255268ab9.md) | 111 | `result-track:5e91f37bcc5db83255268ab9cae73a25de618a90c2a96eb626baaf8df764ba91` |
| 15 | `lemma` | [cdf_expMeasure_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/cdf-expmeasure-eq-lintegral--5bf3615085596651170a8fb1.md) | 115 | `result-track:5bf3615085596651170a8fb16d0f773ae930823cf3c9ea009ca327bae1cc3ff0` |
| 16 | `lemma` | [hasDerivAt_neg_exp_mul_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/hasderivat-neg-exp-mul-exp--52350913a8d430650f7fd5af.md) | 121 | `result-track:52350913a8d430650f7fd5afcad66f317275a2e026f7c113efab35de81c58349` |
| 17 | `lemma` | [exp_neg_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/exp-neg-integrableon-ioc--6212a332599ed14826e4ba10.md) | 128 | `result-track:6212a332599ed14826e4ba108e90b00a1da72f9084e7322cc4cad58258131c14` |
| 18 | `lemma` | [lintegral_exponentialPDF_eq_antiDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/lintegral-exponentialpdf-eq-antideriv--5a881835709e8f451b6244b9.md) | 133 | `result-track:5a881835709e8f451b6244b9537730a82b2e7ce4176df265cb231d9044775dbb` |
| 19 | `lemma` | [cdf_expMeasure_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Exponential/Variant34d3a6ff544ae195c1256d2e6eacf380729df076f4a40647ddf08726e7056832.lean/declarations/cdf-expmeasure-eq--6ed63d2b92e1856ab3655949.md) | 173 | `result-track:6ed63d2b92e1856ab3655949c14b935d264afdd3f2b52b6745172c2c75af1afe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
