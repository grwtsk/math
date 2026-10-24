# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7279ac8ead3deb7f26053a4a2450460836db43ac",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7279ac8ead3deb7f26053a4a2450460836db43ac`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Monad` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/expand--6cf20bf7cc955f68af9f713e.md) | 36 | `declaration-track:6cf20bf7cc955f68af9f713e344ee4ace7b50cfe09c3ea4e9584e5ce15cd1669` |
| 2 | `theorem` | [expand_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/expand-c--883e2ece50621e56040b0240.md) | 40 | `result-track:883e2ece50621e56040b024099c893616c1ef41bacadbe1ed814a4f90cc67210` |
| 3 | `theorem` | [expand_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/expand-x--b921d43866ff2fb9a37a5941.md) | 44 | `result-track:b921d43866ff2fb9a37a5941b1b74451e384ae7a7bae958d13f0dc61cc1b68c8` |
| 4 | `theorem` | [expand_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/expand-monomial--686797263c9504991bcad753.md) | 48 | `result-track:686797263c9504991bcad753f4ac9d9c1c27fc623135c791a14b055ebbd76e3f` |
| 5 | `theorem` | [expand_one_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/expand-one-apply--9f04ca181234f125f9a125d3.md) | 52 | `result-track:9f04ca181234f125f9a125d33d90e817929c54132c10fd2696c0a03eff577d35` |
| 6 | `theorem` | [expand_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/expand-one--b6aab56cd491073b2172218a.md) | 57 | `result-track:b6aab56cd491073b2172218aa08c36d6be861eb93fc22dcebd32a122c558a962` |
| 7 | `theorem` | [expand_comp_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/expand-comp-bind--6674e2e9fd4ac9cab892e66c.md) | 61 | `result-track:6674e2e9fd4ac9cab892e66c88a9d72e07513cc7dcd59ecdbc483b4abf67afa8` |
| 8 | `theorem` | [expand_bind₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/expand-bind--d745627f7259ebd4410db626.md) | 67 | `result-track:d745627f7259ebd4410db6264fe7ed95c817dd9d7d5be5d51d02e98bccb7a1a4` |
| 9 | `theorem` | [map_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/map-expand--cfd84199a4f2af0c30ca2361.md) | 72 | `result-track:cfd84199a4f2af0c30ca23618e06240016e05cc52689364c255819e79da459af` |
| 10 | `theorem` | [rename_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/rename-expand--7387f64c7f7a629710881b27.md) | 76 | `result-track:7387f64c7f7a629710881b27a7a79eb3664e103885609fbd15b2353ebe52b56c` |
| 11 | `theorem` | [rename_comp_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant86e01d5a7ea128c8bd478fbf18a9be9e371cca4deb346a91b91a0c655e9867e8.lean/declarations/rename-comp-expand--fa31392a4fd4dc6806fa1505.md) | 81 | `result-track:fa31392a4fd4dc6806fa1505cc09b5aac43df666eca1f1d4d775951e4b42c0c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
