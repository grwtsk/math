# Verification target: GRWTSK.Analysis.Convolution.PolynomialBumpRegularity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e69ce777a982e13ffb069e3c91a184b40b4f139d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/PolynomialBumpRegularity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e69ce777a982e13ffb069e3c91a184b40b4f139d`.

Source path: `GRWTSK/Analysis/Convolution/PolynomialBumpRegularity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/PolynomialBumpRegularity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.WeakDerivatives.PolynomialBump`](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Indicator` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [indicator_hasDerivAt](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/indicator-hasderivat--a93ba6aa5dc55d1fcdd2fb25.md) | 27 | `result-track:a93ba6aa5dc55d1fcdd2fb25ed9596f04ef245385a15fd6fb4511bcf0a02c772` |
| 2 | `def` | [thirdInterior](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/thirdinterior--17b8948c41cb4ff764618f57.md) | 61 | `declaration-track:17b8948c41cb4ff764618f5743aa6fba7564df889010adf32b386472bbc5dec8` |
| 3 | `theorem` | [secondInterior_hasDerivAt](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/secondinterior-hasderivat--ba27710648889c365bdc9f98.md) | 66 | `result-track:ba27710648889c365bdc9f987439bb014cbe5d6bd79b6d69b7ec66348c25fafd` |
| 4 | `theorem` | [thirdInterior_endpoints](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/thirdinterior-endpoints--dc6911fbd65caf30a19df91d.md) | 78 | `result-track:dc6911fbd65caf30a19df91de5798890e98f0a26b8d8766c8a30b447d3649df3` |
| 5 | `def` | [normalizedInterior](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedinterior--7e840a8833b602e40f37ab6a.md) | 83 | `declaration-track:7e840a8833b602e40f37ab6a449683fe845ac711080b77c13af418157d1695c2` |
| 6 | `def` | [normalizedInteriorDerivative](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedinteriorderivative--9cb77c3c3238d4b551bb836c.md) | 87 | `declaration-track:9cb77c3c3238d4b551bb836c7eef86142658c0ba55600e2719fbdf1812cee476` |
| 7 | `theorem` | [normalizedTest_eq_indicator](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedtest-eq-indicator--743a19446565bf35f37cfdb1.md) | 91 | `result-track:743a19446565bf35f37cfdb175c539d9d6c1a6b644aefea1fe25d198fd967f65` |
| 8 | `theorem` | [normalizedInterior_hasDerivAt](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedinterior-hasderivat--00a8881259f70906a87cf545.md) | 100 | `result-track:00a8881259f70906a87cf5450ffdab4c0aeb953409ba639d18bd3e5a047eec1b` |
| 9 | `theorem` | [normalizedInteriorDerivative_continuous](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedinteriorderivative-continuous--a560ea16abc8e19d156b8efc.md) | 105 | `result-track:a560ea16abc8e19d156b8efcee2087a2bbfaa2792aef0b29eb09a3c38158255e` |
| 10 | `theorem` | [normalizedInterior_frontier](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedinterior-frontier--cf4dfb8f05ff02f540629970.md) | 111 | `result-track:cf4dfb8f05ff02f5406299705c9b39551e953c15b50d72da16d7d1a7f65d73d8` |
| 11 | `theorem` | [normalizedTest_contDiff](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedtest-contdiff--cf0a36ba48580ef1a0f438aa.md) | 127 | `result-track:cf0a36ba48580ef1a0f438aaf12d528f0c18bed97bbd5c83f73d4a754cc563e7` |
| 12 | `theorem` | [normalizedTest_zero_of_le_abs](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedtest-zero-of-le-abs--d4b06e6f7c30f7572c69230a.md) | 140 | `result-track:d4b06e6f7c30f7572c69230aaf615df51bc53e0d0874159edfe9b10a9276211f` |
| 13 | `theorem` | [normalizedTest_hasCompactSupport](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedtest-hascompactsupport--b6dcb87f30dfd36139e8e57b.md) | 158 | `result-track:b6dcb87f30dfd36139e8e57ba53e3d452bef189305b1e3c2a838492978e1eaea` |
| 14 | `theorem` | [normalizedTest_integrable](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/normalizedtest-integrable--c52eb2d043972bef215565b2.md) | 166 | `result-track:c52eb2d043972bef215565b297d6ff6d5981a99573bcb2e55d45faf07067e8b6` |
| 15 | `theorem` | [correlation_product_integrable](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/correlation-product-integrable--8334c0b16360233a2653fa91.md) | 173 | `result-track:8334c0b16360233a2653fa91bb5ffac81782367ccc85b4556e164347a37ca3cd` |
| 16 | `theorem` | [reflectedTest_hasCompactSupport](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/reflectedtest-hascompactsupport--ee65dc30e65a00c5b5411890.md) | 181 | `result-track:ee65dc30e65a00c5b5411890d5260816e22a8196c34a675bf53d3cb83f2e1970` |
| 17 | `theorem` | [reflectedTest_integrable](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/reflectedtest-integrable--1ced076abdf118aba10c40d6.md) | 191 | `result-track:1ced076abdf118aba10c40d60611bb13b77101631b1a1dc718592e6ad7b5159e` |
| 18 | `theorem` | [sourceCorrelation_eq_convolution](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/sourcecorrelation-eq-convolution--979aa566376603769b3086fc.md) | 197 | `result-track:979aa566376603769b3086fc084d93e73f1abefa95571da28dd6230d747bc317` |
| 19 | `theorem` | [sourceCorrelation_contDiff](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/sourcecorrelation-contdiff--e4470576905ac7beccd5d4a0.md) | 208 | `result-track:e4470576905ac7beccd5d4a09e6167d81e266854484d43c4d1277970a5aeeade` |
| 20 | `theorem` | [sourceCorrelation_eq_zero_of_two_mul_le_abs](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/sourcecorrelation-eq-zero-of-two-mul-le-abs--ff20edd839c2748e63d11783.md) | 217 | `result-track:ff20edd839c2748e63d117839bef09b58dbcbc81da61424f6331cd26d5bf174b` |
| 21 | `theorem` | [sourceCorrelation_upper_endpoint](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/sourcecorrelation-upper-endpoint--7c4dc03c13b4cb820e769080.md) | 236 | `result-track:7c4dc03c13b4cb820e7690802a523e5babbafaf3a08c691793cfe82c40cb2781` |
| 22 | `theorem` | [sourceCorrelation_lower_endpoint](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/sourcecorrelation-lower-endpoint--d56f0542eb980017ec5af8b1.md) | 241 | `result-track:d56f0542eb980017ec5af8b18885e42f80b0c564c43cf49f253f464d467bfc42` |
| 23 | `theorem` | [sourceCorrelation_hasCompactSupport](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/sourcecorrelation-hascompactsupport--3724ab5898c397856f2f6107.md) | 247 | `result-track:3724ab5898c397856f2f6107d63d1e028e13354f9a54d1c092fce3030840eaf9` |
| 24 | `theorem` | [sourceCorrelation_integrable](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/sourcecorrelation-integrable--5ce8a0cf4819327d0cbfad3d.md) | 257 | `result-track:5ce8a0cf4819327d0cbfad3dd83d632373bfb1f1648a727888f38ac9863d6f16` |
| 25 | `theorem` | [sourceCorrelation_even](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/sourcecorrelation-even--96615d2ca9ce86611439fdde.md) | 263 | `result-track:96615d2ca9ce86611439fdde38786a551edf11a2394fd1139eba57ecb7434df4` |
| 26 | `theorem` | [sourceCorrelation_seams_contDiffAt](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/sourcecorrelation-seams-contdiffat--57c97bec1e9c0cb4cea4543f.md) | 273 | `result-track:57c97bec1e9c0cb4cea4543fe773494116fc4a54594bbcc49fef1a6065f9cb8c` |
| 27 | `theorem` | [correlation_certificate](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/declarations/correlation-certificate--dfe4cbc7485802d54e24702d.md) | 282 | `result-track:dfe4cbc7485802d54e24702d80f5b7d1b4447695519cad47eb7acb8f9c585318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
