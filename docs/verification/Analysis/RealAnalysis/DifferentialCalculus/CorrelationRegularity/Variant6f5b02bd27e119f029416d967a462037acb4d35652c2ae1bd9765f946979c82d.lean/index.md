# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrelationRegularity.Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fea3c63ddad056d174f79b8ad06624e405adeb3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fea3c63ddad056d174f79b8ad06624e405adeb3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.Realization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Indicator` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [indicator_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/indicator-hasderivat--8930579184eea50cd244a25c.md) | 23 | `result-track:8930579184eea50cd244a25c58f99547a3335141cf5143f2c2a3a04040038500` |
| 2 | `def` | [thirdInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/thirdinterior--5cb9be101397d6904014b794.md) | 57 | `declaration-track:5cb9be101397d6904014b79428dc4df6c56d9bf13ade9d56c16f123571287e44` |
| 3 | `theorem` | [secondInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/secondinterior-hasderivat--4418e4f35cb0da10bc03674a.md) | 62 | `result-track:4418e4f35cb0da10bc03674a9650f20722662b1cb2b7914d747db27d408e89bb` |
| 4 | `theorem` | [thirdInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/thirdinterior-endpoints--7b22a2e40f133e4735b13c3e.md) | 74 | `result-track:7b22a2e40f133e4735b13c3e2cad78ef4dfafcb4d063c95cce83c879ecb28fdd` |
| 5 | `def` | [normalizedInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedinterior--cba0aee83211e826047d8833.md) | 79 | `declaration-track:cba0aee83211e826047d88336e3e6c91b0acd145ea8e4b88da678027f95a1f0c` |
| 6 | `def` | [normalizedInteriorDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedinteriorderivative--76920c08013d768386b53835.md) | 83 | `declaration-track:76920c08013d768386b53835570714a7b20fb71c33753e4e5075f64b4ccf870f` |
| 7 | `theorem` | [normalizedTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedtest-eq-indicator--cc5d802f75ef36c73809786a.md) | 87 | `result-track:cc5d802f75ef36c73809786ad84676523c68c5614e050148711d5948d05ac61d` |
| 8 | `theorem` | [normalizedInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedinterior-hasderivat--8672e196911e7ef384e9e983.md) | 96 | `result-track:8672e196911e7ef384e9e9835d66048686a0dbe6e9aab0c230f2e8deb029069a` |
| 9 | `theorem` | [normalizedInteriorDerivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedinteriorderivative-continuous--07220ac571f1b8ca8ae3dbe6.md) | 101 | `result-track:07220ac571f1b8ca8ae3dbe6e87dc46eea504fa1d16ead52bddcc90a389dcbad` |
| 10 | `theorem` | [normalizedInterior_frontier](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedinterior-frontier--95f22b48548927d2379ad5e9.md) | 107 | `result-track:95f22b48548927d2379ad5e94c5656c95577ca315d1353fb23051e0cbb14bc17` |
| 11 | `theorem` | [normalizedTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedtest-contdiff--5ceb8908f374556a58d01f32.md) | 123 | `result-track:5ceb8908f374556a58d01f328d3f71c6cf80d2f5916aa64fe7f77fdd671185e5` |
| 12 | `theorem` | [normalizedTest_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedtest-zero-of-le-abs--5951f3afcc748ddb7580818f.md) | 136 | `result-track:5951f3afcc748ddb7580818f11cb00066f79811e7892d065ddf79b69250251f5` |
| 13 | `theorem` | [normalizedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedtest-hascompactsupport--d514dc6185b5caf1fc76d5fd.md) | 154 | `result-track:d514dc6185b5caf1fc76d5fdb911037bae99e554ee802f97fd11752a17dab275` |
| 14 | `theorem` | [normalizedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/normalizedtest-integrable--1e1286522e7ebd347508cae5.md) | 162 | `result-track:1e1286522e7ebd347508cae5d1ed27f4befe928e80fe557eb354ba1326a6b2ce` |
| 15 | `theorem` | [correlation_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/correlation-product-integrable--9a011981d6fc2d9a9ef6548b.md) | 169 | `result-track:9a011981d6fc2d9a9ef6548b53c73b38e9953e009f7cff7d25d2822d5ca8f1f5` |
| 16 | `theorem` | [reflectedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/reflectedtest-hascompactsupport--739b9d2f489b452c15c628de.md) | 177 | `result-track:739b9d2f489b452c15c628debcd4e5ad453b9b58628d8dbd4edd738c967495fe` |
| 17 | `theorem` | [reflectedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/reflectedtest-integrable--53b6054f86b7fae1026bc29e.md) | 187 | `result-track:53b6054f86b7fae1026bc29e0744488e8bd6276c20706d7600e2a38ef07a45aa` |
| 18 | `theorem` | [sourceCorrelation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/sourcecorrelation-eq-convolution--02120befb434df4fc604d7c2.md) | 193 | `result-track:02120befb434df4fc604d7c2e9ee669d7269681e839d79fcc2bfaa2f168df602` |
| 19 | `theorem` | [sourceCorrelation_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/sourcecorrelation-contdiff--f5b988fb51db7476d97bce91.md) | 204 | `result-track:f5b988fb51db7476d97bce91df5aa30937d90c62a5bc068a3f356d2134ae0ecf` |
| 20 | `theorem` | [sourceCorrelation_eq_zero_of_two_mul_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/sourcecorrelation-eq-zero-of-two-mul-le-abs--8dc1389eeacef5e1d1ee9549.md) | 213 | `result-track:8dc1389eeacef5e1d1ee9549ab61060b88dcc5ea23a2f7251a43eddfc1af75b7` |
| 21 | `theorem` | [sourceCorrelation_upper_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/sourcecorrelation-upper-endpoint--3b2620b898f2f20e67e96cf7.md) | 232 | `result-track:3b2620b898f2f20e67e96cf7d804cac3879d84da0ef3ab67d052c83e358bbfa6` |
| 22 | `theorem` | [sourceCorrelation_lower_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/sourcecorrelation-lower-endpoint--2f5e9cad9ad3cee4c4a226c8.md) | 237 | `result-track:2f5e9cad9ad3cee4c4a226c8d8a664c8f30e6c6a5f637d7d6f9296ec4eeb74b9` |
| 23 | `theorem` | [sourceCorrelation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/sourcecorrelation-hascompactsupport--f288482cd6cf9a4056917b31.md) | 243 | `result-track:f288482cd6cf9a4056917b3157c5a0b80849ecec1c0b3a8d953e2d9e9f4e7d99` |
| 24 | `theorem` | [sourceCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/sourcecorrelation-integrable--2722e82e270a3d1a051a1083.md) | 253 | `result-track:2722e82e270a3d1a051a10834546124cde6c58458f1964b31d1655f699fbc996` |
| 25 | `theorem` | [sourceCorrelation_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/sourcecorrelation-even--faaafc637876401adb673d92.md) | 259 | `result-track:faaafc637876401adb673d924781b14ce2e65e95ecfd19988c0b88ef05919d87` |
| 26 | `theorem` | [sourceCorrelation_seams_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/sourcecorrelation-seams-contdiffat--97def67b3a3f414167d5f0f9.md) | 269 | `result-track:97def67b3a3f414167d5f0f95aa9a9909b9cdad2911f2481c1891c109b4bf198` |
| 27 | `theorem` | [correlation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/declarations/correlation-certificate--294e280c22ae6b4015b5d400.md) | 278 | `result-track:294e280c22ae6b4015b5d400ff0eea57a8e4eb4ee037fddb2930c26b1a46bf8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
