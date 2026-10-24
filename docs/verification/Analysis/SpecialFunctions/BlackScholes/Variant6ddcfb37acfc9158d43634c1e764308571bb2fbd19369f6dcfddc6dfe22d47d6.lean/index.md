# Verification target: GRWTSK.Analysis.SpecialFunctions.BlackScholes.Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63a52d465cb1644c8cd2ffa2896bcd4e0b7b1466",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63a52d465cb1644c8cd2ffa2896bcd4e0b7b1466`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [discount_factor_lower](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/discount-factor-lower--0c5c09833a66d51d8d4152d8.md) | 48 | `result-track:0c5c09833a66d51d8d4152d8a6e7e11439b14492c7c27dbdd7dd7832e2292936` |
| 2 | `theorem` | [discount_factor_upper](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/discount-factor-upper--2b72a008b61ba5f14d5132d0.md) | 52 | `result-track:2b72a008b61ba5f14d5132d013c14d198d43316df4dba14c53e116c0eb661153` |
| 3 | `theorem` | [log_moneyness_upper](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/log-moneyness-upper--1f098b0e8ca87940fb687862.md) | 64 | `result-track:1f098b0e8ca87940fb6878626eca4428ac733a850a9eb11657f4256fe360852b` |
| 4 | `theorem` | [log_moneyness_lower](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/log-moneyness-lower--69cad13495f7deed137c94a9.md) | 68 | `result-track:69cad13495f7deed137c94a9ba46407ed189160a1dcfe115bcdbbe50eeb2d725` |
| 5 | `theorem` | [gaussian_core_upper](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/gaussian-core-upper--c5ef9351f1cd407bdccc7418.md) | 84 | `result-track:c5ef9351f1cd407bdccc741890de87733552405fd8153ffad705597cf6e16fff` |
| 6 | `theorem` | [gaussian_core_lower](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/gaussian-core-lower--a39af5ada379ebe2216b014f.md) | 88 | `result-track:a39af5ada379ebe2216b014fd211cee6bd51d256ea70f849cb0007b1e55f5756` |
| 7 | `theorem` | [exp_negative_rate_bounds](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/exp-negative-rate-bounds--b34a37bae3e1aac417715020.md) | 104 | `result-track:b34a37bae3e1aac4177150206261f1cfa25089cb5a17202fc61440859dd061fa` |
| 8 | `theorem` | [erf_positive_upper](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/erf-positive-upper--5e5072d9a8824a6e002f54fb.md) | 119 | `result-track:5e5072d9a8824a6e002f54fbe2b2fed291fcd613b359788369912d04b7548b25` |
| 9 | `theorem` | [erf_positive_lower](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/erf-positive-lower--5348b6aa66ebf73a7a4a131e.md) | 123 | `result-track:5348b6aa66ebf73a7a4a131e0b52aeefc06a599ad06dbdcf3fe9ffaa04314b0b` |
| 10 | `theorem` | [erf_near_zero_bounds](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/erf-near-zero-bounds--3cf761abaf6a7f80bbbc87a6.md) | 129 | `result-track:3cf761abaf6a7f80bbbc87a63fb6c38e4a89db67ec6b9ed28a7f988ef8f33111` |
| 11 | `theorem` | [erf_large_positive](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variant6ddcfb37acfc9158d43634c1e764308571bb2fbd19369f6dcfddc6dfe22d47d6.lean/declarations/erf-large-positive--61a2e2c00cb99d16c5983cec.md) | 134 | `result-track:61a2e2c00cb99d16c5983cecdbd883bb82ded8136fe6024e7a78be7c884eaf3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
