# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiRankFive.Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00739ce5b4d9c71f581ffb1d37cdd01ee8e14abc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00739ce5b4d9c71f581ffb1d37cdd01ee8e14abc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Real.Pi.Bounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Exponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiAllRankModeCriterion` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_lower_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/declarations/exp-lower-endpoint--c8145da41c8dc1fbba93baa0.md) | 10 | `result-track:c8145da41c8dc1fbba93baa07649812689b8960b47262f26688b6d4a9efc26df` |
| 2 | `theorem` | [exp_upper_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/declarations/exp-upper-endpoint--fce5e63f2a2680866b672447.md) | 20 | `result-track:fce5e63f2a2680866b672447ff849f09e848e79d3925da6c42c4f4f6105401ab` |
| 3 | `theorem` | [exp_neg_pi_quarter_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/declarations/exp-neg-pi-quarter-bounds--0f9764ca14ccc8f5077b0d21.md) | 30 | `result-track:0f9764ca14ccc8f5077b0d21d8186023d098f0910f02fbddfdfa2ded3033375a` |
| 4 | `theorem` | [exp_neg_pi_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/declarations/exp-neg-pi-bounds--848f4a341219590e5533b13f.md) | 39 | `result-track:848f4a341219590e5533b13f9ab41a375b33993f405f7eb7aa0a523c0ea5dacd` |
| 5 | `theorem` | [exp_neg_three_quarters_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/declarations/exp-neg-three-quarters-upper--35f70002bd8223d62f10972d.md) | 56 | `result-track:35f70002bd8223d62f10972de96236f6307028970bd72b2f8f11fa20f4869a10` |
| 6 | `theorem` | [exp_neg_seventy_five_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/declarations/exp-neg-seventy-five-upper--fa5b4fe453369b3c98ded486.md) | 64 | `result-track:fa5b4fe453369b3c98ded486bccf6a9036ec3fc94f2b55d6b268ae3d0a99701d` |
| 7 | `theorem` | [tail_geometric_ratio](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/declarations/tail-geometric-ratio--e273093457a2c63f7bfe99d3.md) | 74 | `result-track:e273093457a2c63f7bfe99d3652f83ddc77ee096c62f3e315f753186f95b13a4` |
| 8 | `theorem` | [exp_neg_pi_nat_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/declarations/exp-neg-pi-nat-sq--f769b46e3106f83a6ae08e73.md) | 87 | `result-track:f769b46e3106f83a6ae08e7333325e6a8cd5982e505e8feda7f3ce7d88643e33` |
| 9 | `theorem` | [thetaPhiDerivativeModeValue_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant347cda8cd5dc9e421291cdff5184c7802f767bde22ad4327ef6649ead4fa2a74.lean/declarations/thetaphiderivativemodevalue-zero--e5b232989d482d0b606544d5.md) | 98 | `result-track:e5b232989d482d0b606544d50ec3a812dfb3d1b9110bf31aa1b6ba0fbffffb6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
