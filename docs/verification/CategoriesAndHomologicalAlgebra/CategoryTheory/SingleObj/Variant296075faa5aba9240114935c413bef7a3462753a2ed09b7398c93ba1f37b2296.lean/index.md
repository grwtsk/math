# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e1a059fe67577eb3f5b08c121c21e66591b699",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e1a059fe67577eb3f5b08c121c21e66591b699`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Endomorphism` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.SingleObj` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SingleObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/singleobj--6c57b1819519b51ce9116b43.md) | 47 | `declaration-track:6c57b1819519b51ce9116b430ae03b2a5b96af95afb426ff05102c65bb7f3d4e` |
| 2 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/categorystruct--fdc7d6a98d7c95b15424fd87.md) | 56 | `declaration-track:fdc7d6a98d7c95b15424fd87e97a654310e774fe23f5751b8a85da3220883dc4` |
| 3 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/category--be884c9fe248ddfb3bd6448f.md) | 64 | `declaration-track:be884c9fe248ddfb3bd6448f7d48fbcba96f4e9e08441bffce3d8c6c691ce3ca` |
| 4 | `theorem` | [id_as_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/id-as-one--ea3804e556f37c0913b18c2b.md) | 71 | `result-track:ea3804e556f37c0913b18c2b7075ad755ff627cb2dc256821bb08997291cb868` |
| 5 | `theorem` | [comp_as_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/comp-as-mul--2204f76bf066202e98152aa3.md) | 75 | `result-track:2204f76bf066202e98152aa3a874f0b596bd472f305cfac5ac07923248568aaa` |
| 6 | `instance` | [groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/groupoid--0cc74c15da6346ce46ebe0c7.md) | 83 | `declaration-track:0cc74c15da6346ce46ebe0c7efbebbbbc220efb730ec3510451a534bf5dcbfc2` |
| 7 | `theorem` | [inv_as_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/inv-as-inv--d5b30a44a11853f9d4c5911d.md) | 90 | `result-track:d5b30a44a11853f9d4c5911d9d2b2ff20c8e001784abe70664a0932da5a3794e` |
| 8 | `abbrev` | [star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/star--211b1d231d7cbe60c9a5abe6.md) | 98 | `declaration-track:211b1d231d7cbe60c9a5abe6f4435cd4dbe4f3408c30a891506ecb5d4549280d` |
| 9 | `def` | [toEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/toend--89a3ec057165d36099afe471.md) | 104 | `declaration-track:89a3ec057165d36099afe4718bdebe7efbc471ebf8d44bc995de697103642279` |
| 10 | `theorem` | [toEnd_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/toend-def--44ddc6bc560f4b86a2e4f1ab.md) | 108 | `result-track:44ddc6bc560f4b86a2e4f1ab9bd685fb278e3400df82853fba9b30733b72fbd5` |
| 11 | `def` | [mapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/maphom--b0909b077441f045584d0c6b.md) | 119 | `declaration-track:b0909b077441f045584d0c6ba2edbc609a3abd13fcdda34955fa7043efc8eed3` |
| 12 | `theorem` | [mapHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/maphom-id--43c406182adedee48edc2c57.md) | 134 | `result-track:43c406182adedee48edc2c5788f359cc5968b05186534573db565f0c15c934d0` |
| 13 | `theorem` | [mapHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/maphom-comp--05d9b1a3528db50413e76b07.md) | 138 | `result-track:05d9b1a3528db50413e76b076e79b9bc2b225ac19628cbd90b5954027f85c2f6` |
| 14 | `def` | [differenceFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/differencefunctor--feff82dd552acafc721d394b.md) | 146 | `declaration-track:feff82dd552acafc721d394be27f1a17379550d10b29ca44bc97455e304b5bda` |
| 15 | `def` | [toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/tofunctor--e7067bfd2d2b8a2e46952caa.md) | 170 | `declaration-track:e7067bfd2d2b8a2e46952caab7819c2b8ebbd47c6d0b3d182cb34f5e16b194b8` |
| 16 | `theorem` | [id_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/id-tofunctor--786714da4e999bc28280eba2.md) | 176 | `result-track:786714da4e999bc28280eba295bafbbecb057f6bb3add990734c9b0b51537822` |
| 17 | `theorem` | [comp_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/comp-tofunctor--d6bf4d8dae41ff3d99fbc681.md) | 181 | `result-track:d6bf4d8dae41ff3d99fbc68158aa59f919b69cfdc1a5ec88179e2957967970a2` |
| 18 | `def` | [toAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/toaut--aac45a096a17916f9c42893f.md) | 196 | `declaration-track:aac45a096a17916f9c42893f7deb2df57cc4163903d9b3714ae72b26378a91fc` |
| 19 | `theorem` | [toAut_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/toaut-hom--ed0d82f73cc002df92327168.md) | 203 | `result-track:ed0d82f73cc002df92327168dca7bd4dfee58a3d03d634c2e335921c0d29cbcb` |
| 20 | `theorem` | [toAut_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/toaut-inv--f0580f414bd4b46a292a5f6b.md) | 209 | `result-track:f0580f414bd4b46a292a5f6b71c9c8cf2c20197d88d2e7e15abeac2e8bcff590` |
| 21 | `def` | [toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/tocat--dcb5c96dea4c580805cfc564.md) | 221 | `declaration-track:dcb5c96dea4c580805cfc564498ca91c81ae4327ac93b414f741362f45f90229` |
| 22 | `instance` | [toCatFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/tocatfull--127e074081d0dc31453d3299.md) | 227 | `declaration-track:127e074081d0dc31453d3299ba0f40eb7a7b7478ab44c6235af4fc04f7b98083` |
| 23 | `instance` | [toCat_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant296075faa5aba9240114935c413bef7a3462753a2ed09b7398c93ba1f37b2296.lean/declarations/tocat-faithful--cc5de0a9dc91a458b3d69050.md) | 233 | `declaration-track:cc5de0a9dc91a458b3d690505375acca281c7c692a9a3b1f22ba19a12c755dc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
