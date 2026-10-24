# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceActualPsiNegativeBlock.Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65b265f85dddff7104913cde1e9a775136827982",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65b265f85dddff7104913cde1e9a775136827982`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedActualChebyshev](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/declarations/shiftedactualchebyshev--b344c89098d1c61cbd745dcb.md) | 27 | `declaration-track:b344c89098d1c61cbd745dcb915fdd040eb0488baa96c08bb09414605c012e72` |
| 2 | `theorem` | [actual_prime_power_four_contribution](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/declarations/actual-prime-power-four-contribution--723dddcf6afeea2ba5980e56.md) | 31 | `result-track:723dddcf6afeea2ba5980e56fb4af333f3f2743c51de6e0eb859da0a22021586` |
| 3 | `theorem` | [actual_psi_on_negative_block](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/declarations/actual-psi-on-negative-block--cc194c6b8ee49f665e6b4dee.md) | 39 | `result-track:cc194c6b8ee49f665e6b4dee7e53d42ba90b76d717b45f9c19e3c5d8dc115922` |
| 4 | `theorem` | [log_fifteen_lt_three](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/declarations/log-fifteen-lt-three--4602b5306f44ffb87a757c84.md) | 52 | `result-track:4602b5306f44ffb87a757c847cd38154aba6874293eff3e24613b3685b4dcab0` |
| 5 | `theorem` | [shiftedActualChebyshev_negative_on_block](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/declarations/shiftedactualchebyshev-negative-on-block--04ddbe20127f62605599dc08.md) | 63 | `result-track:04ddbe20127f62605599dc089945dc399184d3919d907a69d50a8d60ddfdf554` |
| 6 | `theorem` | [actual_psi_at_closed_seven](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/declarations/actual-psi-at-closed-seven--78064f86162a920c36df35e4.md) | 76 | `result-track:78064f86162a920c36df35e493a7f17dd1e9870368a317b0bb2d0bbe718af014` |
| 7 | `theorem` | [shiftedActualChebyshev_not_nonnegative_everywhere](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/declarations/shiftedactualchebyshev-not-nonnegative-everywhere--5c32ba933bd7176c3252ba58.md) | 81 | `result-track:5c32ba933bd7176c3252ba58239dfc76c08cbdc502e1226792409e6d7285207c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
