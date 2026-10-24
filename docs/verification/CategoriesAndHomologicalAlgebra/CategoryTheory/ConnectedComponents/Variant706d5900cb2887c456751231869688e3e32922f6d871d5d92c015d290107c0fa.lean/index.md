# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConnectedComponents.Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "414ea026c12d4d68480cbb0c6abdd86158bf7348",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `414ea026c12d4d68480cbb0c6abdd86158bf7348`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sigma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FullSubcategory` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConnectedComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/connectedcomponents--de563ff754fecd556da62179.md) | 43 | `declaration-track:de563ff754fecd556da6217967107b3bca1820703bd729435e327c85226ef4d2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--04edf03797f2947e3b87347c.md) | 47 | `declaration-track:04edf03797f2947e3b87347c888cdb3d1246e3098212b6c21c31d5606ade8c06` |
| 3 | `def` | [Component](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/component--11c1686a503bc12fbfca96f0.md) | 51 | `declaration-track:11c1686a503bc12fbfca96f0fdbca494c3a6eccce75d5fde00c4a200fe61bfaa` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--02318b136ed2f59f2ce8c881.md) | 55 | `declaration-track:02318b136ed2f59f2ce8c8817c735cbc7d7f6a5dd143952b99b03b99931ef992` |
| 5 | `def` | [Component.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/component--2210b30a35f00ef857efa8fb.md) | 61 | `declaration-track:2210b30a35f00ef857efa8fb6c24ce4926c86d21223a74e21fe4c94dfd9a7ae7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--79bdd8d574512a456c42d040.md) | 65 | `declaration-track:79bdd8d574512a456c42d040a79e7bd062c6b8b7ba49702b920863ffccc1c502` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--12c68484b34602c67df1a03b.md) | 68 | `declaration-track:12c68484b34602c67df1a03bc1d6a084d6238fa1c9a365848a2d4991858cc3f3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--3eb0bbe7be32c4d94536448f.md) | 72 | `declaration-track:3eb0bbe7be32c4d94536448f839b39ab332214504f6bbe36a989da35c0e8a7ac` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--4a0bed03a50ea77611c35c31.md) | 76 | `declaration-track:4a0bed03a50ea77611c35c3108d2bf4ecd69de04c8ba47073215d8921aa818fb` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--226045ab2ce424a66d76b3c6.md) | 80 | `declaration-track:226045ab2ce424a66d76b3c635c5ba6eef3a8ac50e5e4f2eb0b9d94f15085159` |
| 11 | `abbrev` | [Decomposed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/decomposed--a9644aec2918c6a50dfe8699.md) | 108 | `declaration-track:a9644aec2918c6a50dfe86993f8ad6ba8bb9d4fde126d85c45949da692a00667` |
| 12 | `abbrev` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/inclusion--8ded64515f86f342cf82ac2d.md) | 117 | `declaration-track:8ded64515f86f342cf82ac2dce246c28723f5b781ef54eb4b31149ad680996fc` |
| 13 | `def` | [decomposedTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/decomposedto--9004ddc24c05add08cbcdb66.md) | 124 | `declaration-track:9004ddc24c05add08cbcdb660c73a13fcee49838d152c6357a3b39e7401d7d6a` |
| 14 | `theorem` | [inclusion_comp_decomposedTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/inclusion-comp-decomposedto--405498b0b486d576dafa06c0.md) | 129 | `result-track:405498b0b486d576dafa06c0ae655829307e2b0f063578ec8db87c6a0ce010bf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--7a265ca3e19ac08cf360d288.md) | 134 | `declaration-track:7a265ca3e19ac08cf360d288bd3ae0200b964bccb63ba48031006151e2d4ee2f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--5b45d8f34f550e6badde27fa.md) | 152 | `declaration-track:5b45d8f34f550e6badde27fabeab2d61de8e54833ca5bbdfe5152fe9775ba7a5` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--c5a67b59d57559fdcd5d35a3.md) | 157 | `declaration-track:c5a67b59d57559fdcd5d35a3703db4a2cd13577151168e0b3e562295bd6ec96f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/instance--1c4039ac40d5408f99158d0b.md) | 159 | `declaration-track:1c4039ac40d5408f99158d0b62005f7605c9446abf54eec3f9f28199cac2b840` |
| 19 | `def` | [decomposedEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConnectedComponents/Variant706d5900cb2887c456751231869688e3e32922f6d871d5d92c015d290107c0fa.lean/declarations/decomposedequiv--685bdb40bcede228bd58d2e1.md) | 165 | `declaration-track:685bdb40bcede228bd58d2e18d7e19153ea300ae34cf188b3e9930f6d2bcf3e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
