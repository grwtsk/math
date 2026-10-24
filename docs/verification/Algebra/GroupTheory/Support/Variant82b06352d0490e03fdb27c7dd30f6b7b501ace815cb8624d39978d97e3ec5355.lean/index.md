# Verification target: GRWTSK.Algebra.GroupTheory.Support.Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "314faf7e738c9bb2a712546939952b618ddd36c7",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `314faf7e738c9bb2a712546939952b618ddd36c7`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulSupport](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport--9e1d48be1d40f877b200fee3.md) | 39 | `declaration-track:9e1d48be1d40f877b200fee3d66b04d4d60021ecf4ed659fa9bf54ca7f166cc0` |
| 2 | `theorem` | [mulSupport_eq_preimage](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-eq-preimage--a6fb08f968317d720701ac68.md) | 42 | `result-track:a6fb08f968317d720701ac68968f714d25639f224450366e910b8fa8bacd3e6c` |
| 3 | `theorem` | [notMem_mulSupport](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/notmem-mulsupport--abf6bca76709821a045e6b34.md) | 46 | `result-track:abf6bca76709821a045e6b3470d16e0d4140ff98075a1eebb8caeba309117352` |
| 4 | `theorem` | [compl_mulSupport](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/compl-mulsupport--75b708e221a8011f809e91df.md) | 55 | `result-track:75b708e221a8011f809e91df067839f5403dcfb53911eb0b997694b073782383` |
| 5 | `theorem` | [mem_mulSupport](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mem-mulsupport--d29151f825ae1bd4464f77f6.md) | 59 | `result-track:d29151f825ae1bd4464f77f6febce9046cdef6b1d34902601059b0ec6c10c80d` |
| 6 | `theorem` | [mulSupport_subset_iff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-subset-iff--e844c218ae713aac33329ff8.md) | 63 | `result-track:e844c218ae713aac33329ff8c5f898bdc82c13adf5fab1731e4955a09711b3da` |
| 7 | `theorem` | [mulSupport_subset_iff'](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-subset-iff--2f7023fca0d02f8cb6cd44fc.md) | 67 | `result-track:2f7023fca0d02f8cb6cd44fc8e8f70aba9c1867512bbc94e5a2eb463614be587` |
| 8 | `theorem` | [mulSupport_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-eq-iff--231b06f6e45fc817a564c3a6.md) | 72 | `result-track:231b06f6e45fc817a564c3a6c118d8ccb97879f23216ed0c3054c196229c4084` |
| 9 | `theorem` | [ext_iff_mulSupport](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/ext-iff-mulsupport--4b31cb14ed5805719503d44b.md) | 78 | `result-track:4b31cb14ed5805719503d44b9f2af84c9464c8cf07f32c5064bbbbb3350762a0` |
| 10 | `theorem` | [mulSupport_update_of_ne_one](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-update-of-ne-one--fd2d07fd21db22969343fd24.md) | 85 | `result-track:fd2d07fd21db22969343fd24a091b873b6273c1c38ad1a39b126590d2e06c063` |
| 11 | `theorem` | [mulSupport_update_one](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-update-one--bec15f6c5ef8ac4856970ddd.md) | 90 | `result-track:bec15f6c5ef8ac4856970ddd08baf0ccefd1572d11cf83dd88ebd846b3a102b2` |
| 12 | `theorem` | [mulSupport_update_eq_ite](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-update-eq-ite--a7f9bd5353693bb3ea277c49.md) | 95 | `result-track:a7f9bd5353693bb3ea277c49eabffa248ad81cadfe81c9831a0c46ff53ff8560` |
| 13 | `theorem` | [mulSupport_extend_one_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-extend-one-subset--7d738839e4fdb13acba80594.md) | 100 | `result-track:7d738839e4fdb13acba80594fc40083f53b54284cecf696cc4fe1592728b551f` |
| 14 | `theorem` | [mulSupport_extend_one](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-extend-one--613ce2c03a1636e56ff0d5bb.md) | 110 | `result-track:613ce2c03a1636e56ff0d5bb41caa2a843f4980edd779849a35c42c6e103c5dc` |
| 15 | `theorem` | [mulSupport_disjoint_iff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-disjoint-iff--883d08a504212854c1f83fdf.md) | 116 | `result-track:883d08a504212854c1f83fdfda04ca8d1ccd553d4b371ce5ad4a8c38bdf456a5` |
| 16 | `theorem` | [disjoint_mulSupport_iff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/disjoint-mulsupport-iff--cbbb26f99cd1b327f8705a53.md) | 122 | `result-track:cbbb26f99cd1b327f8705a5302d85e56bb006d4ff45157e4e1802c17a8fa7dec` |
| 17 | `theorem` | [mulSupport_eq_empty_iff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-eq-empty-iff--a458e568ff6151095c947248.md) | 127 | `result-track:a458e568ff6151095c9472489392dc665c83e21b479a09c58bbfc34ddd81ab04` |
| 18 | `theorem` | [mulSupport_nonempty_iff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-nonempty-iff--9c38df30d33980aaefbbd432.md) | 132 | `result-track:9c38df30d33980aaefbbd43283432d8ce659e2440bfca93856ad7f4c6cb19563` |
| 19 | `theorem` | [range_subset_insert_image_mulSupport](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/range-subset-insert-image-mulsupport--38cc2ca71336805ba230f422.md) | 136 | `result-track:38cc2ca71336805ba230f422fe0c589042ea3a97f79e778175e79e2d68fb26b5` |
| 20 | `lemma` | [range_eq_image_or_of_mulSupport_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/range-eq-image-or-of-mulsupport-subset--e2ca990b328c9af9d0046034.md) | 142 | `result-track:e2ca990b328c9af9d004603470d6f6ce96a2ed82ada15d67d33de9723c898516` |
| 21 | `theorem` | [mulSupport_one'](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-one--b4b75882f009d6364d8a2f02.md) | 152 | `result-track:b4b75882f009d6364d8a2f02c9347a425396c40caffdb925a39e7b3ef3a29af5` |
| 22 | `theorem` | [mulSupport_one](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-one--99f23aaf22f4dfa92e65dd53.md) | 156 | `result-track:99f23aaf22f4dfa92e65dd534c2ac99254005e2fc39f91410a3aa6bf08141c2a` |
| 23 | `theorem` | [mulSupport_const](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-const--0cf097c00c6e9adeb5c371ab.md) | 160 | `result-track:0cf097c00c6e9adeb5c371abea77c04a5c3cbfeb8eb895f31ecdb89c81d8c1a9` |
| 24 | `theorem` | [mulSupport_binop_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-binop-subset--647c3de6f261eb4a93a7955b.md) | 165 | `result-track:647c3de6f261eb4a93a7955b1d5b456835bff0c93f8ebfc5411f5eb020f77163` |
| 25 | `theorem` | [mulSupport_comp_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-comp-subset--0c8cf8a9b0773fc2da505d2b.md) | 170 | `result-track:0c8cf8a9b0773fc2da505d2b0ecc3e78739112d02033c236c9296d443f5aa0fd` |
| 26 | `theorem` | [mulSupport_subset_comp](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-subset-comp--8cd361904d13e874a2cef169.md) | 174 | `result-track:8cd361904d13e874a2cef169b1bcf4e2929c28d207e8b4f2f574e9a275d82ba1` |
| 27 | `theorem` | [mulSupport_comp_eq](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-comp-eq--ebbb0639ac7ede823697872f.md) | 178 | `result-track:ebbb0639ac7ede823697872fd733a99a3a5e2d3abfa81e27747d00f87a4d1528` |
| 28 | `theorem` | [mulSupport_comp_eq_of_range_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-comp-eq-of-range-subset--68eb6d818958af02c0258f55.md) | 183 | `result-track:68eb6d818958af02c0258f5524958d93318d08bcd669bda0eec975c1bd0c89bb` |
| 29 | `theorem` | [mulSupport_comp_eq_preimage](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-comp-eq-preimage--93a0c2af09db56fa8187dcd3.md) | 189 | `result-track:93a0c2af09db56fa8187dcd3d77e2da2bb670ca569e01f0a3e3258a644c42c15` |
| 30 | `theorem` | [mulSupport_prod_mk](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-prod-mk--1976a75e17c64e7e7a475039.md) | 194 | `result-track:1976a75e17c64e7e7a475039425def84e9ada7e8f2d567e1dd7a9fa318855f0a` |
| 31 | `theorem` | [mulSupport_prod_mk'](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-prod-mk--d24f760709634e189e26df90.md) | 200 | `result-track:d24f760709634e189e26df90e2961415314f35f7516603b8c8d872a2fa1c7878` |
| 32 | `theorem` | [mulSupport_along_fiber_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-along-fiber-subset--72b5be759131259eca61c1f5.md) | 205 | `result-track:72b5be759131259eca61c1f5c61069f0c6b249c312d6e5117f4db51823b160b9` |
| 33 | `theorem` | [mulSupport_curry](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-curry--1d5efc4ae9968e985bdf3c0f.md) | 210 | `result-track:1d5efc4ae9968e985bdf3c0f52a1bb516ce9380530d29626b95c7cb6949d1629` |
| 34 | `theorem` | [mulSupport_curry'](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-curry--38ca85e2b320fd6923cb03c1.md) | 215 | `result-track:38ca85e2b320fd6923cb03c123c526b1f9aff5df1889a46964bad9e30a09b0a4` |
| 35 | `theorem` | [mulSupport_mul](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-mul--722e17ae759b1356683d5118.md) | 222 | `result-track:722e17ae759b1356683d5118386cf1f7c656ca1b412096cc185202b8d6fc4c65` |
| 36 | `theorem` | [mulSupport_pow](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-pow--2040852ef6663fe8b11be245.md) | 227 | `result-track:2040852ef6663fe8b11be2454273e580a882752d3551d9d0f226360b33eba512` |
| 37 | `theorem` | [mulSupport_inv](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-inv--8cc456838e0afae95853d840.md) | 239 | `result-track:8cc456838e0afae95853d8400277c343a58ea9bbc6296c44a769bdd721616219` |
| 38 | `theorem` | [mulSupport_inv'](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-inv--948148a77c28e2780e6e1bbf.md) | 243 | `result-track:948148a77c28e2780e6e1bbf833df647646d8b6d57abc8517ef7763add6f39cb` |
| 39 | `theorem` | [mulSupport_mul_inv](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-mul-inv--7c996d549dba38b766442963.md) | 247 | `result-track:7c996d549dba38b766442963ebbe595847ec07d0bfcbc36b3d58d21cd2b588bd` |
| 40 | `theorem` | [mulSupport_div](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-div--9a0ce31cf5bc67416c73bfd5.md) | 251 | `result-track:9a0ce31cf5bc67416c73bfd53f250b34c10d84219de387cef38ca5888f885dd6` |
| 41 | `theorem` | [image_inter_mulSupport_eq](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/image-inter-mulsupport-eq--3bb5fd2d09fc71181dcc5a56.md) | 265 | `result-track:3bb5fd2d09fc71181dcc5a5649b2630b8b57c0b0bf7f9173f243136924aa1353` |
| 42 | `theorem` | [mulSupport_mulSingle_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-mulsingle-subset--af47b481d6d685630c184158.md) | 278 | `result-track:af47b481d6d685630c1841586963504595a37fd3a4a8762799024c98de1549d7` |
| 43 | `theorem` | [mulSupport_mulSingle_one](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-mulsingle-one--aa4a36046c037d4af1f07de5.md) | 282 | `result-track:aa4a36046c037d4af1f07de5f2410f9704fadf581d5236c20d6d2f6e1fefc03d` |
| 44 | `theorem` | [mulSupport_mulSingle_of_ne](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-mulsingle-of-ne--7f14305890ae47cd9e626343.md) | 285 | `result-track:7f14305890ae47cd9e626343854bcc0d17fba999809e47e9be7152688d6bc38f` |
| 45 | `theorem` | [mulSupport_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-mulsingle--a6bfd5b42fafa4541fc90dc3.md) | 290 | `result-track:a6bfd5b42fafa4541fc90dc3e6d653c89eac1b357574c0ed97aee6acbe00a4b2` |
| 46 | `theorem` | [mulSupport_mulSingle_disjoint](../../../../../mathematics/Algebra/GroupTheory/Support/Variant82b06352d0490e03fdb27c7dd30f6b7b501ace815cb8624d39978d97e3ec5355.lean/declarations/mulsupport-mulsingle-disjoint--0d2e403799636e75cc97ca92.md) | 294 | `result-track:0d2e403799636e75cc97ca928e04706874be48e2ded49a6a2d84945139e4e475` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
