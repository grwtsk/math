# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c44f3800c4764326ce77ce840bb6878a1946168f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c44f3800c4764326ce77ce840bb6878a1946168f`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Multinomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean/declarations/binomial--e5ecdca235dccbd931520975.md) | 27 | `declaration-track:e5ecdca235dccbd931520975fef36f7e46c0ffa9748ac017815060a0de03e1ee` |
| 2 | `theorem` | [binomial_apply](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean/declarations/binomial-apply--156ad114dc4055e87ffa00ba.md) | 37 | `result-track:156ad114dc4055e87ffa00ba3f83b27d3684b816f090d72627701b49d579bb42` |
| 3 | `theorem` | [binomial_apply_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean/declarations/binomial-apply-zero--12bf01504ac949525ccc0dfc.md) | 41 | `result-track:12bf01504ac949525ccc0dfc88b164eee0a6049470094cbefc81eae46676f98f` |
| 4 | `theorem` | [binomial_apply_self](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean/declarations/binomial-apply-self--928e85c5cc5d562c63d4f0f0.md) | 46 | `result-track:928e85c5cc5d562c63d4f0f0d1221b05b7986865edd39907479f275508b012e6` |
| 5 | `theorem` | [binomial_one_eq_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant7bc1779a6354bbb4e371849bb5c1e7824de2b56aa46eeab1e93d671a8466062f.lean/declarations/binomial-one-eq-bernoulli--bd5994d8f0a8f4f454057ccf.md) | 51 | `result-track:bd5994d8f0a8f4f454057ccf1709281b4418d216c42bfc703b5040139e3e7ef0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
