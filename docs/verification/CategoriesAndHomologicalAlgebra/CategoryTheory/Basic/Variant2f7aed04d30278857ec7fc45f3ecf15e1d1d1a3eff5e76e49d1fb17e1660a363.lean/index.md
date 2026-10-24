# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5971d9463f4521ed115ecf26c0c83782a2f222ca",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5971d9463f4521ed115ecf26c0c83782a2f222ca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplexCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeSimplexQuiver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/freesimplexquiver--aff407ac19e513ac075fd20b.md) | 29 | `declaration-track:aff407ac19e513ac075fd20b465a4bf673e5e485409889d6b2016a0e2fce830a` |
| 2 | `def` | [FreeSimplexQuiver.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/freesimplexquiver-mk--e125251e0a58df7ef131524f.md) | 32 | `declaration-track:e125251e0a58df7ef131524f9cbdfbf8e4f89f386d7a92fc88549be16854159e` |
| 3 | `def` | [FreeSimplexQuiver.len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/freesimplexquiver-len--cefa2bca76b4f635f43b9904.md) | 35 | `declaration-track:cefa2bca76b4f635f43b9904692d49d3198a6987a86a71773856c1883e9a467a` |
| 4 | `inductive` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/hom--2da43ecf759f7fb12783db68.md) | 40 | `declaration-track:2da43ecf759f7fb12783db6849ceefcb60b17aedd42e34d73641e8b23a91646e` |
| 5 | `instance` | [quiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/quiv--9b31a312de08532eb14ec414.md) | 44 | `declaration-track:9b31a312de08532eb14ec41446581bc3913a7eb00444c3698a19d7f9530bfc15` |
| 6 | `abbrev` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/anonymous--6ec79aa51f15d0bba27a040e.md) | 48 | `declaration-track:6ec79aa51f15d0bba27a040ec59b1a7156dd71a11807c4e2028a0b5506e80952` |
| 7 | `abbrev` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/anonymous--aa15c74bdbbf590b29cddabc.md) | 52 | `declaration-track:aa15c74bdbbf590b29cddabc515ab2314571741726a8348b9ff50f1108445e59` |
| 8 | `inductive` | [homRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/homrel--17951017753029beff994e9f.md) | 57 | `declaration-track:17951017753029beff994e9f03519d89dc503cd9c2a3524c94af17fbb13d7d2f` |
| 9 | `def` | [SimplexCategoryGenRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/simplexcategorygenrel--08234e3f669c38fcfd38d648.md) | 79 | `declaration-track:08234e3f669c38fcfd38d64848fb24ce8be55a1fd48fe09ee3886c2a9016be78` |
| 10 | `def` | [SimplexCategoryGenRel.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/simplexcategorygenrel-mk--7e1d4873dd2e6956dc32e519.md) | 83 | `declaration-track:7e1d4873dd2e6956dc32e519500f6cc2d0a75f65ac8e8f34c39ed48c9732c0da` |
| 11 | `abbrev` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/anonymous--29c27b9dea53f3dbebf46547.md) | 89 | `declaration-track:29c27b9dea53f3dbebf465476f19090e9747dc2a9cce890ad36484847aa9fc0c` |
| 12 | `abbrev` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/anonymous--0ddfebb907e393b7af68da62.md) | 93 | `declaration-track:0ddfebb907e393b7af68da6270f061a0433bf51165bd4407dbcc89628f59a6a3` |
| 13 | `def` | [len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/len--4952d95d5d046647598cf095.md) | 97 | `declaration-track:4952d95d5d046647598cf095e367b2632f5c9f7237f82b963c61a117dcb838b1` |
| 14 | `lemma` | [mk_len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/mk-len--9b63890f5a82004cd78f828a.md) | 100 | `result-track:9b63890f5a82004cd78f828a8a780a1807fc62b3dba2a6a99d66d3477779ff06` |
| 15 | `inductive` | [faces](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/faces--dce49d1c6c1c8105bd6152d2.md) | 105 | `declaration-track:dce49d1c6c1c8105bd6152d2c27b72667095c9887c581a34fedf2dd0b06cddc8` |
| 16 | `inductive` | [degeneracies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/degeneracies--daadb3e4025e456d72a21c29.md) | 109 | `declaration-track:daadb3e4025e456d72a21c291cc29cb91a0aff2bcfc61bf1b10f9855b3775290` |
| 17 | `abbrev` | [generators](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/generators--de46e78353acabff7e6bcd7b.md) | 113 | `declaration-track:de46e78353acabff7e6bcd7b6e06a94e95f59da9421a451dfc8e9f3a19566248` |
| 18 | `lemma` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/anonymous--dc80a156c62c837e943d87d4.md) | 117 | `result-track:dc80a156c62c837e943d87d445ecb80d72d888bee15411b6e019cc9e4ea65068` |
| 19 | `lemma` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/anonymous--4bb8ae6211f9e2db23c1bcd7.md) | 119 | `result-track:4bb8ae6211f9e2db23c1bcd7c9e90e22ff1ae832544d8ef75603c5d163ae5862` |
| 20 | `lemma` | [multiplicativeClosure_isGenerator_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/multiplicativeclosure-isgenerator-eq-top--d9682c8c63f94feddb5c0af4.md) | 124 | `result-track:d9682c8c63f94feddb5c0af4da60cb4be9d19f9b3a7e4325c97941e9c2e79d05` |
| 21 | `lemma` | [hom_induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/hom-induction--9154eb1ffab519bb198d29bc.md) | 136 | `result-track:9154eb1ffab519bb198d29bc99e8dda61f06058988a3e91e29b9e5b80b12d2b6` |
| 22 | `lemma` | [hom_induction'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/hom-induction--56b384962b30604c58216115.md) | 161 | `result-track:56b384962b30604c582161156196e38746b25239fb947c4b0d5ae13a51999917` |
| 23 | `def` | [rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/rec--59ac2d66f75f50e15ba6d8be.md) | 188 | `declaration-track:59ac2d66f75f50e15ba6d8be30773b8312b35b26a983afafc54bfa310e7013e3` |
| 24 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/ext--6406ac8f60d964f5cbbfa2c0.md) | 196 | `result-track:6406ac8f60d964f5cbbfa2c09f8c406d55cf77d7552601f39c7d037ea32ccc83` |
| 25 | `theorem` | [δ_comp_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/comp--f73e9b730b5a32021cb75c29.md) | 207 | `result-track:f73e9b730b5a32021cb75c294e22cf5a29cef115b5e5f71a0cb5015afa091320` |
| 26 | `theorem` | [δ_comp_σ_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/comp-of-le--91a342d9ba68ee3700f9bd0d.md) | 213 | `result-track:91a342d9ba68ee3700f9bd0d70bf49bcc3df7954b06e5b9f2ebc9aaf0458fbb9` |
| 27 | `theorem` | [δ_comp_σ_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/comp-self--bf70fe960f0105d7e1ef752f.md) | 219 | `result-track:bf70fe960f0105d7e1ef752fd5b7a563688da93fbc394a6772227763798501e4` |
| 28 | `theorem` | [δ_comp_σ_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/comp-succ--3f0cfde098f50ec54fb216fc.md) | 225 | `result-track:3f0cfde098f50ec54fb216fc022919e70b2e3ca544079d2dd927c29edd5f73a3` |
| 29 | `theorem` | [δ_comp_σ_of_gt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/comp-of-gt--8bf5439d75ad89872f0ba32b.md) | 230 | `result-track:8bf5439d75ad89872f0ba32b238b7473671b221e4e4792045d6f526c427145d2` |
| 30 | `theorem` | [σ_comp_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/comp--d3040a30546bdce5b69989e2.md) | 236 | `result-track:d3040a30546bdce5b69989e23060ced5b9461081b244bb77aad9407ffe068780` |
| 31 | `lemma` | [δ_comp_δ_nat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/comp-nat--7cd39cda7a65b47ed3fec1db.md) | 242 | `result-track:7cd39cda7a65b47ed3fec1db66e62c030c94b12b56bd43e817fe8532b7742eed` |
| 32 | `lemma` | [σ_comp_σ_nat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/comp-nat--2af0be89990306536c3919b1.md) | 247 | `result-track:2af0be89990306536c3919b1dbc1fe1cad6f635af8edfb9fdc64ef70234c1449` |
| 33 | `def` | [toSimplexCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/tosimplexcategory--45c63412fd6edbbf0cd42e0d.md) | 255 | `declaration-track:45c63412fd6edbbf0cd42e0d95cf1a9e009c78161765a900415c813c63757ba2` |
| 34 | `lemma` | [toSimplexCategory_obj_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/tosimplexcategory-obj-mk--31e6fd27efc48ee701c35d5c.md) | 271 | `result-track:31e6fd27efc48ee701c35d5c556fe6c319550708205445e4e149ef498a8be0c7` |
| 35 | `lemma` | [toSimplexCategory_map_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/tosimplexcategory-map--9d9edb6f1f18c374e5f1e888.md) | 274 | `result-track:9d9edb6f1f18c374e5f1e8888d338d669d08885db21d65f7f7abd11e89818a50` |
| 36 | `lemma` | [toSimplexCategory_map_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/tosimplexcategory-map--370de7e82d04ee87a013e9fc.md) | 278 | `result-track:370de7e82d04ee87a013e9fc9065c4d4f7f7c28d77f14a1c3e1f97ad9a308c87` |
| 37 | `lemma` | [toSimplexCategory_len](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/declarations/tosimplexcategory-len--32efc87abdfc480fef05ba50.md) | 282 | `result-track:32efc87abdfc480fef05ba50e4d2a9d94ddf296a87308944c5d0871f0311b336` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
