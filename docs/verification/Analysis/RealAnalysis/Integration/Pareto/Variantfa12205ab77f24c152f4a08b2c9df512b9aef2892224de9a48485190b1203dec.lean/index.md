# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Pareto.Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6d42189755de8d5e4432b061e4c24c76a888f6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6d42189755de8d5e4432b061e4c24c76a888f6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean.json)

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
| 1 | `def` | [paretoPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/paretopdfreal--e195216535ae941d4ede1fdb.md) | 37 | `declaration-track:e195216535ae941d4ede1fdb60ba5a6209db795ac37398761f59a8860d04ea8c` |
| 2 | `def` | [paretoPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/paretopdf--46e80279c1ee193d5130e840.md) | 41 | `declaration-track:46e80279c1ee193d5130e8406c5430db0183fca6e182b0a3e24be7ce8bfa1a33` |
| 3 | `lemma` | [paretoPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/paretopdf-eq--32e544a6121e2ebe016a01be.md) | 44 | `result-track:32e544a6121e2ebe016a01be144499c0dc2fd3fdfe72752eba16c8621d283116` |
| 4 | `lemma` | [paretoPDF_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/paretopdf-of-lt--a26e21d800b44c6869cc3c60.md) | 47 | `result-track:a26e21d800b44c6869cc3c60b375044c15a625604c174e02d0308def7d527793` |
| 5 | `lemma` | [paretoPDF_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/paretopdf-of-le--d8770c4c2f0f92db69c85d49.md) | 50 | `result-track:d8770c4c2f0f92db69c85d49d555c72f8620c36c8264e073415ec2f73cb49d7c` |
| 6 | `lemma` | [lintegral_paretoPDF_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/lintegral-paretopdf-of-le--71403e0b38a300f234c91a46.md) | 55 | `result-track:71403e0b38a300f234c91a46a5ad7d52e14defc86efb65bff00d8d733be97533` |
| 7 | `lemma` | [measurable_paretoPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/measurable-paretopdfreal--fc9eb3224a59ffd33ccc74d5.md) | 65 | `result-track:fc9eb3224a59ffd33ccc74d594adc0506fa04c4178d558f6c3b3b5f3e5ce0d46` |
| 8 | `lemma` | [stronglyMeasurable_paretoPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/stronglymeasurable-paretopdfreal--b3ad94503eae29561f6aca00.md) | 70 | `result-track:b3ad94503eae29561f6aca007a68e8b4e9a5709859762a509b263e958041ecbb` |
| 9 | `lemma` | [paretoPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/paretopdfreal-pos--fbb03db859890f97571133c6.md) | 75 | `result-track:fbb03db859890f97571133c664b6922654129bf30779297658fe7927c12e4503` |
| 10 | `lemma` | [paretoPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/paretopdfreal-nonneg--71e09eaa2d1999ac8cd9dc05.md) | 82 | `result-track:71e09eaa2d1999ac8cd9dc05dcdc88edde6bb155a813841e12055b634d5ef96f` |
| 11 | `lemma` | [lintegral_paretoPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/lintegral-paretopdf-eq-one--a26ed7f2e666f353b3649a0d.md) | 96 | `result-track:a26ed7f2e666f353b3649a0d97a6eab80600a465b62b75bd28072b0a964a02f4` |
| 12 | `def` | [paretoMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/paretomeasure--3656c71d7d2ed0a168d20370.md) | 118 | `declaration-track:3656c71d7d2ed0a168d20370464121f32a6b631275fca958eb6a3e507d0eb7de` |
| 13 | `lemma` | [isProbabilityMeasure_paretoMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/isprobabilitymeasure-paretomeasure--af75e0b8aad27b3e7a89947d.md) | 121 | `result-track:af75e0b8aad27b3e7a89947d036d5c12dc51d082fadb860049ef140ee1d2b0eb` |
| 14 | `lemma` | [cdf_paretoMeasure_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/cdf-paretomeasure-eq-integral--4a6c13b4698d0b8a0acd7c37.md) | 128 | `result-track:4a6c13b4698d0b8a0acd7c37ff4bf229ab19e11bbf0c1884afa7da9a7bcf3e61` |
| 15 | `lemma` | [cdf_paretoMeasure_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/declarations/cdf-paretomeasure-eq-lintegral--47226c9e7a8d522b3eecc753.md) | 136 | `result-track:47226c9e7a8d522b3eecc7537013a3e69b24b8736c65ca233f56ccaf01775dea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
