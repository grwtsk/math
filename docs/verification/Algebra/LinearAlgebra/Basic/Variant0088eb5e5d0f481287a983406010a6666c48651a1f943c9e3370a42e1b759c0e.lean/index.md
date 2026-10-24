# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3275e53e102bba32e4ab5cefbd0851101fe23e40",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3275e53e102bba32e4ab5cefbd0851101fe23e40`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensorobj--05119be707f87fe46affa5df.md) | 59 | `declaration-track:05119be707f87fe46affa5dfb1f08e60242059cf1de29ed8f94cdaf60f3d8aa0` |
| 2 | `def` | [tensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensorhom--198e0243a19ec979550bcb01.md) | 63 | `declaration-track:198e0243a19ec979550bcb01ee5ba102b4ddbcf50bf09b08c2cf7bbb2bb67005` |
| 3 | `def` | [whiskerLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/whiskerleft--a51767f90fccc664acc6c565.md) | 68 | `declaration-track:a51767f90fccc664acc6c5651995ac71aa62ed6c12247be24fd8c095370c2054` |
| 4 | `def` | [whiskerRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/whiskerright--234bcf15e7cd17c265ad4bb9.md) | 73 | `declaration-track:234bcf15e7cd17c265ad4bb9ca93e7007dbe1303ed9ac740d53016be5daed426` |
| 5 | `theorem` | [tensor_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensor-id--ed852948e11336498170983e.md) | 77 | `result-track:ed852948e11336498170983e9107bb813a8c6e72c6931cf005c50dcf8ac4e15b` |
| 6 | `theorem` | [tensor_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensor-comp--2c318e6a0662cb1c07a3652f.md) | 83 | `result-track:2c318e6a0662cb1c07a3652feff41e8322a2cbdd29f1801596f85d302b1c7a10` |
| 7 | `def` | [associator](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/associator--6322ca5972691dde71921ee4.md) | 91 | `declaration-track:6322ca5972691dde71921ee49580efd621f05ff0c279fd7d49128cdcb6394685` |
| 8 | `def` | [leftUnitor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/leftunitor--0e59193e3124f1c8dd212d6f.md) | 96 | `declaration-track:0e59193e3124f1c8dd212d6fdb5847dc81948ecd695e3102aaae43ccec994bf7` |
| 9 | `def` | [rightUnitor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/rightunitor--dbfb1b33c76ea0ca5dbea2e6.md) | 100 | `declaration-track:dbfb1b33c76ea0ca5dbea2e6f0f7856c8053374ea2015ee07e4c4a24ce5c361d` |
| 10 | `instance` | [instMonoidalCategoryStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/instmonoidalcategorystruct--7fa6aa6177eeef5156b8fa6b.md) | 104 | `declaration-track:7fa6aa6177eeef5156b8fa6b62c7f6fde33bc8c8837c090a1fd89df38dedd56e` |
| 11 | `theorem` | [associator_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/associator-naturality--546e49ee578009bf5059b00f.md) | 114 | `result-track:546e49ee578009bf5059b00f431a9ed39cc33c0ea24d64c179cfbed4c45764f9` |
| 12 | `theorem` | [pentagon](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/pentagon--91da2c61dee67c00cc1b379e.md) | 123 | `result-track:91da2c61dee67c00cc1b379e247631ac50e3d1caefa32f1f01f229c64d39ee9b` |
| 13 | `theorem` | [leftUnitor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/leftunitor-naturality--5c9d6561b7be7fb491ea40c4.md) | 132 | `result-track:5c9d6561b7be7fb491ea40c44be9098ae15503e840618e51b8ab02ba2abf7396` |
| 14 | `theorem` | [rightUnitor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/rightunitor-naturality--8b7678a2a189560fb81717a3.md) | 143 | `result-track:8b7678a2a189560fb81717a3a76d449d28bf1f4ace7399c80e4bba3d1c53549c` |
| 15 | `theorem` | [triangle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/triangle--c8b3d1b8bda0bf1a42fbf8a3.md) | 154 | `result-track:c8b3d1b8bda0bf1a42fbf8a32530bb003cfe5dd8400e633faa52cd6b22b8521c` |
| 16 | `instance` | [monoidalCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/monoidalcategory--44fe7b6ec34d2a179a6898c5.md) | 169 | `declaration-track:44fe7b6ec34d2a179a6898c5babf168bedc19d68f322692fa68d828be726f2fa` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/instance--6bbcdb9e6fa52ef6e0c1848c.md) | 179 | `declaration-track:6bbcdb9e6fa52ef6e0c1848c3afd12b65066f31ce8707c488323a8e1b3a53d39` |
| 18 | `theorem` | [tensorHom_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensorhom-tmul--abc0443de8aa50d9f0b2d267.md) | 185 | `result-track:abc0443de8aa50d9f0b2d267d21e8c21bbe25bf25dca53b78d38858cf9bdef1d` |
| 19 | `theorem` | [whiskerLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/whiskerleft-apply--7d99af92c3cc37904f9ceb21.md) | 190 | `result-track:7d99af92c3cc37904f9ceb21b3deba37bad266bf330aafb8d823f4fba0259690` |
| 20 | `theorem` | [whiskerRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/whiskerright-apply--ecbc14f2748184ec4528417e.md) | 196 | `result-track:ecbc14f2748184ec4528417e946f0123a6054efaf00ef9a25e6232055539fb0f` |
| 21 | `theorem` | [leftUnitor_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/leftunitor-hom-apply--8e9688c443657b03278075db.md) | 202 | `result-track:8e9688c443657b03278075dbec323e2329a210b34fa0457ab64903f433ac4048` |
| 22 | `theorem` | [leftUnitor_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/leftunitor-inv-apply--e86d270038201c762524f166.md) | 207 | `result-track:e86d270038201c762524f16699395628d48b2d7da7e5425308f1310803920943` |
| 23 | `theorem` | [rightUnitor_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/rightunitor-hom-apply--4a11d5898d7e7d148b47765c.md) | 212 | `result-track:4a11d5898d7e7d148b47765c7da78821222c5aec32fd8b4b85f0790e733487d1` |
| 24 | `theorem` | [rightUnitor_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/rightunitor-inv-apply--2333c886577b7e5d1195a49a.md) | 217 | `result-track:2333c886577b7e5d1195a49a79173566fc307df18efa13812944dde56b7d1684` |
| 25 | `theorem` | [associator_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/associator-hom-apply--1f3535fa7c1ecd9d13bd2317.md) | 222 | `result-track:1f3535fa7c1ecd9d13bd2317ff6bd4269c01b75f88eb6c4ad5bc9d3c8af63d25` |
| 26 | `theorem` | [associator_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/associator-inv-apply--5102586c4f84af4229de22ca.md) | 227 | `result-track:5102586c4f84af4229de22ca99d89b3ef4ea53b944dfac5ba3087c7a494991c8` |
| 27 | `def` | [tensorLift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensorlift--87fd6bc67f736606a4f84799.md) | 241 | `declaration-track:87fd6bc67f736606a4f84799398f098b138681d53e36b7ca951b4b9b63b932a8` |
| 28 | `lemma` | [tensorLift_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensorlift-tmul--1b413dd6bf3456f2afd5b401.md) | 245 | `result-track:1b413dd6bf3456f2afd5b401d17b3374c025cbb9a1165b1fa42f7594d79037c3` |
| 29 | `lemma` | [tensor_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensor-ext--90ce1ab6662f3974593de040.md) | 250 | `result-track:90ce1ab6662f3974593de04072d959d7dbe9a156ad298ec091e30893036d28d2` |
| 30 | `lemma` | [tensor_ext₃'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensor-ext--c9a300018c87f28f74466179.md) | 255 | `result-track:c9a300018c87f28f7446617906fd1855dd7702eaf94d6245d27aabc1f7847f44` |
| 31 | `lemma` | [tensor_ext₃](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/tensor-ext--3cd1af7057f92b50f4b00644.md) | 261 | `result-track:3cd1af7057f92b50f4b00644f32f1b89ea00a0a555ae54c2d4b4b270ad0abea5` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/instance--fd3a731d4b10db613104e0c9.md) | 271 | `declaration-track:fd3a731d4b10db613104e0c914f2b7b599e9ae840e1a7c35ff28134b9efd6174` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/instance--ac11b8e97ebbf6f2e7ef488e.md) | 304 | `declaration-track:ac11b8e97ebbf6f2e7ef488eb44eb4597b189307d77b5f9a2c635e0a1822e2df` |
| 34 | `lemma` | [ofHom₂_compr₂](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean/declarations/ofhom-compr--b2335cf753955e38b9c19ef3.md) | 321 | `result-track:b2335cf753955e38b9c19ef3bed54f0bdaf42f9e41407ecc6e30f180db746ddc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
