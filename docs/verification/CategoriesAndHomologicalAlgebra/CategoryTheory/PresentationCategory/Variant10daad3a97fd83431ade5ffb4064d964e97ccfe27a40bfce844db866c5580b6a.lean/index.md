# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresentationCategory.Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2442700247ac1988bc4ec114c8fcebebddd659cf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2442700247ac1988bc4ec114c8fcebebddd659cf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Presentation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PresentationCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean/declarations/presentationcat--6c2d82b710f83559b84ff0b4.md) | 24 | `declaration-track:6c2d82b710f83559b84ff0b439f679e9291508d4a64515516c619bc55196e0b6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean/declarations/instance--ed20aa295682317f4bfc7038.md) | 26 | `declaration-track:ed20aa295682317f4bfc7038832800ab6c795b8348cb3688a2baf654e5aeb742` |
| 3 | `def` | [castTarget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean/declarations/casttarget--08912980e9b845ab4ad2f74b.md) | 41 | `declaration-track:08912980e9b845ab4ad2f74ba29b595c63fe803eb332a68715624097237ccf49` |
| 4 | `def` | [castSource](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean/declarations/castsource--9117c9e0f52457d424d0840e.md) | 46 | `declaration-track:9117c9e0f52457d424d0840e60480dd3ded70bd572ec61ba0df9a539f877870f` |
| 5 | `theorem` | [castTarget_rfl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean/declarations/casttarget-rfl--1fea74a6df6cbf073a5c3999.md) | 51 | `result-track:1fea74a6df6cbf073a5c3999a411bb2f791eea478dc760cbf9cf9edffaa0eb3b` |
| 6 | `theorem` | [castSource_rfl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PresentationCategory/Variant10daad3a97fd83431ade5ffb4064d964e97ccfe27a40bfce844db866c5580b6a.lean/declarations/castsource-rfl--542896ccc03917c5dbdc9438.md) | 56 | `result-track:542896ccc03917c5dbdc94383ed9f024f5b4696b8ada1fcff9edfadea29b5b6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
