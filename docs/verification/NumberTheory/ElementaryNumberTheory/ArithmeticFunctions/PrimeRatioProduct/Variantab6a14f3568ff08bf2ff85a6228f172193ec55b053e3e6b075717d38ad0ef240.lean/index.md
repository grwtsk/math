# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeRatioProduct.Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dacd16366adce0ddddf3184896bd48a76bdede8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dacd16366adce0ddddf3184896bd48a76bdede8`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ordered_disjoint_assignment_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/ordered-disjoint-assignment-product--6b8fb7967dc834bcf320c404.md) | 24 | `result-track:6b8fb7967dc834bcf320c404846ec54f8c6cf28d94a5f0971c40b80cb71f8b5c` |
| 2 | `theorem` | [reciprocal_sqrt_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/reciprocal-sqrt-product--c7a61310545ed8a701091e14.md) | 36 | `result-track:c7a61310545ed8a701091e1410314be8525358d8eaa8ed31fb8deb6d8cd516b5` |
| 3 | `theorem` | [reciprocal_sqrt_products](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/reciprocal-sqrt-products--7679f5d47082abf6b29bf821.md) | 42 | `result-track:7679f5d47082abf6b29bf8213a73f5e497c41f7f824756b76d3e26067517eb01` |
| 4 | `theorem` | [prime_product_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/prime-product-squarefree--eb8356ee6a251c4a0daa5eb5.md) | 48 | `result-track:eb8356ee6a251c4a0daa5eb59ccb1ae6d8cfa6e64935498bd09c534d855b0a5e` |
| 5 | `def` | [assignments](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/assignments--97836266f39a4f9be801d890.md) | 55 | `declaration-track:97836266f39a4f9be801d890468618086d7bdc7b54cfc602dab54eb503ef7fe6` |
| 6 | `def` | [joinAssignment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/joinassignment--03e976b8aba31b1e1f49e56c.md) | 58 | `declaration-track:03e976b8aba31b1e1f49e56ccf9eb10d68ed87f5685658034b2015a5c2390289` |
| 7 | `def` | [supportedPairs](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/supportedpairs--0979e8c955129adc9832118c.md) | 61 | `declaration-track:0979e8c955129adc9832118c1ab245ce35feeaaa1333b396d0a56b57f68623fe` |
| 8 | `theorem` | [assignment_subsets](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/assignment-subsets--8d889a6a07425506987475f5.md) | 64 | `result-track:8d889a6a07425506987475f5a9c1c4980ccc1fc0002f61115f04aa356eca42eb` |
| 9 | `theorem` | [assignment_primeFactors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/assignment-primefactors--d72302dcc64c37b8cf211d1c.md) | 74 | `result-track:d72302dcc64c37b8cf211d1c5f692013667f15b6783f67d8ebf471e072b1498a` |
| 10 | `theorem` | [joinAssignment_injOn](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/joinassignment-injon--92265968b908e4942596cd2e.md) | 81 | `result-track:92265968b908e4942596cd2eb619244cdd693955c9c31db6f0a623d124628a52` |
| 11 | `theorem` | [mem_supportedPairs_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/mem-supportedpairs-iff--87840c9d67dd09afc33adc4d.md) | 93 | `result-track:87840c9d67dd09afc33adc4d1bf7c41cb4fd68e24af79f2f2c323ca1873ddf56` |
| 12 | `theorem` | [supportedPairs_weight_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/supportedpairs-weight-sum--e8be83f1d170661922f6d3fb.md) | 130 | `result-track:e8be83f1d170661922f6d3fb3c5439305f169699477bdd6b31e1fd5150e3add8` |
| 13 | `theorem` | [supportedPairs_moebius_weight_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/supportedpairs-moebius-weight-sum--557deb4658579da536b4a226.md) | 142 | `result-track:557deb4658579da536b4a2266abf4930ed65abacc6db6ba288afadbcdbff069c` |
| 14 | `theorem` | [squareful_ratio_coefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/declarations/squareful-ratio-coefficient-zero--11c9c2aba378ac21484a70f7.md) | 157 | `result-track:11c9c2aba378ac21484a70f76bdc632be52e4952a3f66e06654b23d59592c258` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
