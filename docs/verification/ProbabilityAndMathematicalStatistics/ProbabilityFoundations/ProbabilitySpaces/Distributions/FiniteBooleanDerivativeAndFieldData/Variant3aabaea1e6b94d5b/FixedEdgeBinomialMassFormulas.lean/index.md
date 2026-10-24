# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.FixedEdgeBinomialMassFormulas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27e377c0a3a51daf545c16b3566116a6810d9324",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/index.md) · [Full source](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27e377c0a3a51daf545c16b3566116a6810d9324`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Reduction.SAT` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functionWeightMass](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/declarations/functionweightmass--4aabe6e58c977918c8684521.md) | 72 | `declaration-track:4aabe6e58c977918c8684521b5aba19b546e14350d53b77c3a8ea91b839ea03a` |
| 2 | `def` | [permutationWeightMass](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/declarations/permutationweightmass--8ba55f8f068b096104c3c0b4.md) | 79 | `declaration-track:8ba55f8f068b096104c3c0b43ef30bd8b25b10ee12756070dfe1ae7d7adac68e` |
| 3 | `theorem` | [functionWeightMass_sum](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/declarations/functionweightmass-sum--5ae9ef0a0295f6212d92aa8c.md) | 88 | `result-track:5ae9ef0a0295f6212d92aa8c16db3c51dac290ed3ad471ec95f3fb39f746ef82` |
| 4 | `theorem` | [permutationWeightMass_zero](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/declarations/permutationweightmass-zero--478cce993e4fb6ad9e6d8163.md) | 96 | `result-track:478cce993e4fb6ad9e6d81631ca154acdf4a270e8cbe7df8eddefaf00691f49a` |
| 5 | `theorem` | [permutationWeightMass_sum](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/declarations/permutationweightmass-sum--8e839330c645cf4eed479364.md) | 101 | `result-track:8e839330c645cf4eed479364556feb2e6dba4f4b08f63762d546a72bbcc4b601` |
| 6 | `theorem` | [permutationWeightMass_eq_conditioned](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/declarations/permutationweightmass-eq-conditioned--8266e8feec0d0390d483225e.md) | 127 | `result-track:8266e8feec0d0390d483225e13f5d625177ac26f82ac50bda5f3115c9ed5e8da` |
| 7 | `def` | [permutationMarginal](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/declarations/permutationmarginal--c71dbc9bd3621c0d4ab0d258.md) | 142 | `declaration-track:c71dbc9bd3621c0d4ab0d2586ac48bff27634f5cb1456581257fa9c2d32f322f` |
| 8 | `theorem` | [permutationMarginal_sub_half](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/FixedEdgeBinomialMassFormulas.lean/declarations/permutationmarginal-sub-half--d5ad01635e877e969ec0a3ea.md) | 146 | `result-track:d5ad01635e877e969ec0a3eaaec5299d02b7f92af87ab314f6b1ec15081e0bf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
