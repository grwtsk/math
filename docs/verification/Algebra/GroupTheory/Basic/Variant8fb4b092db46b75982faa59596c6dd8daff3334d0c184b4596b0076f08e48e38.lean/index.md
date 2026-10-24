# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coxeter.Matrix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.PresentedGroup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.DivMod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Use` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relation](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/relation--64b05ea26c37d29b21528f80.md) | 100 | `declaration-track:64b05ea26c37d29b21528f8043cd348d163554871e869ca5758bd05766e5e835` |
| 2 | `def` | [relationsSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/relationsset--8b6a56d92cfb854300f0f11d.md) | 103 | `declaration-track:8b6a56d92cfb854300f0f11d2b1662541a28b26187242841885bae2e3934c78c` |
| 3 | `def` | [Group](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/group--94040f08a6e0c6fbde44864c.md) | 107 | `declaration-track:94040f08a6e0c6fbde44864c852fb68a0773f8364e7267dce48f3c64cfffae52` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/instance--63a8d1febcd6d253b13ce381.md) | 109 | `declaration-track:63a8d1febcd6d253b13ce381226daa7ccd3708a5c06a0cd14f3e9917e97f8aa7` |
| 5 | `def` | [simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple--384ff4354f7f16cb8cc5b628.md) | 112 | `declaration-track:384ff4354f7f16cb8cc5b62811347230e462c3c2ba1963e24e299f766e9d2341` |
| 6 | `theorem` | [reindex_relationsSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/reindex-relationsset--50ba1647c6650673030bd0c6.md) | 114 | `result-track:50ba1647c6650673030bd0c69e14af085cab33776d4af28d29943b41f4598b62` |
| 7 | `def` | [reindexGroupEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/reindexgroupequiv--7b732ce6f2ba9db36aedc8f2.md) | 127 | `declaration-track:7b732ce6f2ba9db36aedc8f233c370e543c39d0c7f0d2587b91970951593508e` |
| 8 | `theorem` | [reindexGroupEquiv_apply_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/reindexgroupequiv-apply-simple--8394fff91cfd06b50372c1b9.md) | 137 | `result-track:8394fff91cfd06b50372c1b93577b1b3031771af2ae25614532f4c4193bc9496` |
| 9 | `theorem` | [reindexGroupEquiv_symm_apply_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/reindexgroupequiv-symm-apply-simple--9da022712070f90ed454108c.md) | 140 | `result-track:9da022712070f90ed454108c48e2a5afa2f6b95f88418cc631dc82b951a44dae` |
| 10 | `structure` | [CoxeterSystem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/coxetersystem--b7265178673151fe04aee14a.md) | 154 | `declaration-track:b7265178673151fe04aee14acfaf110c7624b89013adb8f6949456acfc14981c` |
| 11 | `class` | [IsCoxeterGroup.](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/iscoxetergroup--0999ef78401a8cc407e3fa6d.md) | 159 | `declaration-track:0999ef78401a8cc407e3fa6d7dda08ff2f6c365c8cb0e0133938a9146883f2b9` |
| 12 | `def` | [CoxeterMatrix.toCoxeterSystem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/coxetermatrix-tocoxetersystem--3d75ddb0f6b69d56bbeb03f6.md) | 163 | `declaration-track:3d75ddb0f6b69d56bbeb03f6edbcec581c38a85fd880b302069c2430367c47ff` |
| 13 | `def` | [reindex](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/reindex--c539d8ab5fb77074e9ebe4ad.md) | 177 | `declaration-track:c539d8ab5fb77074e9ebe4adaa9f798c7c0c59899efa9b0c7c62ffb4c3277f08` |
| 14 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/map--63155f311c2850028025e28f.md) | 182 | `declaration-track:63155f311c2850028025e28f21b897a4ea947ee496c47b0ec0e3fd2a760e7d9d` |
| 15 | `def` | [simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple--975440c537df07ea4de390b7.md) | 187 | `declaration-track:975440c537df07ea4de390b7f5b78592fcb597632caa88c48ac7bf050352558b` |
| 16 | `theorem` | [_root_.CoxeterMatrix.toCoxeterSystem_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/root-coxetermatrix-tocoxetersystem-simple--90e41d46894f04e45e76accc.md) | 190 | `result-track:90e41d46894f04e45e76accc944c7f70d633af2c9d911c8bec70d2f872c787d0` |
| 17 | `theorem` | [reindex_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/reindex-simple--36082e16227470e73f64c76c.md) | 193 | `result-track:36082e16227470e73f64c76ce7e69182c85b68a0bc96cfb1f0037e7d4b4c5bef` |
| 18 | `theorem` | [map_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/map-simple--4231c9ec8166f76f682e12d3.md) | 195 | `result-track:4231c9ec8166f76f682e12d3d291b10096f033c51b0d2a90e6194dd70ac9947d` |
| 19 | `theorem` | [simple_mul_simple_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-mul-simple-self--3cf8036729828444bbae1a06.md) | 200 | `result-track:3cf8036729828444bbae1a06b55d2e9867edfab91d9c525e350f3b33f824a787` |
| 20 | `theorem` | [simple_mul_simple_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-mul-simple-cancel-right--5236ce57615e97e76890a75e.md) | 209 | `result-track:5236ce57615e97e76890a75eaddcf367f2370447fe319bdf2140ad06384ff5d6` |
| 21 | `theorem` | [simple_mul_simple_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-mul-simple-cancel-left--8b5159fc02a0ea65a29a4202.md) | 213 | `result-track:8b5159fc02a0ea65a29a420202c48ddb0a75c7d4cb0ab490a1c0394016c2a2c9` |
| 22 | `theorem` | [simple_sq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-sq--d6f93731564a51876172d66d.md) | 216 | `result-track:d6f93731564a51876172d66d2326757574cdd9b7515038afb8e18d6e90f83639` |
| 23 | `theorem` | [inv_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/inv-simple--2d927cffb4beb1cd689942d1.md) | 219 | `result-track:2d927cffb4beb1cd689942d1adf4011e1f7e8011df2ce202108bcdcab9b10d21` |
| 24 | `theorem` | [simple_mul_simple_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-mul-simple-pow--2394f89123fc2466d576b3ed.md) | 223 | `result-track:2394f89123fc2466d576b3ed2f3ad21724921e426b1c88369d134e9bccdb97a3` |
| 25 | `theorem` | [simple_mul_simple_pow'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-mul-simple-pow--790cc35f4717ad867b8cf5f0.md) | 231 | `result-track:790cc35f4717ad867b8cf5f0ac20b0bcd86e2629800788328f69f48209f008c4` |
| 26 | `theorem` | [subgroup_closure_range_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/subgroup-closure-range-simple--c3ee9b95bd4066a251aa8f4b.md) | 235 | `result-track:c3ee9b95bd4066a251aa8f4b055e4ce9d339a85865be2d460421887216e71dca` |
| 27 | `theorem` | [submonoid_closure_range_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/submonoid-closure-range-simple--6a989cb15399eba136d1417a.md) | 242 | `result-track:6a989cb15399eba136d1417a2d0f84f65e70f37941c119e382d3126f221b9231` |
| 28 | `theorem` | [simple_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-induction--2dc70a00cc26e5f31914e28f.md) | 251 | `result-track:2dc70a00cc26e5f31914e28fba23970a73b99baa4458635554cf8d69c40f3539` |
| 29 | `theorem` | [simple_induction_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-induction-left--36de5ba517a8c37ac1d6d3b5.md) | 259 | `result-track:36de5ba517a8c37ac1d6d3b58b61c56effb81765a2868ea33344f335388d3d73` |
| 30 | `theorem` | [simple_induction_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-induction-right--877fe6ca314e742a516e2526.md) | 272 | `result-track:877fe6ca314e742a516e2526f76056f825460f7270370ef999dda8c2cb10008a` |
| 31 | `theorem` | [ext_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/ext-simple--2b3cf56fc8839fd89175011b.md) | 286 | `result-track:2b3cf56fc8839fd89175011b6f966ce3e0b75cc1885cb2f60015df9ce4c9fec3` |
| 32 | `def` | [_root_.CoxeterMatrix.IsLiftable](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/root-coxetermatrix-isliftable--ec130f5e39306c46468ed718.md) | 292 | `declaration-track:ec130f5e39306c46468ed7187659f18b873a1ad0b24a2213990cd7189c7bd7bc` |
| 33 | `theorem` | [relations_liftable](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/relations-liftable--672c78a87fac3c95303d3787.md) | 295 | `result-track:672c78a87fac3c95303d37878a5fa984e8db27ebf00a2bbd2830a928f810dbe3` |
| 34 | `def` | [groupLift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/grouplift--30fd466bf59660539deccbcd.md) | 301 | `declaration-track:30fd466bf59660539deccbcd096db97a41a00bc15347a4adbc563582e0116e7b` |
| 35 | `def` | [restrictUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/restrictunit--3f9481f513c3787a5cb51ff5.md) | 304 | `declaration-track:3f9481f513c3787a5cb51ff5c7c4af0380e8812a7b549318e594b34953106ab0` |
| 36 | `theorem` | [toMonoidHom_apply_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/tomonoidhom-apply-symm-apply--268f531146873f9934f091aa.md) | 311 | `result-track:268f531146873f9934f091aabb6e79c29d500e8565ddbcf68dfbb4c4f1fd7b7e` |
| 37 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/lift--95c19122066d1e3a76552bcd.md) | 320 | `declaration-track:95c19122066d1e3a76552bcd0ce8349194dc15a1fbeb0b5a6290df5768b1e39a` |
| 38 | `theorem` | [lift_apply_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/lift-apply-simple--cc30ec3b6a707b3521bb8cdc.md) | 340 | `result-track:cc30ec3b6a707b3521bb8cdcca8292aef0906d20195a0d20616308f1bf1c0e3a` |
| 39 | `theorem` | [simple_determines_coxeterSystem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/simple-determines-coxetersystem--f66683fdf8a0cf249c5cbac2.md) | 345 | `result-track:f66683fdf8a0cf249c5cbac2490b0fde500e36130301301e43ed1ee9774e0a33` |
| 40 | `def` | [wordProd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/wordprod--20d7c633924f4e027b5befa2.md) | 358 | `declaration-track:20d7c633924f4e027b5befa27f195cb8ac08a5e2338c157f8572572c21c82f10` |
| 41 | `theorem` | [wordProd_nil](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/wordprod-nil--3778e0b2e023c4595c95a7f3.md) | 362 | `result-track:3778e0b2e023c4595c95a7f3748bd8d668ec7c3017f6d21f0857b9d7b4d82d04` |
| 42 | `theorem` | [wordProd_cons](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/wordprod-cons--5ff66ea54017b56c3f59272c.md) | 364 | `result-track:5ff66ea54017b56c3f59272c780a5b8c03f222de9c49ad2d17e8ecac8e022fa3` |
| 43 | `theorem` | [wordProd_singleton](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/wordprod-singleton--e6487959bb95181ed6e59abf.md) | 366 | `result-track:e6487959bb95181ed6e59abf7fd9d72ca459b930c661f630d130151e01c104fe` |
| 44 | `theorem` | [wordProd_concat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/wordprod-concat--1703d489c47e6602cebd4de6.md) | 368 | `result-track:1703d489c47e6602cebd4de6253707879498a27985ff7391a5276589dceeafaf` |
| 45 | `theorem` | [wordProd_append](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/wordprod-append--aa22e8d3a5d52f5b70ecb2f1.md) | 370 | `result-track:aa22e8d3a5d52f5b70ecb2f1f41923bfc7ac30e7e4e946482b37eee3a1745793` |
| 46 | `theorem` | [wordProd_reverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/wordprod-reverse--37cadd1dded320d7c88b95c8.md) | 372 | `result-track:37cadd1dded320d7c88b95c8b305c674ae65684dc9034d8e69e3f9bfeb132868` |
| 47 | `theorem` | [wordProd_surjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/wordprod-surjective--96a23265b087406b33dd13f0.md) | 377 | `result-track:96a23265b087406b33dd13f0f9ef80d6138f95ee7b490a2f7a53505d5fe219da` |
| 48 | `def` | [alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/alternatingword--cbfc0968165e914a17571a83.md) | 387 | `declaration-track:cbfc0968165e914a17571a8321cbc2389187cee521fa5f82eefcb04ffc876f40` |
| 49 | `abbrev` | [braidWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/braidword--fb439c178c9f96657dad5e18.md) | 393 | `declaration-track:fb439c178c9f96657dad5e18e21d2b3a15db772f15ff5f67be6d695786cc2398` |
| 50 | `theorem` | [alternatingWord_succ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/alternatingword-succ--f993d72e8edd5d698630783e.md) | 395 | `result-track:f993d72e8edd5d698630783e6e4ee7c769ebf4b38ba6a6da57f05c9187eb7015` |
| 51 | `theorem` | [alternatingWord_succ'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/alternatingword-succ--010fa1cdfad0ae4140f4f2a6.md) | 398 | `result-track:010fa1cdfad0ae4140f4f2a6db40ea6244dff1170620f3e6a21fa8fee8ce2bef` |
| 52 | `theorem` | [length_alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/length-alternatingword--e4966cceaf538689c92104f1.md) | 408 | `result-track:e4966cceaf538689c92104f131fc31483eeec7aa34b1faf3f06d4226008343c0` |
| 53 | `lemma` | [getElem_alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/getelem-alternatingword--60aec1596b1d85cf6b72446f.md) | 414 | `result-track:60aec1596b1d85cf6b72446f8744472ed80933429a5d8c775247d0caadaa32bf` |
| 54 | `lemma` | [getElem_alternatingWord_swapIndices](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/getelem-alternatingword-swapindices--80c8052f6670cc88f0c31eb1.md) | 445 | `result-track:80c8052f6670cc88f0c31eb14d879f3338e4ba76d1081261f46f967e98bb49db` |
| 55 | `lemma` | [listTake_alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/listtake-alternatingword--b6e1babeada31462cfc89957.md) | 456 | `result-track:b6e1babeada31462cfc8995751aab114406768d060944ea93f15ca415b9bd7cb` |
| 56 | `lemma` | [listTake_succ_alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/listtake-succ-alternatingword--5779919bee92364476bb05bb.md) | 479 | `result-track:5779919bee92364476bb05bbe8a1cf2c34344d465cb0c65c4c2f989e31e07ada` |
| 57 | `theorem` | [prod_alternatingWord_eq_mul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/prod-alternatingword-eq-mul-pow--09d01331b90e21e5d4ea51c1.md) | 489 | `result-track:09d01331b90e21e5d4ea51c1f9eeb6149c51dda1ebfe0dc4343f594db5e89b28` |
| 58 | `theorem` | [prod_alternatingWord_eq_prod_alternatingWord_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/prod-alternatingword-eq-prod-alternatingword-sub--51d951dd14b4ed6582bde12c.md) | 502 | `result-track:51d951dd14b4ed6582bde12cbbcaa86a6371285da27bfa2df20aefed80893381` |
| 59 | `theorem` | [wordProd_braidWord_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/declarations/wordprod-braidword-eq--09e40ff7e57b0c4cd3cc6244.md) | 535 | `result-track:09e40ff7e57b0c4cd3cc6244161f338847a3a4271546ccc58c072a8bf9a012a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
