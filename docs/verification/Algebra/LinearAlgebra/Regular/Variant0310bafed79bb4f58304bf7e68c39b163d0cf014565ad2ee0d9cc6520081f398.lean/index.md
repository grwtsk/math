# Verification target: GRWTSK.Algebra.LinearAlgebra.Regular.Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19619f0bc72f8f86deef109287ea577a9fef4108",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19619f0bc72f8f86deef109287ea577a9fef4108`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gf2MatMul](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/gf2matmul--65570cf1dbf8cb8237a5b967.md) | 51 | `declaration-track:65570cf1dbf8cb8237a5b96730f4be97074a5b0bbeca4b64044f7c991b5d0799` |
| 2 | `def` | [gf2IdentityMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/gf2identitymatrix--a347ce9dff2c4625d4fa1f19.md) | 56 | `declaration-track:a347ce9dff2c4625d4fa1f19f51891a6513c4a1fb1959ea529f570bdcfcee99b` |
| 3 | `theorem` | [boolMatrixGF2Equiv_identity](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/boolmatrixgf2equiv-identity--db24edcab8100e8ec94082e5.md) | 60 | `result-track:db24edcab8100e8ec94082e5fa8c46a6133834a2298cd4e8b2688d826594a940` |
| 4 | `theorem` | [gf2MatMul_identity_left](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/gf2matmul-identity-left--dbfead23537573274784cb95.md) | 68 | `result-track:dbfead23537573274784cb95ea0176819008c4aa313511225f3b2c7d1c7ae352` |
| 5 | `theorem` | [gf2MatMul_identity_right](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/gf2matmul-identity-right--8bff17f15dfc5577baf6cae8.md) | 75 | `result-track:8bff17f15dfc5577baf6cae8e8e87d1fda0be8bc5bf28f3d78ffd1a4667e2b54` |
| 6 | `theorem` | [gf2MatMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/gf2matmul-assoc--0198d22d0c63d3f13fec8c29.md) | 81 | `result-track:0198d22d0c63d3f13fec8c29fe4e7414518a43075621a544875c45175684d378` |
| 7 | `theorem` | [gf2MatMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/gf2matmul-apply--357e100457f379dda21db64c.md) | 91 | `result-track:357e100457f379dda21db64c7bccc7ecf203ca49a9a2129857a0f772d78b29fd` |
| 8 | `def` | [leftMulLinear](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/leftmullinear--1ecb786175f2551219657e3c.md) | 110 | `declaration-track:1ecb786175f2551219657e3c907aaebb03404c6f582cda38390d658a021ca3cc` |
| 9 | `theorem` | [leftMulLinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/leftmullinear-apply--e5ce7d0b89bad8c3516570dd.md) | 114 | `result-track:e5ce7d0b89bad8c3516570dd9d4911aa4bb609dedd2bf29ba501899d4805ddb5` |
| 10 | `def` | [regularMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularmatrix--d41726524156b0078fbb97c2.md) | 119 | `declaration-track:d41726524156b0078fbb97c2aec2212eea7701ea906ae11e3e4b0098aaae9566` |
| 11 | `theorem` | [regularMatrix_zero](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularmatrix-zero--573e847c36db15104cc77364.md) | 126 | `result-track:573e847c36db15104cc77364d38641fa3021f439897c9954f9aa6ea0fc4ee7b5` |
| 12 | `theorem` | [regularMatrix_one](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularmatrix-one--18b6d65b18ddb634c7d3170a.md) | 132 | `result-track:18b6d65b18ddb634c7d3170a0ddb1d3570239252b8427bdb812a40e27b38130d` |
| 13 | `theorem` | [regularMatrix_add](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularmatrix-add--063726d7e121ad66d5b4dfb3.md) | 137 | `result-track:063726d7e121ad66d5b4dfb3e5a82bc79f5771f32909f50a79453403082d7f38` |
| 14 | `theorem` | [regularMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularmatrix-mul--5cb087fb944af8fdf1bb1974.md) | 151 | `result-track:5cb087fb944af8fdf1bb197447ae1f2c0d58f695faba7fc51f78dfa7192a6d1d` |
| 15 | `def` | [regularRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularrepresentation--0b1968192dd4220bb50b46f7.md) | 161 | `declaration-track:0b1968192dd4220bb50b46f7366c0a4a063fc946920e066fc34388951652cbc6` |
| 16 | `theorem` | [regularRepresentation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularrepresentation-apply--8f02ae7a3d3fb5b78725ec95.md) | 167 | `result-track:8f02ae7a3d3fb5b78725ec9597540c34edad6d696211e5a559afb4dee4c36188` |
| 17 | `theorem` | [regularMatrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularmatrix-injective--43615e7ac82ecabfa6e05edb.md) | 178 | `result-track:43615e7ac82ecabfa6e05edb140cc37569381015fe9f6551d79812e0c399bb90` |
| 18 | `def` | [regularBitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularbitmatrix--b7702b5b3fdbf32f47db053c.md) | 192 | `declaration-track:b7702b5b3fdbf32f47db053c31529b3a1fd50cdd229e23e57ef2458ba801dfad` |
| 19 | `theorem` | [regularBitMatrix_add](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularbitmatrix-add--890636492e805769a2d6360a.md) | 199 | `result-track:890636492e805769a2d6360a3b2975124b3ab44ab55a4321fc84355b61e42885` |
| 20 | `theorem` | [regularBitMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularbitmatrix-mul--c9d4e30f64504104c1858298.md) | 209 | `result-track:c9d4e30f64504104c185829811f780a2235891ed891eb4d614f44ac01d21eaf9` |
| 21 | `theorem` | [regularBitMatrix_one](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularbitmatrix-one--a5da2cb50cdc84e81a3cca44.md) | 218 | `result-track:a5da2cb50cdc84e81a3cca44087d19b0c90a8f1f891cbefa9a6c4f3b69658025` |
| 22 | `theorem` | [regularBitMatrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularbitmatrix-injective--3a7ec879d7b88f9507c57a85.md) | 225 | `result-track:3a7ec879d7b88f9507c57a857eb70b7cea2f539f35116f0738688e456720843f` |
| 23 | `theorem` | [regularBitMatrix_inverse](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant0310bafed79bb4f58304bf7e68c39b163d0cf014565ad2ee0d9cc6520081f398.lean/declarations/regularbitmatrix-inverse--bfa0174e3db4b1577ca0f733.md) | 233 | `result-track:bfa0174e3db4b1577ca0f733621977f983ad129f3a6eb3672b818232fdedcbe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
