# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.PositiveDensityCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b56b195f7bff1566e7221c36a83b7e4129a7c30a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b56b195f7bff1566e7221c36a83b7e4129a7c30a`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebiusCorrection`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebius`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [density_moebius_function_multiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/declarations/density-moebius-function-multiplicative--692494cdf599bd015401bfec.md) | 21 | `result-track:692494cdf599bd015401bfeca2367f9311e49dcd26802a5e33984b7d2227abf2` |
| 2 | `theorem` | [density_moebius_correction_multiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/declarations/density-moebius-correction-multiplicative--46ce4c254bc063c2b35c35f5.md) | 27 | `result-track:46ce4c254bc063c2b35c35f55b9e8144a280d8e4ceb6e656424e0af79dc7321a` |
| 3 | `theorem` | [density_coefficient_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/declarations/density-coefficient-prime-power--b3a6a83ebfb835238614afb6.md) | 31 | `result-track:b3a6a83ebfb835238614afb6720f5af2206b92d3ee4f6b8960ef121a3b28321e` |
| 4 | `theorem` | [density_moebius_correction_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/declarations/density-moebius-correction-prime-power--4556505d3cfa44e87b92925a.md) | 39 | `result-track:4556505d3cfa44e87b92925a1be403ee6343edc8118d211921b1baffbddd767c` |
| 5 | `theorem` | [density_moebius_correction_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/declarations/density-moebius-correction-bounds--934bec2cb564a73df79899b9.md) | 54 | `result-track:934bec2cb564a73df79899b948f6ebb6ba88c7f12a77038ac7b650e8f41a3155` |
| 6 | `theorem` | [density_moebius_correction_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/declarations/density-moebius-correction-nonneg--9fd21bf4a80f2f8738d22144.md) | 71 | `result-track:9fd21bf4a80f2f8738d221445ab438a91c58a54487645942e3e115958cae6744` |
| 7 | `theorem` | [density_moebius_correction_le_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/declarations/density-moebius-correction-le-one--2ea0cb014f5dfa25030a63ba.md) | 74 | `result-track:2ea0cb014f5dfa25030a63ba66d7eb3f6278507574c8122fd2dbc15d4916c916` |
| 8 | `theorem` | [density_moebius_correction_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/declarations/density-moebius-correction-pos--790009f4a923b9f8742b1d3c.md) | 78 | `result-track:790009f4a923b9f8742b1d3c446ffa1b79fbc62fe230ffe0f5891a3498c50b4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
