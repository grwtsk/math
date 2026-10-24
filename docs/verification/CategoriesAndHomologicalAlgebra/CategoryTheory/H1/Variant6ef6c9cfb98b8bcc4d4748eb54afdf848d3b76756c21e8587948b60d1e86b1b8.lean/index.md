# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.H1.Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aab9012ee13603c3ff048981ce692ed8379d43e6",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aab9012ee13603c3ff048981ce692ed8379d43e6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZeroCochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/zerocochain--cabf33ea267ac4c86275fbef.md) | 54 | `declaration-track:cabf33ea267ac4c86275fbef1fd1d4b550c9154d5a914be2669ce47916f2e425` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/instance--098ca62d465268af6ceca693.md) | 56 | `declaration-track:098ca62d465268af6ceca6932f0b7d0a859048bab686a7b5a8b94547b1ecc3a5` |
| 3 | `lemma` | [one_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/one-apply--85ff53ac613f84ea6d17cd36.md) | 61 | `result-track:85ff53ac613f84ea6d17cd36f65df7448013afdb0c71126710f91b71284aee26` |
| 4 | `lemma` | [inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/inv-apply--7ab8bd922afeaf952fb72712.md) | 64 | `result-track:7ab8bd922afeaf952fb727127f282264eab6da826d899f525dd749b8c72b920b` |
| 5 | `lemma` | [mul_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/mul-apply--c083203e901b5c5e38cf3805.md) | 67 | `result-track:c083203e901b5c5e38cf3805e3cc8e7fe116ad663a1e03a06977f1fc06050e2c` |
| 6 | `structure` | [OneCochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/onecochain--d43a3e7ead16d20e54107de1.md) | 77 | `declaration-track:d43a3e7ead16d20e54107de1ca6feb346bd941416060dc3fedfcb5a5fe48bdc8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/instance--5aa0a35da75d56e0e8cdf8eb.md) | 87 | `declaration-track:5aa0a35da75d56e0e8cdf8ebc0f6d95b781f6a8af1b71b8cd91301d0498e08dd` |
| 8 | `lemma` | [one_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/one-ev--aebf740ca3cc916c0a671a79.md) | 91 | `result-track:aebf740ca3cc916c0a671a793ba62a84a187a1a467089fa9c1cebe46835b9fed` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/instance--febfabde9dfdec4c3b6ac5dd.md) | 96 | `declaration-track:febfabde9dfdec4c3b6ac5dd5c6121ef01fe047608da51fe97bafc8c46b40ec8` |
| 10 | `lemma` | [mul_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/mul-ev--7206cdf7fe0af647b25f971f.md) | 100 | `result-track:7206cdf7fe0af647b25f971f92e793856528664d513789ac492a0f45c6e695fa` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/instance--230c726964f85689c84dff55.md) | 103 | `declaration-track:230c726964f85689c84dff55196a3ff251a87b0be478c9c274891ce370719974` |
| 12 | `lemma` | [inv_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/inv-ev--06e673c3999a906b97c1001f.md) | 107 | `result-track:06e673c3999a906b97c1001f1adfa629e96262a7dadabfbeb9d94dcd8f03adcd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/instance--648805e84dcdc3e63fcad915.md) | 110 | `declaration-track:648805e84dcdc3e63fcad9156b9cdad62748bd40544155865810060df527cae9` |
| 14 | `structure` | [OneCocycle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/onecocycle--986521037672b2a4d4da4353.md) | 119 | `declaration-track:986521037672b2a4d4da43531924dc8074de4dbfd2aa1b3e599bff8fab3fcc3f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/instance--d0eaa38b21ca21ac3b83d7bb.md) | 125 | `declaration-track:d0eaa38b21ca21ac3b83d7bb64c1b1446d47aa5c7fb469bf09df46b6437d7cb9` |
| 16 | `lemma` | [one_toOneCochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/one-toonecochain--c022df4dd5d534b0a9869612.md) | 129 | `result-track:c022df4dd5d534b0a9869612c1cc1e7e4650ef5c9eb72b40bac78cfd3ad6da0a` |
| 17 | `lemma` | [ev_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/ev-refl--f1d85b446e968da6c5b0e054.md) | 132 | `result-track:f1d85b446e968da6c5b0e05412b52083c5a48ca9577e9ec62200da5f3839ae83` |
| 18 | `lemma` | [ev_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/ev-symm--bf1232125d44d742eb9d59c6.md) | 136 | `result-track:bf1232125d44d742eb9d59c6df5c8edbbc440f2ae16313341f681797c87f6866` |
| 19 | `def` | [OneCohomologyRelation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/onecohomologyrelation--17705c90a961c758f56dd5ab.md) | 147 | `declaration-track:17705c90a961c758f56dd5ab701cd7ac4f426f9aef82a9322d3107f0917c7291` |
| 20 | `lemma` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/refl--98b1474b71e38bd59338cd5c.md) | 153 | `result-track:98b1474b71e38bd59338cd5c9339f7cd25bab1f82532ba5aa1edb2d0620722b8` |
| 21 | `lemma` | [symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/symm--2627ed18f127191b8c02ac7b.md) | 155 | `result-track:2627ed18f127191b8c02ac7b11c1c395d83fd248dad1920c87a810cf167849b3` |
| 22 | `lemma` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/trans--92615525bc822a01cf3fefff.md) | 161 | `result-track:92615525bc822a01cf3feffff91eecad03ea909dd3a7d8f5a8cde6d3fec7135d` |
| 23 | `def` | [IsCohomologous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/iscohomologous--1895add4e7f82da35c05303e.md) | 173 | `declaration-track:1895add4e7f82da35c05303e981ab45d531705666e9b62f0e5b7ee6c48cda0c6` |
| 24 | `lemma` | [equivalence_isCohomologous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/equivalence-iscohomologous--a23af075be3b5ff111abfa76.md) | 178 | `result-track:a23af075be3b5ff111abfa76c07b2f3d312b723ce75b03f2338e4845f48a3ba1` |
| 25 | `def` | [H1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/h1--b2a6da943425def3e32cf6ae.md) | 193 | `declaration-track:b2a6da943425def3e32cf6aea07c48d0c858e800edc5c7b5fd8109addf4450e1` |
| 26 | `def` | [OneCocycle.class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/onecocycle-class--f7edff5d11ca5c6d46956962.md) | 196 | `declaration-track:f7edff5d11ca5c6d46956962f64a478d25fe1fd78979256fefa0e0eaab5ab87d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/instance--fe24c19b858effcc41a48df2.md) | 198 | `declaration-track:fe24c19b858effcc41a48df2ef96e90932275946d98743433f46d4d6d504e33d` |
| 28 | `lemma` | [OneCocycle.class_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/onecocycle-class-eq-iff--d83591f2640b3570c6f31d10.md) | 201 | `result-track:d83591f2640b3570c6f31d103d8e4dacd754650e8938d44957295cee724e0aa4` |
| 29 | `lemma` | [OneCocycle.IsCohomologous.class_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/declarations/onecocycle-iscohomologous-class-eq--3fb809a14a895d10de02ce78.md) | 205 | `result-track:3fb809a14a895d10de02ce7894e35e3d00c7e914806ea7eb111e90cdb71f32bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
