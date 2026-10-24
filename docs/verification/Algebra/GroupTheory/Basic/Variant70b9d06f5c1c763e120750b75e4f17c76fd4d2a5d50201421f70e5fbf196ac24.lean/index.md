# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "324a8712bed86b424eabc117aeb37e9fea1e1887",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `324a8712bed86b424eabc117aeb37e9fea1e1887`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coxeter.Matrix` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.PresentedGroup` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.DivMod` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Use` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relation](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/relation--6b8b394dae8c1c9cc844ea8d.md) | 108 | `declaration-track:6b8b394dae8c1c9cc844ea8dc2f491504ee9ad54be01840420e2c5ceabbae4db` |
| 2 | `def` | [relationsSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/relationsset--959d08e2d886547c8615c8d9.md) | 111 | `declaration-track:959d08e2d886547c8615c8d91f5a8853167e20923ca98ff2bd67f66a29649765` |
| 3 | `def` | [Group](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/group--f8d4330ec0cd4d3a6716b0cc.md) | 115 | `declaration-track:f8d4330ec0cd4d3a6716b0cc3cba9027c27d917aac5df457d2e98a0e530156d1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/instance--871484d410f5304ce3c126d5.md) | 117 | `declaration-track:871484d410f5304ce3c126d558311aef0bf421dabe9e812aab8738d13a3467e9` |
| 5 | `def` | [simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple--7e8fb75372a2b4097ff66537.md) | 120 | `declaration-track:7e8fb75372a2b4097ff665370cb41fb8e9411703f33159b624af5805110e7f1d` |
| 6 | `theorem` | [reindex_relationsSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/reindex-relationsset--88c322cdc3c1bd33470544eb.md) | 122 | `result-track:88c322cdc3c1bd33470544eba6284e72c3ca683af4241b72bb60a7963e9ab5a6` |
| 7 | `def` | [reindexGroupEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/reindexgroupequiv--a2e1f8a755f30519b3985ffb.md) | 135 | `declaration-track:a2e1f8a755f30519b3985ffb81eaab00fc91893b16c5283c74ea4f91cc8895d2` |
| 8 | `theorem` | [reindexGroupEquiv_apply_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/reindexgroupequiv-apply-simple--ba2346f79a59cb230b0bce35.md) | 145 | `result-track:ba2346f79a59cb230b0bce350d73ba30c52e2e31683a2d1cfb25a234e7520ef1` |
| 9 | `theorem` | [reindexGroupEquiv_symm_apply_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/reindexgroupequiv-symm-apply-simple--27a7196e97d8f8c0788f8776.md) | 148 | `result-track:27a7196e97d8f8c0788f87761ab86805bf6c0141eb21ee5eae3c520be1e65e2d` |
| 10 | `structure` | [CoxeterSystem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/coxetersystem--c071057e681bb8d54eb9998d.md) | 162 | `declaration-track:c071057e681bb8d54eb9998dedbe5572d354d20cc5024f579bfabf203877c62a` |
| 11 | `class` | [IsCoxeterGroup.](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/iscoxetergroup--5fac1f050d1cc28462e37ef1.md) | 167 | `declaration-track:5fac1f050d1cc28462e37ef19710afe99282cb681801c246d6fc7790cb782c6e` |
| 12 | `def` | [CoxeterMatrix.toCoxeterSystem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/coxetermatrix-tocoxetersystem--3ed6f928154be54f6f2aecbf.md) | 171 | `declaration-track:3ed6f928154be54f6f2aecbf9e85437254e592d474333a675e8b1da19e2efd8e` |
| 13 | `def` | [reindex](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/reindex--e02456ac1ff47ce77a69b070.md) | 185 | `declaration-track:e02456ac1ff47ce77a69b0700d59c139c466cea437750174597f915bcff38f1a` |
| 14 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/map--3348352d0ad697e54a273847.md) | 190 | `declaration-track:3348352d0ad697e54a273847ad49c1b912d552c8039e1862977df855eb7659db` |
| 15 | `def` | [simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple--00ffaf2f7416d615e20c7fcb.md) | 195 | `declaration-track:00ffaf2f7416d615e20c7fcbbc560fd1c3e59d233b37031fb7a6c43736159124` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.CoxeterSystem.Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.CoxeterMatrix.toCoxeterSystem_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/root-grwtsk-algebra-grouptheory-coxetersystem-variant8fb4b092db46b75982f--b0129e55480a6c82fe09d1e5.md) | 198 | `result-track:b0129e55480a6c82fe09d1e5a18021201ac387f109f3c5e9b758b9c1aa35083f` |
| 17 | `theorem` | [reindex_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/reindex-simple--ddb9eb92734aff17e86122fb.md) | 201 | `result-track:ddb9eb92734aff17e86122fb4927ae66f4b13fdab77f57760ca9f875fcfd78cb` |
| 18 | `theorem` | [map_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/map-simple--153e66a6a59b88d95e2de27f.md) | 203 | `result-track:153e66a6a59b88d95e2de27f3e06057166ea60708f8d4196708771a877fa3c96` |
| 19 | `theorem` | [simple_mul_simple_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-mul-simple-self--52f2e9cdc5662d53607a0a78.md) | 208 | `result-track:52f2e9cdc5662d53607a0a78d968c85b261802043a7f9d96b2d4f546a026da7f` |
| 20 | `theorem` | [simple_mul_simple_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-mul-simple-cancel-right--ca7a75916687055bbe91c3df.md) | 217 | `result-track:ca7a75916687055bbe91c3dfb98d2c1a31162c76156923bef6cd3f626d4015e0` |
| 21 | `theorem` | [simple_mul_simple_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-mul-simple-cancel-left--0c57499e61efe84fcf450c5e.md) | 221 | `result-track:0c57499e61efe84fcf450c5e1589fc6f436d27eee45453b825460d1cec778a65` |
| 22 | `theorem` | [simple_sq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-sq--78b4537904189c7d3d119dba.md) | 224 | `result-track:78b4537904189c7d3d119dba95942f6694ebec25876c1e7e23ec21a94eeb8867` |
| 23 | `theorem` | [inv_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/inv-simple--c8fc99af190c32eecd23a7c7.md) | 227 | `result-track:c8fc99af190c32eecd23a7c75c01a0b993cd4e356ba8df66d0577481de045e6c` |
| 24 | `theorem` | [simple_mul_simple_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-mul-simple-pow--596f52b115f562b9c82401ae.md) | 231 | `result-track:596f52b115f562b9c82401ae9c4bfed038b0402c1d1e458e155fb22b4cce9b96` |
| 25 | `theorem` | [simple_mul_simple_pow'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-mul-simple-pow--38a7a2a28126ace788ae4d9b.md) | 239 | `result-track:38a7a2a28126ace788ae4d9bd102c6e60f8b9ca586e69e55b41ce6ee366d4b04` |
| 26 | `theorem` | [subgroup_closure_range_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/subgroup-closure-range-simple--34b3a318915f05158e38df7a.md) | 243 | `result-track:34b3a318915f05158e38df7a173e1bba1da56bdae35a5bd5e27d9bef57cbb284` |
| 27 | `theorem` | [submonoid_closure_range_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/submonoid-closure-range-simple--46ebd0ecd16ef49a0bbfe994.md) | 250 | `result-track:46ebd0ecd16ef49a0bbfe9940d398168e3199d3e9158d23a1513456da084f364` |
| 28 | `theorem` | [simple_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-induction--5df5d2e941f917bc72c8707f.md) | 259 | `result-track:5df5d2e941f917bc72c8707f2cd1ccf37d7dc31653075a55b5887f8eed5c1b9f` |
| 29 | `theorem` | [simple_induction_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-induction-left--66d36ede2edfbcdcbe159f0f.md) | 267 | `result-track:66d36ede2edfbcdcbe159f0f3d787066253682015722569d6ce40b693f3eedc8` |
| 30 | `theorem` | [simple_induction_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-induction-right--9533965f60b20f79987a07d8.md) | 280 | `result-track:9533965f60b20f79987a07d8fe99da6361fb9fe687cc0d69d16b34d8f228c614` |
| 31 | `theorem` | [ext_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/ext-simple--b85f417f4ed4c7a0abe43648.md) | 294 | `result-track:b85f417f4ed4c7a0abe436480a7c31c8308da2f56b38b444c6b4f9ba5f56c6cd` |
| 32 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.CoxeterSystem.Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.CoxeterMatrix.IsLiftable](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/root-grwtsk-algebra-grouptheory-coxetersystem-variant8fb4b092db46b75982f--92ae98af3e9d5fa08527aa15.md) | 300 | `declaration-track:92ae98af3e9d5fa08527aa156ca3e70de33bd82bda77686e999d2daf2f55594b` |
| 33 | `theorem` | [relations_liftable](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/relations-liftable--c723da79b5e2b3047deefed3.md) | 303 | `result-track:c723da79b5e2b3047deefed369a597ea5a667d0e2e0b2fca7e8514963fa0c59e` |
| 34 | `def` | [groupLift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/grouplift--7dea7c40fa65362996c16250.md) | 309 | `declaration-track:7dea7c40fa65362996c1625051ea1fe1673835f720909dc6801d2c9c8db048f3` |
| 35 | `def` | [restrictUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/restrictunit--8b0d8cb9abd3472d16539c0f.md) | 312 | `declaration-track:8b0d8cb9abd3472d16539c0f9b1bb7dca84983f89da5661f747d7f57000e3833` |
| 36 | `theorem` | [toMonoidHom_apply_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/tomonoidhom-apply-symm-apply--026d711340ac79e909b5c533.md) | 319 | `result-track:026d711340ac79e909b5c533c57a4509706bb4f52031d3dc6ed5d6cdb5320320` |
| 37 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/lift--59f8b623404a57193e52d4fc.md) | 328 | `declaration-track:59f8b623404a57193e52d4fce432cdfe6c997ab2e5fb985af59788577160a1ef` |
| 38 | `theorem` | [lift_apply_simple](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/lift-apply-simple--5fb8e3417e31c8b9cb3e58f5.md) | 348 | `result-track:5fb8e3417e31c8b9cb3e58f560213fbc9e8e98080b634d12c458e993d57bf201` |
| 39 | `theorem` | [simple_determines_coxeterSystem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/simple-determines-coxetersystem--8427e34670918346971f7e33.md) | 353 | `result-track:8427e34670918346971f7e33fe8ef402d633984fdfc1fed76f119f94b65f8c7f` |
| 40 | `def` | [wordProd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/wordprod--c99a9672feda22c53050ccea.md) | 366 | `declaration-track:c99a9672feda22c53050ccea070ae2bf390cd62dd0bd31270e504981b9f26af8` |
| 41 | `theorem` | [wordProd_nil](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/wordprod-nil--09ae4aeebfe9a144b7949e0f.md) | 370 | `result-track:09ae4aeebfe9a144b7949e0fc6a30c278bff6da69ceec3b355060cfbc151d36d` |
| 42 | `theorem` | [wordProd_cons](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/wordprod-cons--572d1b3a849de1cbfd02e7c7.md) | 372 | `result-track:572d1b3a849de1cbfd02e7c7601617c46b9bcce8cc19adab4dd117f1659f94df` |
| 43 | `theorem` | [wordProd_singleton](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/wordprod-singleton--771402c3a5acebe123c405b8.md) | 374 | `result-track:771402c3a5acebe123c405b8b73d3e0e1eea765b357178c02d53d2799abed7d7` |
| 44 | `theorem` | [wordProd_concat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/wordprod-concat--65473ea93794b5500ff23e1e.md) | 376 | `result-track:65473ea93794b5500ff23e1ea34ef14377728ab8b93467d6598f2aca4b4c3b2f` |
| 45 | `theorem` | [wordProd_append](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/wordprod-append--a234df97705b76c5c7948950.md) | 378 | `result-track:a234df97705b76c5c79489503871e95527d836131b2cc16a3e6baf6de9bf7fc5` |
| 46 | `theorem` | [wordProd_reverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/wordprod-reverse--5f609cf39502962f489936a9.md) | 380 | `result-track:5f609cf39502962f489936a964d2fa8d781b51e21c78e7d0e0bb579becbc03c2` |
| 47 | `theorem` | [wordProd_surjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/wordprod-surjective--8a53bd3d58bea5b4ce704095.md) | 385 | `result-track:8a53bd3d58bea5b4ce704095160e0ebc5871a048229343fafc05258bd0d44c63` |
| 48 | `def` | [alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/alternatingword--73ae75bd62b5b0364658761f.md) | 395 | `declaration-track:73ae75bd62b5b0364658761f7ceb0d6adb7aa2c6688e4ca4351320402732d2ef` |
| 49 | `abbrev` | [braidWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/braidword--f3d1d6718dd14024b0697763.md) | 401 | `declaration-track:f3d1d6718dd14024b0697763e0c97f8d06f40f3fba2cc684826002e36abcaae3` |
| 50 | `theorem` | [alternatingWord_succ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/alternatingword-succ--d5df83adcffc8df9dbf585b4.md) | 403 | `result-track:d5df83adcffc8df9dbf585b429f0a83ae3102e5b6b66e789e81a78fb72d8494e` |
| 51 | `theorem` | [alternatingWord_succ'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/alternatingword-succ--b1f569e66ee4953b25ece04b.md) | 406 | `result-track:b1f569e66ee4953b25ece04bced62e7d65e1bd248dd05e15326b79a11d16b624` |
| 52 | `theorem` | [length_alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/length-alternatingword--4a7719ba675455b46b6b03b1.md) | 416 | `result-track:4a7719ba675455b46b6b03b12fd8b034af5d225ab89cee2d55755242b053be26` |
| 53 | `lemma` | [getElem_alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/getelem-alternatingword--db56d14d2f8a3e9bed8b5c5e.md) | 422 | `result-track:db56d14d2f8a3e9bed8b5c5ee41509e31d151b3ec5513f42b3bf47f906152a4f` |
| 54 | `lemma` | [getElem_alternatingWord_swapIndices](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/getelem-alternatingword-swapindices--63c07c78e46a3a6550c80329.md) | 453 | `result-track:63c07c78e46a3a6550c80329feb596c99887fe2705580cea0f1a67719d4e114d` |
| 55 | `lemma` | [listTake_alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/listtake-alternatingword--ee21c10acd0dbfdfa644b53d.md) | 464 | `result-track:ee21c10acd0dbfdfa644b53d24f45001808e84ab000622ae7d15d34d87542add` |
| 56 | `lemma` | [listTake_succ_alternatingWord](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/listtake-succ-alternatingword--e1b6f56dc7755ce301192cf5.md) | 487 | `result-track:e1b6f56dc7755ce301192cf5ab0dac0b0741b4e9059e33b69093f54842be2a93` |
| 57 | `theorem` | [prod_alternatingWord_eq_mul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/prod-alternatingword-eq-mul-pow--c00d523f953c34bc831c86aa.md) | 497 | `result-track:c00d523f953c34bc831c86aa416687f442ef9bde91fd2be8c3c03cebc643ef77` |
| 58 | `theorem` | [prod_alternatingWord_eq_prod_alternatingWord_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/prod-alternatingword-eq-prod-alternatingword-sub--55d341e91b2781ebc227fff0.md) | 510 | `result-track:55d341e91b2781ebc227fff036670a0baa50d686a60aef9513a505874265648f` |
| 59 | `theorem` | [wordProd_braidWord_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/declarations/wordprod-braidword-eq--53ea1c33a06d4f4c34b5e481.md) | 543 | `result-track:53ea1c33a06d4f4c34b5e481ac79e2d8312010762343a5101d12d52aac9a187d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
