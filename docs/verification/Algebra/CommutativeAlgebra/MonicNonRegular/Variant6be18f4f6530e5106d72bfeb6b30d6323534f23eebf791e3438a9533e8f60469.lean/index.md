# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MonicNonRegular.Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "954e6c22a84c66b0e5c52096694dd850d8ef416b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `954e6c22a84c66b0e5c52096694dd850d8ef416b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Monic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [N₃](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/n--f021e6da7ba1b7b316a1045c.md) | 31 | `declaration-track:f021e6da7ba1b7b316a1045c9889137fa7e74a990728ae232afe385c62706f49` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/instance--b0620e125b3683062af41a38.md) | 39 | `declaration-track:b0620e125b3683062af41a38c1d3330adf5eb9b26992304400a20cd3e99b0e9c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/instance--6d66cdd3597a3ec8a91b3a67.md) | 40 | `declaration-track:6d66cdd3597a3ec8a91b3a67621beb0967b8ec36a934b54bc7755e55e802ca59` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/instance--adac43ba775577d9bb53bff3.md) | 43 | `declaration-track:adac43ba775577d9bb53bff348b238419f5f043fbc1be0a4a097c981a2cdbb35` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/instance--07518a9f3f831d994a8caa3e.md) | 51 | `declaration-track:07518a9f3f831d994a8caa3e1c4d9296ab56830cda8a40f34779c02916b8a40e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/instance--ee125bcb34ea39f867982914.md) | 59 | `declaration-track:ee125bcb34ea39f867982914bc27b2943cbab4e53175f14e3e647fb6accacbac` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/instance--7c8c970fca3e44b8c608e01c.md) | 65 | `declaration-track:7c8c970fca3e44b8c608e01cae0830ab27b98d45cc15c136cbd04c2072d9ca5a` |
| 8 | `theorem` | [X_add_two_mul_X_add_two](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/x-add-two-mul-x-add-two--058780c44451f78740315c00.md) | 77 | `result-track:058780c44451f78740315c00e644db1eef7d9f7d30a6ddce50b0b22546f7351e` |
| 9 | `theorem` | [monic_X_add_two](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/monic-x-add-two--15af46a6b903bdba434887c8.md) | 87 | `result-track:15af46a6b903bdba434887c8371cb1a115fd8dd4673d5c3f97377bb8767ae794` |
| 10 | `theorem` | [not_isLeftRegular_X_add_two](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/not-isleftregular-x-add-two--700c7970a518911671efb3ff.md) | 94 | `result-track:700c7970a518911671efb3ffdb30033e616cedda97f89083740916fae55ba83b` |
| 11 | `theorem` | [not_monic_implies_isLeftRegular](../../../../../mathematics/Algebra/CommutativeAlgebra/MonicNonRegular/Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469.lean/declarations/not-monic-implies-isleftregular--a3893b37a581e62e82e6e10f.md) | 102 | `result-track:a3893b37a581e62e82e6e10f61b2008dd5b49915961c4bceeb737bc10812faba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
