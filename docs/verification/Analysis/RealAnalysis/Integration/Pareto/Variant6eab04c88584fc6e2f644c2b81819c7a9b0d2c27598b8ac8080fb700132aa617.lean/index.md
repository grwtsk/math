# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Pareto.Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c37acc237517df901c191b2bbfd471f7ff48f2a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c37acc237517df901c191b2bbfd471f7ff48f2a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean.json)

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
| 1 | `def` | [paretoPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/paretopdfreal--e16dd21f12fdc3d6511b2752.md) | 45 | `declaration-track:e16dd21f12fdc3d6511b27529cdeac9fc5575b40da6417c27046c703e4fbe852` |
| 2 | `def` | [paretoPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/paretopdf--c9719d6a5c8f9b16c2ed8e73.md) | 49 | `declaration-track:c9719d6a5c8f9b16c2ed8e73a6e81acaa3397e38396114d825cde740e52ae130` |
| 3 | `lemma` | [paretoPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/paretopdf-eq--c4e64917b64967399b535f13.md) | 52 | `result-track:c4e64917b64967399b535f13b1838db8535513f18d1a61672f3f06ef7d53d456` |
| 4 | `lemma` | [paretoPDF_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/paretopdf-of-lt--ce7471c1e06b64bc0a62d631.md) | 55 | `result-track:ce7471c1e06b64bc0a62d631218aca502f9d5785db7979c35ac81d4d205a9480` |
| 5 | `lemma` | [paretoPDF_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/paretopdf-of-le--95c28cf61c03e55a3a399751.md) | 58 | `result-track:95c28cf61c03e55a3a399751d645602464ed619bb2a281fe802d79117bf6de20` |
| 6 | `lemma` | [lintegral_paretoPDF_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/lintegral-paretopdf-of-le--d96ae9e98f65d30787a74f87.md) | 63 | `result-track:d96ae9e98f65d30787a74f873191fb7f343f17ea41fadfd71cc80acb6cdce77c` |
| 7 | `lemma` | [measurable_paretoPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/measurable-paretopdfreal--d7d4c700d0ac147075bff535.md) | 73 | `result-track:d7d4c700d0ac147075bff535b154468b278dd8e71b0023a728c1c21efd0a646b` |
| 8 | `lemma` | [stronglyMeasurable_paretoPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/stronglymeasurable-paretopdfreal--4a856d8e4f23153a0524785a.md) | 78 | `result-track:4a856d8e4f23153a0524785a51f736bed2f44e0ac66ae6176baa80a71cef7afc` |
| 9 | `lemma` | [paretoPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/paretopdfreal-pos--a32caf038383e4caa3828bde.md) | 83 | `result-track:a32caf038383e4caa3828bde2704d4cf319414396d7e47a94016fef597d35ba2` |
| 10 | `lemma` | [paretoPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/paretopdfreal-nonneg--f0b6671a27e3afb4125d3f1a.md) | 90 | `result-track:f0b6671a27e3afb4125d3f1add80c1487b4b1ca4629f471be3b3a4a99e1b38b5` |
| 11 | `lemma` | [lintegral_paretoPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/lintegral-paretopdf-eq-one--db306260c22cb721e6dd4d8d.md) | 104 | `result-track:db306260c22cb721e6dd4d8dc0b5efdc63b96b026768f8e1da47c17ed7a2b677` |
| 12 | `def` | [paretoMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/paretomeasure--3fe65d0682bf338e14b20b2a.md) | 126 | `declaration-track:3fe65d0682bf338e14b20b2a5b03206dbae6b715ead748bfada83bced762dc5c` |
| 13 | `lemma` | [isProbabilityMeasure_paretoMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/isprobabilitymeasure-paretomeasure--4eed66e54a11fa670d579abe.md) | 129 | `result-track:4eed66e54a11fa670d579abe38f2b2af707f0229579676325295a107c2255fb3` |
| 14 | `lemma` | [cdf_paretoMeasure_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/cdf-paretomeasure-eq-integral--378a27bb47fcbb14e296f99f.md) | 136 | `result-track:378a27bb47fcbb14e296f99f57ec1b7ef60394c3d4eb5831cb92f718b435d4a6` |
| 15 | `lemma` | [cdf_paretoMeasure_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pareto/Variant6eab04c88584fc6e2f644c2b81819c7a9b0d2c27598b8ac8080fb700132aa617.lean/declarations/cdf-paretomeasure-eq-lintegral--fd1c7548f6e62bb9e7f8848f.md) | 144 | `result-track:fd1c7548f6e62bb9e7f8848f8f92f1a7e8370970f7d08ac717dc5d4e2ac57df2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
