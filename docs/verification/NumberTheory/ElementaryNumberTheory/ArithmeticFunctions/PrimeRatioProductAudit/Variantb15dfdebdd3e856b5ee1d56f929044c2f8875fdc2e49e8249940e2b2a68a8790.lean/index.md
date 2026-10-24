# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeRatioProductAudit.Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a8e5cacffbe9b1cd7c8d6ca2348166f65b85f17",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a8e5cacffbe9b1cd7c8d6ca2348166f65b85f17`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean.json)

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
| 1 | `theorem` | [ordered_disjoint_assignment_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/ordered-disjoint-assignment-product--ea15a7f3cbd84a249d9e612c.md) | 24 | `result-track:ea15a7f3cbd84a249d9e612c856d0b2433228a528e4fc66d33043fab14e6c6ca` |
| 2 | `theorem` | [reciprocal_sqrt_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/reciprocal-sqrt-product--4f0f22e14b1c4d0a0bc35805.md) | 36 | `result-track:4f0f22e14b1c4d0a0bc35805ccf1632a37b559da11d15ae0790f7e4c841046b8` |
| 3 | `theorem` | [reciprocal_sqrt_products](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/reciprocal-sqrt-products--fb3ba867cca49cf386ed24fd.md) | 42 | `result-track:fb3ba867cca49cf386ed24fd0af6ec3bd02f5140a759a53bc36a6ed54fe9e141` |
| 4 | `theorem` | [prime_product_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/prime-product-squarefree--2d5dceaf8bd6843d96e32ec0.md) | 48 | `result-track:2d5dceaf8bd6843d96e32ec0bdffd47d4cde84cc278991f47d8f4c176c681559` |
| 5 | `def` | [assignments](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/assignments--2bb04ec5f6b25d725f33fb16.md) | 55 | `declaration-track:2bb04ec5f6b25d725f33fb16002bfd2eaecd00bb64a6d7700a09319215da8fd2` |
| 6 | `def` | [joinAssignment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/joinassignment--4d313de4bd22431ce5e71a61.md) | 58 | `declaration-track:4d313de4bd22431ce5e71a61abbea2b804c29b18584aaef143be21a34c35cef3` |
| 7 | `def` | [supportedPairs](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/supportedpairs--1ed8293ef621c8f0f5f64815.md) | 61 | `declaration-track:1ed8293ef621c8f0f5f64815e89878e76f699a141689d2bff68fe398f6564600` |
| 8 | `theorem` | [assignment_subsets](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/assignment-subsets--d076b946e225d503d6eaeda6.md) | 64 | `result-track:d076b946e225d503d6eaeda683ad9f0d2100a1c3749780eb790295f7574404ac` |
| 9 | `theorem` | [assignment_primeFactors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/assignment-primefactors--185bb731da55c2360b8d002b.md) | 74 | `result-track:185bb731da55c2360b8d002b22a86c48da3c5f6498e489649dc88847d99a6667` |
| 10 | `theorem` | [joinAssignment_injOn](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/joinassignment-injon--d8224ea01c83c8856592c5a4.md) | 81 | `result-track:d8224ea01c83c8856592c5a4dd291fa6a7663b5c1466349bb54796ea81a744ca` |
| 11 | `theorem` | [mem_supportedPairs_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/mem-supportedpairs-iff--18351120fd6e7244021b6b9e.md) | 93 | `result-track:18351120fd6e7244021b6b9e77bc703b063f12d1a44203d3970c805e205f198e` |
| 12 | `theorem` | [supportedPairs_weight_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/supportedpairs-weight-sum--d56684bc4158134dd49105cd.md) | 130 | `result-track:d56684bc4158134dd49105cd2d4922c45258c14d1b392587cd98010e87a225b0` |
| 13 | `theorem` | [supportedPairs_moebius_weight_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/supportedpairs-moebius-weight-sum--e3ea918d2e627b990e50d063.md) | 142 | `result-track:e3ea918d2e627b990e50d063f73888cc3608919215938509eefbdaf3e26e0510` |
| 14 | `theorem` | [squareful_ratio_coefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variantb15dfdebdd3e856b5ee1d56f929044c2f8875fdc2e49e8249940e2b2a68a8790.lean/declarations/squareful-ratio-coefficient-zero--aa287afecfbb07d080624baf.md) | 157 | `result-track:aa287afecfbb07d080624bafe75f5d884cd73ee7b605315180c53dea87b0073d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
