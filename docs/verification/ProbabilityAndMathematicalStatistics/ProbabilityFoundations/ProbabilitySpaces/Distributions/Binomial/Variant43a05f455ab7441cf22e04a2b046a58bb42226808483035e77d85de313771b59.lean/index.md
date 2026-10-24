# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b03a7768d9b757835caf3660f82aee83749685a0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b03a7768d9b757835caf3660f82aee83749685a0`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Multinomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean/declarations/binomial--7f2cf14ecff46c8f9fbc90bb.md) | 35 | `declaration-track:7f2cf14ecff46c8f9fbc90bbbaed94f2e8bd67cfd41653ab4321f5c62106f7d5` |
| 2 | `theorem` | [binomial_apply](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean/declarations/binomial-apply--14370e6608f0f3a04ed744dd.md) | 45 | `result-track:14370e6608f0f3a04ed744dd5c6c362d5b6435783e7f93bc1f832b2f6d5a6ccb` |
| 3 | `theorem` | [binomial_apply_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean/declarations/binomial-apply-zero--1b7d01692a17ff66ea633a8e.md) | 49 | `result-track:1b7d01692a17ff66ea633a8e3ffae7812d9d957be98c1d96ac9dcf1563d4bae6` |
| 4 | `theorem` | [binomial_apply_self](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean/declarations/binomial-apply-self--0d99bac4cb782afe35e63d99.md) | 54 | `result-track:0d99bac4cb782afe35e63d99cc947afbcb9b7b25cc09796c5bbfee9457b7203a` |
| 5 | `theorem` | [binomial_one_eq_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant43a05f455ab7441cf22e04a2b046a58bb42226808483035e77d85de313771b59.lean/declarations/binomial-one-eq-bernoulli--7039b1aac409e3ee74dcfbe8.md) | 59 | `result-track:7039b1aac409e3ee74dcfbe86d4b89157a5fec4a3d1eb24a2209c25ddd8b6110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
