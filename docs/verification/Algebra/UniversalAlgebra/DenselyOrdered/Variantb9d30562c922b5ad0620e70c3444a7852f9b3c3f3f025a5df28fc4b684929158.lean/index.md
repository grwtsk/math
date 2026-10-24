# Verification target: GRWTSK.Algebra.UniversalAlgebra.DenselyOrdered.Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c660bb87bb981490f9772ffc6419b56f6cbb06e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c660bb87bb981490f9772ffc6419b56f6cbb06e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_of_forall_lt_one_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/declarations/le-of-forall-lt-one-mul-le--354216aa226a99ac27efe8dd.md) | 31 | `result-track:354216aa226a99ac27efe8dd38d94a7688d5a193ca6625c8d132f3b51e6d0427` |
| 2 | `theorem` | [le_of_forall_one_lt_div_le](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/declarations/le-of-forall-one-lt-div-le--13a5f7a93d2c626f07b05a38.md) | 35 | `result-track:13a5f7a93d2c626f07b05a387c58f93dce363cecce3fafc06fd8ebeb67221dfd` |
| 3 | `theorem` | [le_iff_forall_lt_one_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/declarations/le-iff-forall-lt-one-mul-le--9ed463596bc9ac52e6dff326.md) | 40 | `result-track:9ed463596bc9ac52e6dff326cf82644bd322e5bf5dba0780b93b80acc7790e28` |
| 4 | `lemma` | [exists_lt_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/declarations/exists-lt-mul-left--d226b8d4baeaf3b6591927c0.md) | 48 | `result-track:d226b8d4baeaf3b6591927c050765797df051557ae8da70a656990c0ba5ae969` |
| 5 | `lemma` | [exists_lt_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/declarations/exists-lt-mul-right--84e47f01a1e216b62d3adf78.md) | 55 | `result-track:84e47f01a1e216b62d3adf788be57d9e34bbf29cc6bb0a079c85730c75ee296a` |
| 6 | `lemma` | [exists_mul_left_lt](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/declarations/exists-mul-left-lt--da27cc2b1e84c9c2ea0b53cb.md) | 62 | `result-track:da27cc2b1e84c9c2ea0b53cb3c15530fc6e6a0c80003edeeffb9943aa97b9a02` |
| 7 | `lemma` | [exists_mul_right_lt](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/declarations/exists-mul-right-lt--daa8ce6df3953fdad2b35924.md) | 69 | `result-track:daa8ce6df3953fdad2b35924cedd38e8abb1bb2ce7ac0739a009d6e109c440fd` |
| 8 | `lemma` | [le_mul_of_forall_lt](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/declarations/le-mul-of-forall-lt--eaef4b986a7c4c4b4af372cb.md) | 76 | `result-track:eaef4b986a7c4c4b4af372cb2835df721f6bd6826797aa6ba71b8c65b2e50bb6` |
| 9 | `lemma` | [mul_le_of_forall_lt](../../../../../mathematics/Algebra/UniversalAlgebra/DenselyOrdered/Variantb9d30562c922b5ad0620e70c3444a7852f9b3c3f3f025a5df28fc4b684929158.lean/declarations/mul-le-of-forall-lt--0ce12e21c3682054e4a7d4a8.md) | 85 | `result-track:0ce12e21c3682054e4a7d4a89b1e1b59fe881df0d800c13565a9e70a4e687e71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
