# Verification target: GRWTSK.Analysis.Distribution.CompactProfileDilation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "629b8cbebe9a99eeab159d1fd0f53f8818a5f1a2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Distribution/CompactProfileDilation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/index.md) · [Full source](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `629b8cbebe9a99eeab159d1fd0f53f8818a5f1a2`.

Source path: `GRWTSK/Analysis/Distribution/CompactProfileDilation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Distribution/CompactProfileDilation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Integration.CompactPolynomialMoments`](../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.CompactProfileCorrelation`](../../../../mathematics/Analysis/Convolution/CompactProfileCorrelation.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CompactProfilePairingIntegrability`](../../../../mathematics/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_continuous](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/source-continuous--49a619b4707e2f6c7f1c96c8.md) | 29 | `result-track:49a619b4707e2f6c7f1c96c8c94e624555ca47195af895b4fc66ae83d261326a` |
| 2 | `theorem` | [source_first_continuous](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/source-first-continuous--2b158f69fec45d4befd490fb.md) | 33 | `result-track:2b158f69fec45d4befd490fbe9740c90cbc422f9a905a42769817058295c5f4b` |
| 3 | `theorem` | [source_second_continuous](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/source-second-continuous--a6e743f8d754bd8b3675ff3c.md) | 37 | `result-track:a6e743f8d754bd8b3675ff3ce6cb160dc679c08e543636fb7b60c83c79ee3186` |
| 4 | `theorem` | [source_hasCompactSupport](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/source-hascompactsupport--16a41e9930a30b01aaecdc0f.md) | 41 | `result-track:16a41e9930a30b01aaecdc0fc26c419b23f895dad8d50e7ae3852094fa052b9a` |
| 5 | `theorem` | [source_first_hasCompactSupport](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/source-first-hascompactsupport--866026ee374e22525d3fed49.md) | 47 | `result-track:866026ee374e22525d3fed49ee69e8e7c57cd92b12ec042949c9bf1f2a2ae353` |
| 6 | `theorem` | [source_second_hasCompactSupport](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/source-second-hascompactsupport--20293ab8f57b28ec49a85a26.md) | 52 | `result-track:20293ab8f57b28ec49a85a26bdec0c63b1e648d74085f15babd7da81abeffdc0` |
| 7 | `theorem` | [compact_product_integrable](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/compact-product-integrable--1f34ff3f15d8e017cb708d70.md) | 57 | `result-track:1f34ff3f15d8e017cb708d7058ec4da6a2b46bab5daf7d1f8b7ac8e943d26f2a` |
| 8 | `theorem` | [actual_weak_second_derivative](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/actual-weak-second-derivative--570585ff6a17cc8a6ba3a4a7.md) | 63 | `result-track:570585ff6a17cc8a6ba3a4a7baf469adb243fa5a8b379d19e212966f8c6254c9` |
| 9 | `theorem` | [exponential_hasDerivAt](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/exponential-hasderivat--e6e237398d3d8ea692106120.md) | 95 | `result-track:e6e237398d3d8ea692106120c1453f9eaa4b9b16a5b9cdcd7e61df7fdbf2779f` |
| 10 | `theorem` | [second_derivative_exponential_integral](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/second-derivative-exponential-integral--8832888ecf93d030d04e7970.md) | 99 | `result-track:8832888ecf93d030d04e79703f6db755a1471b768f03a7ada46760c9602c24d1` |
| 11 | `theorem` | [normalized_source_exponential_integrable](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/normalized-source-exponential-integrable--ad8f925e26da70308fd42323.md) | 129 | `result-track:ad8f925e26da70308fd423235404a7e7bb839a27f00cf197d25d146003c5fe73` |
| 12 | `theorem` | [residual_exponential_integral_zero](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/residual-exponential-integral-zero--9ca21bf53cb13e0453d6427d.md) | 134 | `result-track:9ca21bf53cb13e0453d6427d2a4c7f4555420ac9ae0da8ec7c1c144b78a07c54` |
| 13 | `theorem` | [normalized_source_exponential_integral_zero](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/normalized-source-exponential-integral-zero--58f67eeecdd0d765774aac89.md) | 150 | `result-track:58f67eeecdd0d765774aac894c709fbbff555a363d13f4511718fe4310e3a8db` |
| 14 | `theorem` | [positive_pole_integral_zero](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/positive-pole-integral-zero--3674c5e8727d0f3e6fd35210.md) | 156 | `result-track:3674c5e8727d0f3e6fd35210f3e91d9c8cfe0a2dbd4b71eb962b6f58980fbe5f` |
| 15 | `theorem` | [negative_pole_integral_zero](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/negative-pole-integral-zero--607afda74628cbafe28fd329.md) | 161 | `result-track:607afda74628cbafe28fd329e6f7ec5332e6bd04d63c7478297f5736dda47e89` |
| 16 | `def` | [actualDilationRealization](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/declarations/actualdilationrealization--f309e9eeee305544fade8af6.md) | 168 | `declaration-track:f309e9eeee305544fade8af6f519f71291d6c69ef25125d0b5ca8e859bb314e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
