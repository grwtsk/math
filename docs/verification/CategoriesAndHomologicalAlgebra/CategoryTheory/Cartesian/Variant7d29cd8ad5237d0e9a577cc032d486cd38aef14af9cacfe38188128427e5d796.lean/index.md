# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9b362f5947479e760ca8a8f51c1e7657f0b26c9",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9b362f5947479e760ca8a8f51c1e7657f0b26c9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.HomLift` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/iscartesian--7177d9b879849d110e54bdfc.md) | 56 | `declaration-track:7177d9b879849d110e54bdfcae821fb5e77e3640032c3ba22bc2d5893f20ef67` |
| 2 | `class` | [IsStronglyCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/isstronglycartesian--48b1001832fb27ba82396bc4.md) | 70 | `declaration-track:48b1001832fb27ba82396bc47b775768770e6cfbb8275986d8a1669dc4620b37` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/map--9533f4adb8379b3fdd179619.md) | 87 | `declaration-track:9533f4adb8379b3fdd179619d8ba92f351e253ee42a3565b12e3c26756bb3a50` |
| 4 | `instance` | [map_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/map-ishomlift--97219e447cb92bab84b3be8b.md) | 90 | `declaration-track:97219e447cb92bab84b3be8b410bc8aeb84711e7231dedea445f4e69a8948dea` |
| 5 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/fac--4a55271635447e0e8870d594.md) | 94 | `result-track:4a55271635447e0e8870d5944bba633b920e0e70a752386964b542b9c6596d98` |
| 6 | `lemma` | [map_uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/map-uniq--095cd0d6133eee16bc2dae99.md) | 100 | `result-track:095cd0d6133eee16bc2dae997f11d04f6659b48c437dab5858b01325c02f89c1` |
| 7 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/ext--22b8fc1c1f9036602ae2a160.md) | 109 | `result-track:22b8fc1c1f9036602ae2a160edc0d3d6bee1aa37517502d0e60eee31a8bc22a6` |
| 8 | `lemma` | [map_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/map-self--b018237c8e517ca5c82fafea.md) | 114 | `result-track:b018237c8e517ca5c82fafea34b9e4464823c02aeffe8aaf0acd0d22ba85b563` |
| 9 | `def` | [domainUniqueUpToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/domainuniqueuptoiso--e6ad249b9fc09228a4c2f98b.md) | 122 | `declaration-track:e6ad249b9fc09228a4c2f98bf4c2ed286eb9b566f91ea0c041c2d1e6632d52c6` |
| 10 | `instance` | [domainUniqueUpToIso_inv_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/domainuniqueuptoiso-inv-ishomlift--20d722b28e4b916abf018da4.md) | 134 | `declaration-track:20d722b28e4b916abf018da4d9f06d3798ba6c79eb178a897ea1fca0f922beb0` |
| 11 | `instance` | [domainUniqueUpToIso_hom_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/domainuniqueuptoiso-hom-ishomlift--fda7143ee3ecaa937dadb221.md) | 138 | `declaration-track:fda7143ee3ecaa937dadb221db74d06a4b702e1e948a8fdae19b100a423c5f76` |
| 12 | `instance` | [of_iso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/of-iso-comp--016c3b977f7fb6fb0ef72903.md) | 143 | `declaration-track:016c3b977f7fb6fb0ef72903af766191f2e17df69a6a57c2169f3875d13c056c` |
| 13 | `instance` | [of_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/of-comp-iso--bc1be7a14cc97056df16f9e1.md) | 155 | `declaration-track:bc1be7a14cc97056df16f9e1ed783977e15ad5cf01a3ab2ad24868e6e374eb20` |
| 14 | `lemma` | [universal_property](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/universal-property--f808712dc0d5b01bbb029a48.md) | 177 | `result-track:f808712dc0d5b01bbb029a48bf9e0bc55e4d96d8cca77929c2b8b44a9b32a150` |
| 15 | `instance` | [isCartesian_of_isStronglyCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/iscartesian-of-isstronglycartesian--e2cf945af3e9da0be539b31a.md) | 183 | `declaration-track:e2cf945af3e9da0be539b31a1f43ed63866a3714583b8d520f6d158c81dfda78` |
| 16 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/map--f096ed04e5b6d768f9b91222.md) | 200 | `declaration-track:f096ed04e5b6d768f9b9122279ee452081639aaa3fe47a9a6b7e7e0bafb17332` |
| 17 | `instance` | [map_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/map-ishomlift--8a56fa4f7a9ea3e9c6373915.md) | 203 | `declaration-track:8a56fa4f7a9ea3e9c637391534520eec028a95b298eb37af597bb0ae9e81fa73` |
| 18 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/fac--fbb8012b50a1fa816e354a75.md) | 207 | `result-track:fbb8012b50a1fa816e354a7598babae702f492f837c786280581b25e31b4254e` |
| 19 | `lemma` | [map_uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/map-uniq--7b17ed1bcb19d465f370bc64.md) | 219 | `result-track:7b17ed1bcb19d465f370bc644e0fc124626f816e9e9f37d30c25944cc0f5b884` |
| 20 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/ext--b365bc2df32476ac634cd06c.md) | 233 | `result-track:b365bc2df32476ac634cd06c9506d4c524b1f9003ee4be7a3d191d101e132786` |
| 21 | `lemma` | [map_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/map-self--4a3fb473d78202445d514e1f.md) | 238 | `result-track:4a3fb473d78202445d514e1f6d58e5f65f26e195844e03fb586e84b7d1d3cd1f` |
| 22 | `lemma` | [map_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/map-comp-map--42bc160152f116a80ec0b38b.md) | 269 | `result-track:42bc160152f116a80ec0b38b18e02503f2df2622f9a63c3eb1529567a2f46d45` |
| 23 | `instance` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/comp--ad1749451af6acaff1d17518.md) | 291 | `declaration-track:ad1749451af6acaff1d175187b9d172264938a71891b9f1d653872c8a1723cab` |
| 24 | `lemma` | [of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/of-comp--7c1a1438b3128d7c41b33f7a.md) | 311 | `result-track:7c1a1438b3128d7c41b33f7a9183c099e4fcb4a9ea7aa0dac515b38662a923f8` |
| 25 | `instance` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/of-iso--1d81ebc19f42a47537b556fe.md) | 334 | `declaration-track:1d81ebc19f42a47537b556fe0388e5392285c04e42bddec90d6231c171467bdf` |
| 26 | `instance` | [of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/of-isiso--b7cf37ec67288be34494a445.md) | 341 | `declaration-track:b7cf37ec67288be34494a4454a92c49f9c68cb60cbb7b0e9a1869ffd9b1e64de` |
| 27 | `lemma` | [isIso_of_base_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/isiso-of-base-isiso--c7477d619e1f25c462f3ca9f.md) | 345 | `result-track:c7477d619e1f25c462f3ca9f892a2208ab634e88075aa95da4b4e3ae8e84dc48` |
| 28 | `def` | [domainIsoOfBaseIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/domainisoofbaseiso--1ae506a8a93b89ec6d455217.md) | 369 | `declaration-track:1ae506a8a93b89ec6d455217059b4f1ddbf11de59eb28030a1d2550fc680637d` |
| 29 | `instance` | [domainUniqueUpToIso_inv_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/domainuniqueuptoiso-inv-ishomlift--cbf26370a9be016c60e59673.md) | 377 | `declaration-track:cbf26370a9be016c60e59673479e8d132daeb9d0a75f2f25f78d843a6d1a9fa1` |
| 30 | `instance` | [domainUniqueUpToIso_hom_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7d29cd8ad5237d0e9a577cc032d486cd38aef14af9cacfe38188128427e5d796.lean/declarations/domainuniqueuptoiso-hom-ishomlift--d020a0c0045add98848aa550.md) | 382 | `declaration-track:d020a0c0045add98848aa55043694facaf8f4690982b283d06c37f9652e163b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
