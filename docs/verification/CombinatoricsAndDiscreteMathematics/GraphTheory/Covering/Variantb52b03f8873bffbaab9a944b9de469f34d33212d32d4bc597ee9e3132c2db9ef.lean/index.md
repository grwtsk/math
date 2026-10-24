# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Covering.Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c30a93176b9330cffb5d95471201b1134b4c1c3",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c30a93176b9330cffb5d95471201b1134b4c1c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Cast` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Symmetric` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Sum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Quiver.Star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-star--18f8344742a0bf036eb42e36.md) | 54 | `declaration-track:18f8344742a0bf036eb42e36f073db4b89ae2c803ad34732d16ee4aaf44aa7e2` |
| 2 | `abbrev` | [Quiver.Star.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-star-mk--e7b282fe52498e118464b57a.md) | 58 | `declaration-track:e7b282fe52498e118464b57a8e3fa0c4c725a9b85896ae5acd6d0d125e30aa8b` |
| 3 | `abbrev` | [Quiver.Costar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-costar--ddcb7b84abcd44ecc490f3e5.md) | 63 | `declaration-track:ddcb7b84abcd44ecc490f3e5a06caa1b843888bf8d7ddf1c30ef82a6e650c703` |
| 4 | `abbrev` | [Quiver.Costar.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-costar-mk--3f5be0f52d56ead8d31bcff2.md) | 67 | `declaration-track:3f5be0f52d56ead8d31bcff24084a10fc3093a824da8a9fce37cd2ad3fad32a4` |
| 5 | `def` | [Prefunctor.star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-star--288254471ae87530d2f8f456.md) | 72 | `declaration-track:288254471ae87530d2f8f4566c5ca746b0068f382c730ccc729ae6a9add28087` |
| 6 | `def` | [Prefunctor.costar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-costar--71d06307ad097edede7c45b9.md) | 77 | `declaration-track:71d06307ad097edede7c45b9fd6fed3c58e8179da0514cb1a81432879a5a46e8` |
| 7 | `theorem` | [Prefunctor.star_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-star-apply--5a3a60c765769f277284b472.md) | 81 | `result-track:5a3a60c765769f277284b472586ad49fe0069c0b029a5b0633201b1787e618c3` |
| 8 | `theorem` | [Prefunctor.costar_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-costar-apply--ee4b44579bbd381f3045ee04.md) | 86 | `result-track:ee4b44579bbd381f3045ee049324051ef4f402a05e6536723aa3ec37c5330c11` |
| 9 | `theorem` | [Prefunctor.star_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-star-comp--808434f9005d3a6751f67f15.md) | 90 | `result-track:808434f9005d3a6751f67f15bc8a131b26973e7149cf0314c66a843a6285d1a0` |
| 10 | `theorem` | [Prefunctor.costar_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-costar-comp--47816565a9edf167cb04b623.md) | 93 | `result-track:47816565a9edf167cb04b623f0ea4d15daeaa0be9c4bbe2f242fdf1ab69b71ef` |
| 11 | `structure` | [Prefunctor.IsCovering](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-iscovering--08e74b7d96199725114e092a.md) | 97 | `declaration-track:08e74b7d96199725114e092a8279065f1edb2de32e6ac2a06ab3d0a94fd3b79b` |
| 12 | `theorem` | [Prefunctor.IsCovering.map_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-iscovering-map-injective--a46af0906b1ed38fb9d2ee83.md) | 102 | `result-track:a46af0906b1ed38fb9d2ee83359bcc652b361880d261a19905b3a4064cd0c40b` |
| 13 | `theorem` | [Prefunctor.IsCovering.comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-iscovering-comp--7fcf30d0a297bcdaab691da9.md) | 108 | `result-track:7fcf30d0a297bcdaab691da929414260c21f11a27a5ea97b387a9e8a8d9a324b` |
| 14 | `theorem` | [Prefunctor.IsCovering.of_comp_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-iscovering-of-comp-right--d195a69670dbd71e185e9b76.md) | 112 | `result-track:d195a69670dbd71e185e9b76f42bf8e791fc084a22d9889997a50d4c594ef81e` |
| 15 | `theorem` | [Prefunctor.IsCovering.of_comp_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-iscovering-of-comp-left--a9b62a67a2d7cc3897e5c2ff.md) | 117 | `result-track:a9b62a67a2d7cc3897e5c2ff85d74c5d01b5b0a5c002d7f70869208a0c994c10` |
| 16 | `def` | [Quiver.symmetrifyStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-symmetrifystar--3ebca5d86dbe9577550d58c1.md) | 125 | `declaration-track:3ebca5d86dbe9577550d58c1b7e807f38a0b75980e8965c2abb9c2b8164972fe` |
| 17 | `def` | [Quiver.symmetrifyCostar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-symmetrifycostar--83e02da6c794893082ec6c27.md) | 131 | `declaration-track:83e02da6c794893082ec6c27734786bd71bd15728e256db2cd73e230cebf1956` |
| 18 | `theorem` | [Prefunctor.symmetrifyStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-symmetrifystar--4c3da3882ed3d573c6a138bb.md) | 135 | `result-track:4c3da3882ed3d573c6a138bbcda5269d03f7fe42813402d2238cdf189d66645e` |
| 19 | `theorem` | [Prefunctor.symmetrifyCostar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-symmetrifycostar--11955efb60ee0bc6d1d04ae7.md) | 146 | `result-track:11955efb60ee0bc6d1d04ae779ce5b14ad00ed089c434801508f661ec386802e` |
| 20 | `theorem` | [Prefunctor.IsCovering.symmetrify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-iscovering-symmetrify--f859ad24f718a209262febf1.md) | 157 | `result-track:f859ad24f718a209262febf12f4d49eb6c2be1a642713f07e459457e6b94bed4` |
| 21 | `abbrev` | [Quiver.PathStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-pathstar--4e383c86fb8724974fc11e3d.md) | 164 | `declaration-track:4e383c86fb8724974fc11e3d734bdb9272da915da0025c318094b32b52216688` |
| 22 | `abbrev` | [Quiver.PathStar.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-pathstar-mk--4cdc9694976cc2d13aab5370.md) | 168 | `declaration-track:4cdc9694976cc2d13aab5370166fdbbc47a2546844904d596b30fc56e0fe67fa` |
| 23 | `def` | [Prefunctor.pathStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-pathstar--b595e136eb103b385f23d1c4.md) | 172 | `declaration-track:b595e136eb103b385f23d1c4f10e2ff29363ec74ed9fff96f29bf663c8ead71c` |
| 24 | `theorem` | [Prefunctor.pathStar_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-pathstar-apply--39288f39801581e211d623ad.md) | 176 | `result-track:39288f39801581e211d623addb66f845a1088cfcfaf02eb9750057282c6fb6c2` |
| 25 | `theorem` | [Prefunctor.pathStar_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-pathstar-injective--73bf0ec3d34493753dd0d83f.md) | 180 | `result-track:73bf0ec3d34493753dd0d83f2422134ab416b0959d2c23e77479e83a0f419964` |
| 26 | `theorem` | [Prefunctor.pathStar_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-pathstar-surjective--7dc7a8ab1bd83e9e1a6baa11.md) | 222 | `result-track:7dc7a8ab1bd83e9e1a6baa111abc564558aefa915d8e0ec63a1add13ea16462b` |
| 27 | `theorem` | [Prefunctor.pathStar_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-pathstar-bijective--e610efad08593ce146d2853e.md) | 243 | `result-track:e610efad08593ce146d2853e17381e455bc7053230c8906cce3e2596e7899340` |
| 28 | `theorem` | [pathStar_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/pathstar-bijective--71ba4ed2fe838ee4d230f411.md) | 251 | `result-track:71ba4ed2fe838ee4d230f411751bd723c6de1e82cd386eb37e1e3e2d37e86431` |
| 29 | `def` | [Quiver.starEquivCostar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-starequivcostar--985908a7ac0867fe158a96a2.md) | 263 | `declaration-track:985908a7ac0867fe158a96a28b78d394be675d98f739f895ce7223aa4a4ea95b` |
| 30 | `theorem` | [Quiver.starEquivCostar_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-starequivcostar-apply--62ac740c2e977899e52f5b44.md) | 270 | `result-track:62ac740c2e977899e52f5b44b2cf07be7f23c77206c34f419eb6df4a86829302` |
| 31 | `theorem` | [Quiver.starEquivCostar_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/quiver-starequivcostar-symm-apply--2edbaffe31c7df0db7e7afcf.md) | 275 | `result-track:2edbaffe31c7df0db7e7afcf2cfb3976ea449a4748f2660367dddb34086ae2db` |
| 32 | `theorem` | [Prefunctor.costar_conj_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-costar-conj-star--a74d7554ccebbe736b64a690.md) | 281 | `result-track:a74d7554ccebbe736b64a690c18ee436638797d1ae31cca05dd381ee24c78d99` |
| 33 | `theorem` | [Prefunctor.bijective_costar_iff_bijective_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-bijective-costar-iff-bijective-star--350f81005f17064a40fa1904.md) | 285 | `result-track:350f81005f17064a40fa1904aa69ed3c91256f489061c282fb99798b10a57269` |
| 34 | `theorem` | [Prefunctor.isCovering_of_bijective_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-iscovering-of-bijective-star--735092ab07272048ee1326e3.md) | 289 | `result-track:735092ab07272048ee1326e37079702e7e342849ba1d7d821b0b5c7b0cc66fc1` |
| 35 | `theorem` | [Prefunctor.isCovering_of_bijective_costar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantb52b03f8873bffbaab9a944b9de469f34d33212d32d4bc597ee9e3132c2db9ef.lean/declarations/prefunctor-iscovering-of-bijective-costar--a8c41ada9ec24923f82dad05.md) | 292 | `result-track:a8c41ada9ec24923f82dad052eea7650de2291a50bf940a7a42e2e7785dbe221` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
