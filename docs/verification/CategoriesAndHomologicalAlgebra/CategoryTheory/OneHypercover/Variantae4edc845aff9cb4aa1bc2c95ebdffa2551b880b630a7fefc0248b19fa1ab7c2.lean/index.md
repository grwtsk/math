# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OneHypercover.Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c91e271072b04b605cdec4a866f840cd08495e62",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c91e271072b04b605cdec4a866f840cd08495e62`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PreOneHypercover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/preonehypercover--d90c2a1080f7c5c7262284d9.md) | 40 | `declaration-track:d90c2a1080f7c5c7262284d945cb6f6db36a5c8a1b6cdec651cf1a78f48072bf` |
| 2 | `abbrev` | [HasPullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/haspullbacks--311b96aa16c936ba7323189c.md) | 63 | `declaration-track:311b96aa16c936ba7323189c068cd4ac06fdb9db170843332191d732c45a52e7` |
| 3 | `abbrev` | [sieve₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/sieve--e75d3e36c98625ca574801ce.md) | 66 | `declaration-track:e75d3e36c98625ca574801ce236988a3559606f25eaacd26aa83a1ef3f966d7c` |
| 4 | `def` | [sieve₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/sieve--d51dbc259072b7c281061667.md) | 74 | `declaration-track:d51dbc259072b7c2810616676a972bcea3944441cf39ffb368980fe703280627` |
| 5 | `abbrev` | [toPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/topullback--04717cddd0e770e011891d2b.md) | 85 | `declaration-track:04717cddd0e770e011891d2b3a19b8f8aef795de28d0fb8d16671ee87d3603f1` |
| 6 | `def` | [sieve₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/sieve--2b0283a483cf416f346edec0.md) | 91 | `declaration-track:2b0283a483cf416f346edec03efc3bc22bcde452e32a2c8c477568473cc111cd` |
| 7 | `lemma` | [sieve₁_eq_pullback_sieve₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/sieve-eq-pullback-sieve--895c4e9ac06ebd879b49647d.md) | 94 | `result-track:895c4e9ac06ebd879b49647d8099d67639880224c605b2f4fc2cacce6644d49f` |
| 8 | `lemma` | [sieve₁'_eq_sieve₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/sieve-eq-sieve--808b75c0e45360cd04902cb6.md) | 106 | `result-track:808b75c0e45360cd04902cb632a35add81a4fd4ae21f57beda48721a43d54d5e` |
| 9 | `abbrev` | [I₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/i--83016a547bbfce1a4e1370c8.md) | 115 | `declaration-track:83016a547bbfce1a4e1370c8336e68e0fbb757e3f6bdff41cb4f8d77cd3173ed` |
| 10 | `def` | [multicospanShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/multicospanshape--b6b1da903aa2886ce85f4838.md) | 119 | `declaration-track:b6b1da903aa2886ce85f4838e2a1b8de08fe9f9fceb00b98f1a7b0e8fed232f4` |
| 11 | `def` | [multicospanIndex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/multicospanindex--22139a8c694b9ab2a235bf84.md) | 128 | `declaration-track:22139a8c694b9ab2a235bf844898f7f12a944b22d3ac1ac1cc222da3ac0fabea` |
| 12 | `def` | [multifork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/multifork--8e69cb84cebeb9b9eb944b09.md) | 135 | `declaration-track:8e69cb84cebeb9b9eb944b0977a88da8d7dcb3c32d1bb174a46d89153d294514` |
| 13 | `structure` | [OneHypercover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/onehypercover--45b56a4a1ce89194424727af.md) | 151 | `declaration-track:45b56a4a1ce89194424727af5707cc0abb7c1a09c99c553f9532ed942199ad26` |
| 14 | `lemma` | [OneHypercover.mem_sieve₁'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/onehypercover-mem-sieve--c37b714eee5a3f53a75c4145.md) | 158 | `result-track:c37b714eee5a3f53a75c4145f88e8b564378245f2ea7100173bc8d24358b0fa7` |
| 15 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/mk--1841c2497c984a68ddb4fbb8.md) | 169 | `declaration-track:1841c2497c984a68ddb4fbb812146eb468f12d155cf3320d6c185a420e2dfcf2` |
| 16 | `def` | [multiforkLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/multiforklift--13e139fb3030473e706e45b4.md) | 188 | `declaration-track:13e139fb3030473e706e45b4d3ba2d3e638c1f24d3479c528d0df5165ca4b143` |
| 17 | `lemma` | [multiforkLift_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/multiforklift-map--6cb25859c85c6e02bfccef37.md) | 198 | `result-track:6cb25859c85c6e02bfccef37d80d66a40d25156b8278b14d1d8d2a69241dd5d7` |
| 18 | `def` | [isLimitMultifork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/islimitmultifork--08fdcf2447d850ae760b6e1c.md) | 206 | `declaration-track:08fdcf2447d850ae760b6e1cbe5553e403f01eab0a0bc29f9367ab3ef921e122` |
| 19 | `def` | [preOneHypercover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/preonehypercover--7f12eaee4e309ed56ae74776.md) | 227 | `declaration-track:7f12eaee4e309ed56ae7477645348e817f07ee1907f41c7f95cff2a16ae27130` |
| 20 | `lemma` | [preOneHypercover_sieve₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/preonehypercover-sieve--ea08dc0328ec2c7e7d059253.md) | 238 | `result-track:ea08dc0328ec2c7e7d059253420f65033da36e8d9da639939f4d4dd24a1f6b70` |
| 21 | `lemma` | [preOneHypercover_sieve₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/preonehypercover-sieve--633de886a4621412c73823e6.md) | 246 | `result-track:633de886a4621412c73823e6faa0f16905487c589984d1e36e56e73417770991` |
| 22 | `def` | [oneHypercover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variantae4edc845aff9cb4aa1bc2c95ebdffa2551b880b630a7fefc0248b19fa1ab7c2.lean/declarations/onehypercover--ccc396a2fbe60466783a7497.md) | 257 | `declaration-track:ccc396a2fbe60466783a7497be7434059eb9a4381e97be8623208b49b8b5ebb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
