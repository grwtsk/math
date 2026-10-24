# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeRatioProduct.Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5d4734d0c4d592230a3b73dbed045282c1bc9ff",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5d4734d0c4d592230a3b73dbed045282c1bc9ff`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ordered_disjoint_assignment_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/ordered-disjoint-assignment-product--583a273c4eb6f3d021eda244.md) | 16 | `result-track:583a273c4eb6f3d021eda2448927f5085fa887b0a42dcd2782cd1106af28c7f3` |
| 2 | `theorem` | [reciprocal_sqrt_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/reciprocal-sqrt-product--7ce4aac4cd09824906e15568.md) | 28 | `result-track:7ce4aac4cd09824906e15568906723253e24914b153d32cf5f2e06becca98de2` |
| 3 | `theorem` | [reciprocal_sqrt_products](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/reciprocal-sqrt-products--d6dbc0ef1650d29d6c5af5e8.md) | 34 | `result-track:d6dbc0ef1650d29d6c5af5e8ee861b6ce4fa702a6faeaada97ed30cf545cc6e0` |
| 4 | `theorem` | [prime_product_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/prime-product-squarefree--56a116b06df2e2bf4352eeb7.md) | 40 | `result-track:56a116b06df2e2bf4352eeb712cb80c72b21b6d60ce3fa298d6dd18cbf0bebe9` |
| 5 | `def` | [assignments](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/assignments--e57c1b3de6a65acffc9381e9.md) | 47 | `declaration-track:e57c1b3de6a65acffc9381e9332c9bc9a3d37a2ead31d8d10f683460ad1b90a0` |
| 6 | `def` | [joinAssignment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/joinassignment--b4628c3c290e785c833c772f.md) | 50 | `declaration-track:b4628c3c290e785c833c772f6b12585ee6d9ea35afe7c8ff8ec6e9a32facfe26` |
| 7 | `def` | [supportedPairs](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/supportedpairs--b782ea65bfa581889f1fa788.md) | 53 | `declaration-track:b782ea65bfa581889f1fa788cf4ce718b000ddc7f599d396a4399fc1d5b9bcbf` |
| 8 | `theorem` | [assignment_subsets](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/assignment-subsets--e6e568b47bd3c501f0feba86.md) | 56 | `result-track:e6e568b47bd3c501f0feba8679affb9717c2e98f819c6c17445c4d8d00c6cdb4` |
| 9 | `theorem` | [assignment_primeFactors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/assignment-primefactors--7a332bb2f3316fc386adf39e.md) | 66 | `result-track:7a332bb2f3316fc386adf39e9d950858a61c234d33455772f0840b58760ea858` |
| 10 | `theorem` | [joinAssignment_injOn](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/joinassignment-injon--4143e84ebdf733eb18c7dd03.md) | 73 | `result-track:4143e84ebdf733eb18c7dd03e63bdf45009b64fab6639efd2f4fd9d0d7f9c0f1` |
| 11 | `theorem` | [mem_supportedPairs_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/mem-supportedpairs-iff--03d7228830da5f6534f9f167.md) | 85 | `result-track:03d7228830da5f6534f9f167ff7885d9f12984fa609c363cd11bdcd2ffeaa150` |
| 12 | `theorem` | [supportedPairs_weight_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/supportedpairs-weight-sum--1ec2c41361026c6db8c99411.md) | 122 | `result-track:1ec2c41361026c6db8c99411076c5281a6211029b38e48ce3390a6ccc9c20e6e` |
| 13 | `theorem` | [supportedPairs_moebius_weight_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/supportedpairs-moebius-weight-sum--d66742be44e5dfe0cdf0308a.md) | 134 | `result-track:d66742be44e5dfe0cdf0308a8d2a308dc6019b0096fe1cc7600ed14dd975db9a` |
| 14 | `theorem` | [squareful_ratio_coefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/declarations/squareful-ratio-coefficient-zero--9a61509e97b4013b6cb93b21.md) | 149 | `result-track:9a61509e97b4013b6cb93b214e375bbe98b19bae142d97f0c7e6e4186d059816` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
