# Verification target: GRWTSK.Algebra.UniversalAlgebra.LeastGreatest.Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16051b2d7404ad346dd66764f1413f4832a22864",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16051b2d7404ad346dd66764f1413f4832a22864`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leastOfBdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/declarations/leastofbdd--fa58aa31ae519cf8c1626593.md) | 54 | `declaration-track:fa58aa31ae519cf8c162659339349f28d2293b90b452e7ddbe986ebdc0095534` |
| 2 | `lemma` | [isLeast_coe_leastOfBdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/declarations/isleast-coe-leastofbdd--e7066d4b6a6c3a8a59856ca5.md) | 66 | `result-track:e7066d4b6a6c3a8a59856ca5ae35722590565630df29e6221d2f80e88eb4ca4c` |
| 3 | `theorem` | [exists_least_of_bdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/declarations/exists-least-of-bdd--c001a9ef1c12c87c90398320.md) | 74 | `result-track:c001a9ef1c12c87c903983201ac36557fb29911353b21f39814541b77139ddb2` |
| 4 | `theorem` | [coe_leastOfBdd_eq](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/declarations/coe-leastofbdd-eq--dc838521f59f537fe41dc031.md) | 83 | `result-track:dc838521f59f537fe41dc031f699e7d814271e223286423dd93117afaf7a4b11` |
| 5 | `def` | [greatestOfBdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/declarations/greatestofbdd--65f03b2af677b263e6eb3ffa.md) | 93 | `declaration-track:65f03b2af677b263e6eb3ffa0bade00ae23a5450d99da927925d576a36df9034` |
| 6 | `lemma` | [isGreatest_coe_greatestOfBdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/declarations/isgreatest-coe-greatestofbdd--01d2cbb1caf523701d1c78ab.md) | 104 | `result-track:01d2cbb1caf523701d1c78aba54b697ca89a75fcd045ff1b5c5113799547e8b4` |
| 7 | `theorem` | [exists_greatest_of_bdd](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/declarations/exists-greatest-of-bdd--586ea98931492e1e89ff8aa5.md) | 113 | `result-track:586ea98931492e1e89ff8aa503a23469aa33778cb3352d2c266806c2f1a7eff4` |
| 8 | `theorem` | [coe_greatestOfBdd_eq](../../../../../mathematics/Algebra/UniversalAlgebra/LeastGreatest/Variantb1488a86683cedd58fd7733e7ee0844c32c73e5ea47e2e0c9c0e4f7a3ec6e8bf.lean/declarations/coe-greatestofbdd-eq--d6602325d6f65b6016294f8f.md) | 122 | `result-track:d6602325d6f65b6016294f8fecab29a79ccab2809436ffffc1ecc981806d3c3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
