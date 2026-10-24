# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomotopyCategory.Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "996ccaff2ffce753ca916b6b1321119705eb6ee8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `996ccaff2ffce753ca916b6b1321119705eb6ee8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homotopic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homotopic--8dd1a4fbc17ef11cb03b46e5.md) | 37 | `declaration-track:8dd1a4fbc17ef11cb03b46e5d5c62a4136eb0a87db120f10d5cedf46c603ea41` |
| 2 | `instance` | [homotopy_congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homotopy-congruence--ac75a35fee24f4c08819fdb6.md) | 40 | `declaration-track:ac75a35fee24f4c08819fdb62a51ee6e14d1c2a94b4ca40f8021938311f654b4` |
| 3 | `def` | [HomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homotopycategory--77075389279bd773db773ae0.md) | 51 | `declaration-track:77075389279bd773db773ae04a9e76516dfd8c2760d55826fb849ef5e80e3b37` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/instance--d44b517bab4b3b222c9d4f3e.md) | 55 | `declaration-track:d44b517bab4b3b222c9d4f3e4330463b853addf88d4b5d13628a269c390c0bb2` |
| 5 | `def` | [quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/quotient--01b981bfb19cf4fc32cfa2a3.md) | 63 | `declaration-track:01b981bfb19cf4fc32cfa2a37580353475b458ceaeede6637463fa898137199b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/instance--181b851e84a5362277693f22.md) | 70 | `declaration-track:181b851e84a5362277693f22ebbd669e56b66899528fc1db782be7ba2cad40bb` |
| 7 | `theorem` | [quotient_obj_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/quotient-obj-as--675c6cfa684ea40190f716af.md) | 77 | `result-track:675c6cfa684ea40190f716afd39d35d5a3c57e4d5e0b68c64a3ad3bff12a12d7` |
| 8 | `theorem` | [quotient_map_out](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/quotient-map-out--81d48faebc7a53c22538bdc5.md) | 82 | `result-track:81d48faebc7a53c22538bdc5ddc23d2ddd32dec7c80c087caa735f8d6a3992c6` |
| 9 | `theorem` | [quot_mk_eq_quotient_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/quot-mk-eq-quotient-map--e53f37c7aa03d52ce5ae7c00.md) | 87 | `result-track:e53f37c7aa03d52ce5ae7c00ec7586bf917f9d14db27847f9a184030ccfb86b0` |
| 10 | `theorem` | [eq_of_homotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/eq-of-homotopy--965184c51d3e4ce76fe75034.md) | 90 | `result-track:965184c51d3e4ce76fe7503454eac6abc5444186156c26dde714a88bccfdee32` |
| 11 | `def` | [homotopyOfEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homotopyofeq--b5aaa79811fa3ef0aa71b78e.md) | 96 | `declaration-track:b5aaa79811fa3ef0aa71b78efeadff3ee538cde7778e6abf9190597aa08876ee` |
| 12 | `def` | [homotopyOutMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homotopyoutmap--e0950f1b9933d674ef147c3a.md) | 104 | `declaration-track:e0950f1b9933d674ef147c3ac7b37fa287ee814b14d5b0639323e1388c403f40` |
| 13 | `theorem` | [quotient_map_out_comp_out](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/quotient-map-out-comp-out--5a82b9ca424fa6b5ccac4747.md) | 111 | `result-track:5a82b9ca424fa6b5ccac47473ee35524f8896d25be00942ff250904daca8f1b7` |
| 14 | `def` | [isoOfHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/isoofhomotopyequiv--a919ba6cb97f087bd49993c1.md) | 117 | `declaration-track:a919ba6cb97f087bd49993c1cf0dba8fd668c8b39bed0b1dd824619bb43cdd58` |
| 15 | `def` | [homotopyEquivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homotopyequivofiso--e870baea2f55ebba2391ae03.md) | 131 | `declaration-track:e870baea2f55ebba2391ae039ac06eb85f4a715a2e165199e8a7118e5077b54c` |
| 16 | `def` | [homologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homologyfunctor--52a008e7c2708df9f94ee1e0.md) | 147 | `declaration-track:52a008e7c2708df9f94ee1e091f5b66c53031aafca09d44069fac7c54cd52d06` |
| 17 | `def` | [homologyFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homologyfactors--a1e5f36a1c5e9d1d1345331c.md) | 153 | `declaration-track:a1e5f36a1c5e9d1d1345331cadbc66486e4fcd292ad076b5a06cdd84b67019ee` |
| 18 | `theorem` | [homologyFactors_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homologyfactors-hom-app--8a47866d839bf3d8ef202ed0.md) | 159 | `result-track:8a47866d839bf3d8ef202ed0f51ac75b98c7a1f430669fe5088accf3b6a333f9` |
| 19 | `theorem` | [homologyFactors_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homologyfactors-inv-app--fdb5510465041edc88b6b62f.md) | 165 | `result-track:fdb5510465041edc88b6b62fcaec9c338ec577559fdf30e52b14b47b33f914ee` |
| 20 | `theorem` | [homologyFunctor_map_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/homologyfunctor-map-factors--7a95d86003ec98e3b53cf54e.md) | 170 | `result-track:7a95d86003ec98e3b53cf54e032ab95fc51732ba8ef0e02af1262c0b759dba32` |
| 21 | `def` | [Functor.mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/functor-maphomotopycategory--7b27191b2e11ba3d6b2615cc.md) | 185 | `declaration-track:7b27191b2e11ba3d6b2615cc0ecab1c3731d727bd1920639921371a1ccc37097` |
| 22 | `lemma` | [Functor.mapHomotopyCategory_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/functor-maphomotopycategory-map--859b8c8b89301ad5349fd8d0.md) | 193 | `result-track:859b8c8b89301ad5349fd8d0c110761472eaefa8f58f19a3ec95a7964dca5df9` |
| 23 | `def` | [NatTrans.mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/nattrans-maphomotopycategory--e10acee02272ad58ed6a8a5e.md) | 205 | `declaration-track:e10acee02272ad58ed6a8a5ed4e154cc0df170988e579965ee3d6025db8a11d3` |
| 24 | `theorem` | [NatTrans.mapHomotopyCategory_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/nattrans-maphomotopycategory-id--c3d834560d2c766d46a07780.md) | 215 | `result-track:c3d834560d2c766d46a07780d85183d4bb76b4aa6d1df2a028929618e12231be` |
| 25 | `theorem` | [NatTrans.mapHomotopyCategory_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/declarations/nattrans-maphomotopycategory-comp--125dd8294954d9f2af27e84e.md) | 220 | `result-track:125dd8294954d9f2af27e84e6908d0eeec715d8401fc59700fdf3dc0a7bf5c95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
