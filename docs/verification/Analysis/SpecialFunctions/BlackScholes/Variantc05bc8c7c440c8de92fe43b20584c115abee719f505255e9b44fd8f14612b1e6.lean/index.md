# Verification target: GRWTSK.Analysis.SpecialFunctions.BlackScholes.Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "134b0c813ebf5c91b8d707240a7456d4be0046d6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `134b0c813ebf5c91b8d707240a7456d4be0046d6`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [discount_factor_lower](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/discount-factor-lower--9a2e96b72e2b9c3c8d52b2e1.md) | 40 | `result-track:9a2e96b72e2b9c3c8d52b2e171b71620f39907a9b2c7597189ed8b75a14f01de` |
| 2 | `theorem` | [discount_factor_upper](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/discount-factor-upper--54bbad91966b854ab8b37c23.md) | 44 | `result-track:54bbad91966b854ab8b37c238a66afa6c9375ae85e500552dea1586cd81a194d` |
| 3 | `theorem` | [log_moneyness_upper](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/log-moneyness-upper--d6823c06f3590e99c5ac1f37.md) | 56 | `result-track:d6823c06f3590e99c5ac1f374ad7fae0d9a7e936b24f40708b18914f5b5fc3ee` |
| 4 | `theorem` | [log_moneyness_lower](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/log-moneyness-lower--97a888c5ed00f2f1f82ed237.md) | 60 | `result-track:97a888c5ed00f2f1f82ed23736d186ab814d7968cb21204b3b6299a0fb242283` |
| 5 | `theorem` | [gaussian_core_upper](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/gaussian-core-upper--43c3eeafc87fa24542bba3a3.md) | 76 | `result-track:43c3eeafc87fa24542bba3a344ac011a2986c69def8a36ad87bb0cb3f032efa4` |
| 6 | `theorem` | [gaussian_core_lower](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/gaussian-core-lower--3ac8c4c77eaaba238b83c4d4.md) | 80 | `result-track:3ac8c4c77eaaba238b83c4d46d336de53837ccabd40c157b16f185cc19daf675` |
| 7 | `theorem` | [exp_negative_rate_bounds](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/exp-negative-rate-bounds--74e859a41abe7193d97445d9.md) | 96 | `result-track:74e859a41abe7193d97445d997f1778f7358ddef5868c39cf24c5ca8782eb650` |
| 8 | `theorem` | [erf_positive_upper](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/erf-positive-upper--387557c40e567201d2cfb295.md) | 111 | `result-track:387557c40e567201d2cfb295744727df0a4a3267610085158b2ec0ddd857109a` |
| 9 | `theorem` | [erf_positive_lower](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/erf-positive-lower--ef85645e0eeb75de3df7a94e.md) | 115 | `result-track:ef85645e0eeb75de3df7a94eb0294cdbbfe6c535225f7600f06deb2862f268e1` |
| 10 | `theorem` | [erf_near_zero_bounds](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/erf-near-zero-bounds--b51e60d19065c34c1e0fd6d5.md) | 121 | `result-track:b51e60d19065c34c1e0fd6d5fd41a2f50374f583e852310971687052226384cc` |
| 11 | `theorem` | [erf_large_positive](../../../../../mathematics/Analysis/SpecialFunctions/BlackScholes/Variantc05bc8c7c440c8de92fe43b20584c115abee719f505255e9b44fd8f14612b1e6.lean/declarations/erf-large-positive--9fbcc3fd000a6fe84704e464.md) | 126 | `result-track:9fbcc3fd000a6fe84704e4641bb6bee75a7dcf8b590a2886b29d795da171e6f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
