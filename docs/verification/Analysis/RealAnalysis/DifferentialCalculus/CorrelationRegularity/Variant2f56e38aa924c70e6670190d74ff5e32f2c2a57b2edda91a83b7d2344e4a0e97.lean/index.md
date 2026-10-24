# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrelationRegularity.Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42a4a4f45107dd2918d8bc348c5a69217eb1de39",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42a4a4f45107dd2918d8bc348c5a69217eb1de39`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.Realization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Indicator` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [indicator_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/indicator-hasderivat--7d8da430034908a8ba47b9b9.md) | 31 | `result-track:7d8da430034908a8ba47b9b9a71f5d3c7961cb875898adf1449c957b3e0bc846` |
| 2 | `def` | [thirdInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/thirdinterior--0357d63378f861757c401826.md) | 65 | `declaration-track:0357d63378f861757c40182621f730212a6baa7ccd7f0b361f28121e0fb9608d` |
| 3 | `theorem` | [secondInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/secondinterior-hasderivat--ae2a3fbad9dc368f55d0b4e6.md) | 70 | `result-track:ae2a3fbad9dc368f55d0b4e6101ba28a142086fbf8603fda29abcf0448b6cf07` |
| 4 | `theorem` | [thirdInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/thirdinterior-endpoints--b42eb43dc4045da8920cac38.md) | 82 | `result-track:b42eb43dc4045da8920cac38de4f98afad21881a3c23ece990706b95ae94d619` |
| 5 | `def` | [normalizedInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedinterior--fbecb3107bf56db4880af92b.md) | 87 | `declaration-track:fbecb3107bf56db4880af92b4fa83eae7cfaa2edd3475ec1e36bcb829e6b8239` |
| 6 | `def` | [normalizedInteriorDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedinteriorderivative--37d051dabaced18de1e5581e.md) | 91 | `declaration-track:37d051dabaced18de1e5581e53fd05b289cb612d7b0235049b27cba9b14a2102` |
| 7 | `theorem` | [normalizedTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedtest-eq-indicator--8aa599731a52e49e111e98a2.md) | 95 | `result-track:8aa599731a52e49e111e98a29553b5c48ae80b6a3224b71a6bb707e4e59b2c83` |
| 8 | `theorem` | [normalizedInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedinterior-hasderivat--9600c1d28e9df98507b1bde9.md) | 104 | `result-track:9600c1d28e9df98507b1bde97b3a0a6a4b2feac17a42dfbfb68f198787fa94b7` |
| 9 | `theorem` | [normalizedInteriorDerivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedinteriorderivative-continuous--ea7d1d3d70a570fa3013945e.md) | 109 | `result-track:ea7d1d3d70a570fa3013945e2d634f4df6d08499d3de923dee1374cd7b875c63` |
| 10 | `theorem` | [normalizedInterior_frontier](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedinterior-frontier--95a32c5d6b3da1edf765e446.md) | 115 | `result-track:95a32c5d6b3da1edf765e446bd6bab0d3a9bf6903c27b1fc2e288d204f948735` |
| 11 | `theorem` | [normalizedTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedtest-contdiff--fd3284286bda4f3e1d541bb1.md) | 131 | `result-track:fd3284286bda4f3e1d541bb140bfd0676ef069fd224606b986dfe02f395709d9` |
| 12 | `theorem` | [normalizedTest_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedtest-zero-of-le-abs--a8579d4c1326ee35b9bb63fc.md) | 144 | `result-track:a8579d4c1326ee35b9bb63fcd6629072be3dfc42b247c40d4ba1950827d2758f` |
| 13 | `theorem` | [normalizedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedtest-hascompactsupport--1e873819512b7f7857c32725.md) | 162 | `result-track:1e873819512b7f7857c327257642c6e9f22352d38b421ea7e9f2a47cb6f848fb` |
| 14 | `theorem` | [normalizedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/normalizedtest-integrable--0ea4191e3bd0faf1092cc537.md) | 170 | `result-track:0ea4191e3bd0faf1092cc537968d1ff1aae64285c034d6727c8f07d0e6dc4c25` |
| 15 | `theorem` | [correlation_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/correlation-product-integrable--24f7254efbf64fe737a31d84.md) | 177 | `result-track:24f7254efbf64fe737a31d84a17b4e4882f10cbe61fe2112d287ca7b07719ab9` |
| 16 | `theorem` | [reflectedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/reflectedtest-hascompactsupport--6e1b2733eda5abeb744c88f6.md) | 185 | `result-track:6e1b2733eda5abeb744c88f6481969e66aa418c590b1ba16e4ce144e79529a6e` |
| 17 | `theorem` | [reflectedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/reflectedtest-integrable--10030cb8b25dca222b76a73d.md) | 195 | `result-track:10030cb8b25dca222b76a73d06fc538260cc5926e1e3225bcfd3d0e01536c114` |
| 18 | `theorem` | [sourceCorrelation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/sourcecorrelation-eq-convolution--aaa02574934abbfe5667552f.md) | 201 | `result-track:aaa02574934abbfe5667552f9eafc5e4c6bdeb610da297d4a92cd5313d68ef1d` |
| 19 | `theorem` | [sourceCorrelation_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/sourcecorrelation-contdiff--746be234e4d96ab840579305.md) | 212 | `result-track:746be234e4d96ab840579305dd60e7875b27d093b57fe68454e108b1ef9475bf` |
| 20 | `theorem` | [sourceCorrelation_eq_zero_of_two_mul_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/sourcecorrelation-eq-zero-of-two-mul-le-abs--f97d67b4473f4a733a18cd5c.md) | 221 | `result-track:f97d67b4473f4a733a18cd5cfa49a600dc2a35e931b00c4b3f6e6a656253df2c` |
| 21 | `theorem` | [sourceCorrelation_upper_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/sourcecorrelation-upper-endpoint--c067851ace884f79c0545055.md) | 240 | `result-track:c067851ace884f79c0545055c55700f82538a935a97aaa88ea4414d044a09212` |
| 22 | `theorem` | [sourceCorrelation_lower_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/sourcecorrelation-lower-endpoint--41b4927069417951d04ea2f8.md) | 245 | `result-track:41b4927069417951d04ea2f8afde8be1423ae05a028d0276bd5e3c6cdd78b475` |
| 23 | `theorem` | [sourceCorrelation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/sourcecorrelation-hascompactsupport--23603be6d450010315a24b15.md) | 251 | `result-track:23603be6d450010315a24b1582dbdaa7ebb13b2f19ff7ad92dfa5f4c95860d42` |
| 24 | `theorem` | [sourceCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/sourcecorrelation-integrable--1b63ae9f93308f8b5510163e.md) | 261 | `result-track:1b63ae9f93308f8b5510163ea475d7e414a0f4c9f1487bbeee60ca0d6f68baf1` |
| 25 | `theorem` | [sourceCorrelation_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/sourcecorrelation-even--b88b63487a5e893cb1791ff3.md) | 267 | `result-track:b88b63487a5e893cb1791ff3563bce2f2192b02e3315f20c7e4eb7fe9af85080` |
| 26 | `theorem` | [sourceCorrelation_seams_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/sourcecorrelation-seams-contdiffat--c920c093561eb92767771865.md) | 277 | `result-track:c920c093561eb927677718656866aa5964d157b8a77f30791da59a4ddbac081d` |
| 27 | `theorem` | [correlation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant2f56e38aa924c70e6670190d74ff5e32f2c2a57b2edda91a83b7d2344e4a0e97.lean/declarations/correlation-certificate--d4bf112436ebf3c7b3592c6d.md) | 286 | `result-track:d4bf112436ebf3c7b3592c6dba8ead110b35681787c97781a74754bcc999eb10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
