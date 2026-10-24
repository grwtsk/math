# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af7a5564a032616928e72c0cd3b82a1ca70c38b8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af7a5564a032616928e72c0cd3b82a1ca70c38b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.MinMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Tropical.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.trop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/list-trop-sum--67acd0ad2455fe3b2e001502.md) | 46 | `result-track:67acd0ad2455fe3b2e001502b65084848e4130707f0663280f57eec90a90a5ea` |
| 2 | `theorem` | [Multiset.trop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/multiset-trop-sum--1ab86c83b3d8f0b32cd0b5a3.md) | 51 | `result-track:1ab86c83b3d8f0b32cd0b5a3ab5eb4c72695b6d0fa802aafc8799c7677be3ea1` |
| 3 | `theorem` | [trop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/trop-sum--871e835a31ebef09fab77039.md) | 55 | `result-track:871e835a31ebef09fab7703912afc6c6569d58b81bb51ef3b6835122216f941b` |
| 4 | `theorem` | [List.untrop_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/list-untrop-prod--01d815ccdf924b884d2fe8f0.md) | 61 | `result-track:01d815ccdf924b884d2fe8f0cded43e38c4bdccf5bc4f7da5e811af7fb38cc29` |
| 5 | `theorem` | [Multiset.untrop_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/multiset-untrop-prod--005c4cdefceaf492f48adf26.md) | 67 | `result-track:005c4cdefceaf492f48adf26c665ae21249dc79d592d0c9d49fa6efba22e9bdc` |
| 6 | `theorem` | [untrop_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/untrop-prod--2ae0cc01c95e9f9e074e2015.md) | 71 | `result-track:2ae0cc01c95e9f9e074e2015e0765a107cf725482ca8fee0d221c2b87868f670` |
| 7 | `theorem` | [List.trop_minimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/list-trop-minimum--7bf9bc2b0e16096fff0433eb.md) | 77 | `result-track:7bf9bc2b0e16096fff0433eb587107d6ffa9715e848d65a0684380a035819bc1` |
| 8 | `theorem` | [Multiset.trop_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/multiset-trop-inf--154f9e217b44fc22da931c37.md) | 83 | `result-track:154f9e217b44fc22da931c37cf0b8d345cc10b77288ff62e25b685e2b2089360` |
| 9 | `theorem` | [Finset.trop_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/finset-trop-inf--65f9c6ae19df497525351b30.md) | 89 | `result-track:65f9c6ae19df497525351b308e768e6f5c346a95cb6588d69004c914f934c426` |
| 10 | `theorem` | [trop_sInf_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/trop-sinf-image--fcdb5c32e9b9a58b51ae82ac.md) | 95 | `result-track:fcdb5c32e9b9a58b51ae82ac74d1cd8c5fe6353fc85fde2279a2958a1383b615` |
| 11 | `theorem` | [trop_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/trop-iinf--905a19a5a0386c431976a842.md) | 101 | `result-track:905a19a5a0386c431976a842986a3455c27c5f71c6b7dbf76102b3513e64630c` |
| 12 | `theorem` | [Multiset.untrop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/multiset-untrop-sum--5a3be2eb2a668b5d04d8116b.md) | 105 | `result-track:5a3be2eb2a668b5d04d8116b6cb67c54a8288242ae571353b2eeff609c0d2efa` |
| 13 | `theorem` | [Finset.untrop_sum'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/finset-untrop-sum--623c4f9ec39eeaecb7f7d67a.md) | 111 | `result-track:623c4f9ec39eeaecb7f7d67aba26b5f674e3d5d11f0855c40e68de3712191fdf` |
| 14 | `theorem` | [untrop_sum_eq_sInf_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/untrop-sum-eq-sinf-image--395a35f77696af2b5c25e286.md) | 116 | `result-track:395a35f77696af2b5c25e2863a0350dd571579a8a4a8dd1ef88d86c7ed216ab2` |
| 15 | `theorem` | [untrop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/untrop-sum--ef8ec620e376327ba49c54d4.md) | 122 | `result-track:ef8ec620e376327ba49c54d4a2184a1417993ca5a28c9daedbcaacc6fcc3a307` |
| 16 | `theorem` | [Finset.untrop_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantacbbfb068c36310da69d6fdb7999acb838314743b238f3000d31495632251e84.lean/declarations/finset-untrop-sum--7c73ef3d68fbfa0d56b00ac7.md) | 128 | `result-track:7c73ef3d68fbfa0d56b00ac7405bd991a574f16a87873a5ba68ab16e8f3ca675` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
