# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteSublattice.Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "830fa69bd83d4be2ee223f93eee5574941d02031",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `830fa69bd83d4be2ee223f93eee5574941d02031`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Functor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Sublattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompleteSublattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/completesublattice--f9627ba7e413d9a32b46a1e8.md) | 41 | `declaration-track:f9627ba7e413d9a32b46a1e8160762a2063f5d6fe8b0a6e88cf683e5d8362796` |
| 2 | `def` | [mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/mk--86ca4a151e70609849efdc17.md) | 51 | `declaration-track:86ca4a151e70609849efdc179a66a43e4ac2aea11d114e7a6893319ed8ca132e` |
| 3 | `instance` | [instSetLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/instsetlike--4b888ea799762a745e7f9ed4.md) | 67 | `declaration-track:4b888ea799762a745e7f9ed4f9b2fe0524ccdec9502a9f45048b08a073909a70` |
| 4 | `instance` | [instBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/instbot--158376c4af5fb54b6c6c413b.md) | 71 | `declaration-track:158376c4af5fb54b6c6c413b37022d531129f7220c0aac69fdbc30d63e2eae5b` |
| 5 | `instance` | [instTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/insttop--a315844c5a43f058841fa998.md) | 74 | `declaration-track:a315844c5a43f058841fa998623ce8c84d08ac81a9c20c4ca44bfd01b4c410c3` |
| 6 | `instance` | [instSupSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/instsupset--9ebd9e1415f3199bf0a80538.md) | 77 | `declaration-track:9ebd9e1415f3199bf0a8053897efa2b0c7fe3fcf894521450418491c076cee1e` |
| 7 | `instance` | [instInfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/instinfset--f4ce57407f8dcd1fc7730fc8.md) | 80 | `declaration-track:f4ce57407f8dcd1fc7730fc8e781f46226623e1525548b69c15a83277bf0bbc0` |
| 8 | `theorem` | [sSupClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/ssupclosed--6ec160eccc28c81f82185d19.md) | 83 | `result-track:6ec160eccc28c81f82185d19a6626aa1b975a6331b74b5f7650d368560cd6310` |
| 9 | `theorem` | [sInfClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/sinfclosed--629ef96a12689c9b45299d42.md) | 85 | `result-track:629ef96a12689c9b45299d42439c7865ec41a061d39c368db6dc7104be5f49c8` |
| 10 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/coe-bot--8f9ae28b96f016e98fd93ba6.md) | 87 | `result-track:8f9ae28b96f016e98fd93ba6bb6b7b3ff7bbbfb192f5075a38bb4c5081a2a12b` |
| 11 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/coe-top--0cc3cead78edca7141ab5a6e.md) | 89 | `result-track:0cc3cead78edca7141ab5a6ec80daa3a1d005f8783ea49e959582d1963820fde` |
| 12 | `theorem` | [coe_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/coe-ssup--afc02dded8526b5d1f524b0d.md) | 91 | `result-track:afc02dded8526b5d1f524b0d45ae55b80ca9a68402546e502f543e1cf152efe4` |
| 13 | `theorem` | [coe_sSup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/coe-ssup--2163e02858508e482f966db1.md) | 93 | `result-track:2163e02858508e482f966db1d6d006417aa874e73ba85bde177fca7ca875d486` |
| 14 | `theorem` | [coe_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/coe-sinf--f8cc6c25959f28e0c76d507e.md) | 96 | `result-track:f8cc6c25959f28e0c76d507e378c3e27a1fedf011874d8aa3ce8b8b37bbc4305` |
| 15 | `theorem` | [coe_sInf'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/coe-sinf--3c6541e4294b7769d29d706f.md) | 98 | `result-track:3c6541e4294b7769d29d706f7bd68b8a3fc038ef6ada94b5beb74f1c620c00e1` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/instance--ae4876e76e267dccbf0a76be.md) | 102 | `declaration-track:ae4876e76e267dccbf0a76bebcb23af0df47f6fbdde271f779ce12194431db98` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/instance--ed0904adf41da340c143282e.md) | 103 | `declaration-track:ed0904adf41da340c143282e187bb10054ea105fbcc19a33dd80fd7176d5c4de` |
| 18 | `instance` | [instCompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/instcompletelattice--e37d9acd7c3c4fb30bb26546.md) | 105 | `declaration-track:e37d9acd7c3c4fb30bb26546dc59c0a234e88b779e6d0a544507a668f98b7c5a` |
| 19 | `def` | [subtype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/subtype--01785904c4de1f2a7e2257e5.md) | 110 | `declaration-track:01785904c4de1f2a7e2257e524a2d40e9605054410ff5d6a4357ea7f2ae6a0e2` |
| 20 | `lemma` | [coe_subtype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/coe-subtype--1e2ae38f79c1696e15bfde1e.md) | 115 | `result-track:1e2ae38f79c1696e15bfde1ea943996d55b4816fe5995dd2ce0bea67faedf0c0` |
| 21 | `lemma` | [subtype_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/subtype-apply--27c11360456a208c9f0e86c2.md) | 116 | `result-track:27c11360456a208c9f0e86c24808988ca55ef130f703982e3d314e436536709b` |
| 22 | `lemma` | [subtype_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/subtype-injective--780536214f7a2e77cbd7e73e.md) | 118 | `result-track:780536214f7a2e77cbd7e73e2d073017340fb74059d2619bc740b7e25c44fa7f` |
| 23 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/map--fc53b0977eeb8ddfaf0701fe.md) | 123 | `declaration-track:fc53b0977eeb8ddfaf0701fe7e6e0629fc567da0a35b67ceebeddaa3e058b66b` |
| 24 | `theorem` | [mem_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/mem-map--e7c4656c92fb9a49778367b5.md) | 136 | `result-track:e7c4656c92fb9a49778367b5bb15ab5e3b40cf1b2ec2dd8241a46e2cd3a19c1d` |
| 25 | `def` | [comap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/comap--e2608e0698f7cce7d154b59b.md) | 139 | `declaration-track:e2608e0698f7cce7d154b59bd846d85ab8d853bd4019398f9c02414c963fd346` |
| 26 | `theorem` | [mem_comap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/mem-comap--4f634698635b3814e24efc4d.md) | 148 | `result-track:4f634698635b3814e24efc4d2d002e02cbded3621a3f43dc0340fbfe0aeac7c4` |
| 27 | `lemma` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/disjoint-iff--7814ac81051339432d520f6a.md) | 150 | `result-track:7814ac81051339432d520f6a7efc6ce619c120fe276482f379528987dc024068` |
| 28 | `lemma` | [codisjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/codisjoint-iff--12928facf4316f10a1529a69.md) | 155 | `result-track:12928facf4316f10a1529a69db55332e558fc8043a52fd32ef3b20cf1c0ca80c` |
| 29 | `lemma` | [isCompl_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/iscompl-iff--6308e24da21b7408e80d86aa.md) | 160 | `result-track:6308e24da21b7408e80d86aa17e3eef0e59a8f4301fbdaa929d01f301afd9c56` |
| 30 | `lemma` | [isComplemented_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/iscomplemented-iff--4ad22fe12e9079f1a0181aa1.md) | 164 | `result-track:4ad22fe12e9079f1a0181aa1ac9f14f79b34194bf2d15a673e05539af62e76b5` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/instance--b78959c29811964c640a981f.md) | 171 | `declaration-track:b78959c29811964c640a981f37407cae82e1470fc1e1582312beb67d4d8a388e` |
| 32 | `def` | [copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/copy--75852f5b137fa83f68ffd818.md) | 177 | `declaration-track:75852f5b137fa83f68ffd81858ceddbec4606f17e4f58564d3d5aed5b45a74d7` |
| 33 | `lemma` | [coe_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/coe-copy--fa1c9adfa223abf80b35e2af.md) | 180 | `result-track:fa1c9adfa223abf80b35e2af1f0bd2284ebc8a5f680a237d924f2fa2566c8519` |
| 34 | `lemma` | [copy_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/copy-eq--a795bf63cf029540df4861d1.md) | 182 | `result-track:a795bf63cf029540df4861d19c4b5025c2ab01868a5b51ad3374ee3d24c220e8` |
| 35 | `def` | [range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/range--5e4a5cb7974c6bd75b34dbd6.md) | 191 | `declaration-track:5e4a5cb7974c6bd75b34dbd634ed82837d7791efe5429cc18ccdf587ba5ca304` |
| 36 | `theorem` | [range_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/range-coe--fea7a8ea7470dbf28178fcc9.md) | 194 | `result-track:fea7a8ea7470dbf28178fcc90e55ce6c5c2d8a1a040fcf6b45bd3e2e5c757181` |
| 37 | `def` | [toOrderIsoRangeOfInjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteSublattice/Variantef02692a8d17dd6a749f961c9825ee16db12c02fc4431da57063eaa3296bf750.lean/declarations/toorderisorangeofinjective--7e83f826d2ff0150486879ec.md) | 197 | `declaration-track:7e83f826d2ff0150486879ec26a358def1cc718668e5afa645c5e9f3af7c9b9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
