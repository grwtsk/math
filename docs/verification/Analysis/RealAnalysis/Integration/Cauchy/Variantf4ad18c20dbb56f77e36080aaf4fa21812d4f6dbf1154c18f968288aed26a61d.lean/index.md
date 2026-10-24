# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Cauchy.Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e797ca93bbb7ef525f6cb76b1ee41ee3c61cac95",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e797ca93bbb7ef525f6cb76b1ee41ee3c61cac95`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cauchyPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchypdfreal--7a6bcd58efa37bdbc61d44e2.md) | 42 | `declaration-track:7a6bcd58efa37bdbc61d44e2a6031eab64722966dab6eaaa5175c6bae8487de4` |
| 2 | `lemma` | [cauchyPDFReal_scale_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchypdfreal-scale-zero--e48b0a03a1b23d31a4db1148.md) | 48 | `result-track:e48b0a03a1b23d31a4db11489f9d5fb1d909edb1e73195c4c249f41e29d9804a` |
| 3 | `lemma` | [cauchyPDFReal_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchypdfreal-def--2637bf7e77d86c3e17e9cf97.md) | 55 | `result-track:2637bf7e77d86c3e17e9cf97eb1be31306af65416e17078cf2579683bb1ff93f` |
| 4 | `lemma` | [cauchyPDFReal_def'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchypdfreal-def--e6c20bc9173ba9d139a89f74.md) | 61 | `result-track:e6c20bc9173ba9d139a89f744d7045ed69a65fad1703011af3135bc6e84d4b67` |
| 5 | `def` | [cauchyPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchypdf--c92b16aa9b4ab69de99edf22.md) | 73 | `declaration-track:c92b16aa9b4ab69de99edf222d245ab56c24c1ebea7863193ea1d723040c3640` |
| 6 | `lemma` | [cauchyPDF_scale_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchypdf-scale-zero--b4170db971d29b69062f490c.md) | 80 | `result-track:b4170db971d29b69062f490c0177cef3e8b12df252041ff43a8084f26e412547` |
| 7 | `lemma` | [cauchyPDF_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchypdf-def--114c8321dc003b0691aaeda8.md) | 87 | `result-track:114c8321dc003b0691aaeda85aaa4fa84af02c45cb601a0bb7597a16f80231d2` |
| 8 | `lemma` | [measurable_cauchyPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/measurable-cauchypdfreal--4ab75a781b4b02f1d3504f72.md) | 94 | `result-track:4ab75a781b4b02f1d3504f72d017ddb80161a0e5656bcff21dfb5cd87d5c5e62` |
| 9 | `lemma` | [stronglyMeasurable_cauchyPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/stronglymeasurable-cauchypdfreal--bbd70b34b32a4fcfd048375c.md) | 102 | `result-track:bbd70b34b32a4fcfd048375c0e31a99f813cdc6b70f2465457ff229e8f0e1fb4` |
| 10 | `lemma` | [measurable_cauchyPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/measurable-cauchypdf--1aee941bf5cb059efef7f022.md) | 109 | `result-track:1aee941bf5cb059efef7f0223656c693a9b27fee27af37d10aba6828dd4c3d39` |
| 11 | `lemma` | [stronglyMeasurable_cauchyPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/stronglymeasurable-cauchypdf--fde734a77dc6241b9c4c1e49.md) | 117 | `result-track:fde734a77dc6241b9c4c1e49ffe188f401fce88879dcba6b351e0ea936be2613` |
| 12 | `lemma` | [cauchyPDF_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchypdf-pos--51ca5a349fc114ace5d1fe5b.md) | 124 | `result-track:51ca5a349fc114ace5d1fe5b3fbe60217c80207cc0f72df16504920befddc2ac` |
| 13 | `lemma` | [integral_cauchyPDFReal_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/integral-cauchypdfreal-eq-one--cda7d0ef791051502c3418e1.md) | 131 | `result-track:cda7d0ef791051502c3418e1d158e48a2af15ad6ce130f6c3af9b67f2d92f09f` |
| 14 | `lemma` | [integrable_cauchyPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/integrable-cauchypdfreal--56dfaea0f435d7db79fb802b.md) | 142 | `result-track:56dfaea0f435d7db79fb802b351aa298b08e830a9df982fce91a8a46ab5665eb` |
| 15 | `lemma` | [lintegral_cauchyPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/lintegral-cauchypdf-eq-one--9bf2f4bf1289bace9341eb19.md) | 155 | `result-track:9bf2f4bf1289bace9341eb190c5f7225dc50cf08d1ae06d4f47dbe7d14d45c1c` |
| 16 | `def` | [cauchyMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchymeasure--66b6864281742fef93152a4b.md) | 170 | `declaration-track:66b6864281742fef93152a4ba929a0bdc12d49b9ad09d26e5e91178b2d620506` |
| 17 | `lemma` | [cauchyMeasure_of_scale_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchymeasure-of-scale-ne-zero--36bb550a5881e9641d7bf4dc.md) | 176 | `result-track:36bb550a5881e9641d7bf4dc9210a1c4b09ee4c0d6af6b1c53c300978aa3f1d4` |
| 18 | `lemma` | [cauchyMeasure_zero_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/cauchymeasure-zero-scale--7aa7f3991ce2090eed0adb93.md) | 183 | `result-track:7aa7f3991ce2090eed0adb934ef0a2324ca57b32faedeadb65e1523a7f311045` |
| 19 | `instance` | [instIsProbabilityMeasure_cauchyMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Cauchy/Variantf4ad18c20dbb56f77e36080aaf4fa21812d4f6dbf1154c18f968288aed26a61d.lean/declarations/instisprobabilitymeasure-cauchymeasure--cc76a60776ffb7c14924722f.md) | 188 | `declaration-track:cc76a60776ffb7c14924722fdcead7ba27d32c6d56d99dfea16b7a4cbe94fe28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
