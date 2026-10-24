# Verification target: GRWTSK.Analysis.Convolution.ExponentialMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d080552deabf0d65e653948b8f44ad4de8e6e5c7",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/ExponentialMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d080552deabf0d65e653948b8f44ad4de8e6e5c7`.

Source path: `GRWTSK/Analysis/Convolution/ExponentialMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/ExponentialMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.WeakDerivatives.PolynomialBump`](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.PolynomialBumpRegularity`](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Convolution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polePrimitive](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/poleprimitive--60b126ae749b574003f96369.md) | 27 | `declaration-track:60b126ae749b574003f963692a9bfa4c4adfbdf94f48a748bb9fbb93797fe7ad` |
| 2 | `theorem` | [polePrimitive_hasDerivAt](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/poleprimitive-hasderivat--d630242ac41d3a565404e476.md) | 31 | `result-track:d630242ac41d3a565404e476255d45d424a9995926eaab7ea94ee5337187276d` |
| 3 | `theorem` | [polePrimitive_endpoints](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/poleprimitive-endpoints--e629f5023533188d2810e4e4.md) | 43 | `result-track:e629f5023533188d2810e4e4d2a4587849a072cbedeea755d0b70484fa4581f3` |
| 4 | `theorem` | [weighted_dilationTest_eq_indicator](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/weighted-dilationtest-eq-indicator--1ef8b68f7fda1b63a2be1d00.md) | 50 | `result-track:1ef8b68f7fda1b63a2be1d00682d7bb46279ccbacc133615928a8aa75dfc37f2` |
| 5 | `theorem` | [weighted_dilationTest_integrable](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/weighted-dilationtest-integrable--7d854ada499a7b65b399b302.md) | 60 | `result-track:7d854ada499a7b65b399b302154250ceb37e97dd7c993f9fbcf347e5bfca4d7a` |
| 6 | `theorem` | [weighted_dilationTest_integral_zero](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/weighted-dilationtest-integral-zero--6c1202defd8e36658469ff7d.md) | 69 | `result-track:6c1202defd8e36658469ff7d7ccde47bffb13b967b822d5dbc0ee66c44279282` |
| 7 | `theorem` | [weighted_normalizedTest_integrable](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/weighted-normalizedtest-integrable--16b953b6785ef799e1525100.md) | 87 | `result-track:16b953b6785ef799e152510058e0ebba766f0ec6d1238e2fc5433dab7d7e31f5` |
| 8 | `theorem` | [weighted_normalizedTest_integral_zero](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/weighted-normalizedtest-integral-zero--955e8788faa51957685668ad.md) | 93 | `result-track:955e8788faa51957685668ad90023cc6d3cac9a43a2e69785ed74af841a55e0b` |
| 9 | `def` | [correlation](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/correlation--6eca7513c895cf6eb96e7d3e.md) | 100 | `declaration-track:6eca7513c895cf6eb96e7d3e3920d2e8031ecfc8ed9b2ac6801afff12a409d26` |
| 10 | `theorem` | [weighted_correlation_eq_convolution](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/weighted-correlation-eq-convolution--5880a3259a7426f762670b55.md) | 103 | `result-track:5880a3259a7426f762670b55931180d3e4547465fba846e92206912c9c80aeaa` |
| 11 | `theorem` | [reflected_weight_integrable](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/reflected-weight-integrable--4fd69c008266c935a83be183.md) | 121 | `result-track:4fd69c008266c935a83be183570ee63579745070a7ec8e4aa57c8a27d80a846d` |
| 12 | `theorem` | [weighted_correlation_integrable](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/weighted-correlation-integrable--a845d6d6aee40c49cbadd7fc.md) | 128 | `result-track:a845d6d6aee40c49cbadd7fcbffe8845d507cca975398c548018a0e67d4278b2` |
| 13 | `theorem` | [weighted_correlation_integral](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/weighted-correlation-integral--4ba66d20219eb6bae872c03f.md) | 143 | `result-track:4ba66d20219eb6bae872c03fa523a9abb359c26fa88bbf66a08a546eebc1e129` |
| 14 | `theorem` | [half_interval_moment_of_even](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/half-interval-moment-of-even--ed3bcc21338fad4b61afaaf7.md) | 158 | `result-track:ed3bcc21338fad4b61afaaf77023fbcb7c53a861ab81d538fc5bc896740243c4` |
| 15 | `theorem` | [positive_pole_integrable](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/positive-pole-integrable--6f7060e5edc49de164c99a01.md) | 194 | `result-track:6f7060e5edc49de164c99a0142d84c915f644c0251eaf7816b5b485c8c0c6274` |
| 16 | `theorem` | [negative_pole_integrable](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/negative-pole-integrable--dd9ff9ff85a97ae571fd2f51.md) | 200 | `result-track:dd9ff9ff85a97ae571fd2f51aa15ebe67463ec31b6b311564f6f1dca04166036` |
| 17 | `theorem` | [positive_pole_zero](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/positive-pole-zero--df868cc72e7d112d7a45cd32.md) | 207 | `result-track:df868cc72e7d112d7a45cd326c5b75a1dbb1675a39aa6dc6ef185636655c77f5` |
| 18 | `theorem` | [negative_pole_zero](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/negative-pole-zero--e232963d7164cd9e7d9d759f.md) | 213 | `result-track:e232963d7164cd9e7d9d759f555c9e04c060ed9f65b3b788a26ce764ef78d952` |
| 19 | `theorem` | [full_correlation_moment_zero](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/full-correlation-moment-zero--567e29f72a1a8911836ee251.md) | 219 | `result-track:567e29f72a1a8911836ee25132bf09b0bbd59eb7ff31b73a78477b78a1d03293` |
| 20 | `theorem` | [pole_correlation_certificate](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/declarations/pole-correlation-certificate--18148427586d7dcb889107f4.md) | 231 | `result-track:18148427586d7dcb889107f4065f4344a226f60e865969f24f872f24c58159ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
