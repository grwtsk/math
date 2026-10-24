# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Free.Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "350eaeba8cc3f9941c8fd232ed0f04768eb16fbf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `350eaeba8cc3f9941c8fd232ed0f04768eb16fbf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Adjunctions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/declarations/freeobj--ebf45272b0f6eac9056a9a0d.md) | 38 | `declaration-track:ebf45272b0f6eac9056a9a0da3ca6084bb7bef01a32543999353ca333e7ce6a6` |
| 2 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/declarations/free--d1b2805054d29a35b0b7e0de.md) | 45 | `declaration-track:d1b2805054d29a35b0b7e0de75d28bc9b4b71f22d26a13c30b056bcd672a5f7d` |
| 3 | `def` | [freeObjDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/declarations/freeobjdesc--88a1648d6940780e03f197e3.md) | 64 | `declaration-track:88a1648d6940780e03f197e3100d446b260ca92a78eac3e3847fd80aecfb7c9a` |
| 4 | `def` | [freeAdjunctionUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/declarations/freeadjunctionunit--909b13c6ef7467ef89bd08ff.md) | 74 | `declaration-track:909b13c6ef7467ef89bd08ff7821ac996428a694297624d3e868c4ffb4ccf90d` |
| 5 | `def` | [freeHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/declarations/freehomequiv--41a7356dca7ae8070495fdcd.md) | 80 | `declaration-track:41a7356dca7ae8070495fdcdc99f3ca5fde6f4e9078a07009f060106a305d3da` |
| 6 | `lemma` | [free_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/declarations/free-hom-ext--bb91d078bcd02aa27cffb0d0.md) | 86 | `result-track:bb91d078bcd02aa27cffb0d0ffb07ba3154bf4804afc5cc25da0a754e73fe1b2` |
| 7 | `def` | [freeAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/declarations/freeadjunction--3f329ebef76e4f0b584028a0.md) | 94 | `declaration-track:3f329ebef76e4f0b584028a0bab87aff4fbfe1de93e422d223472371fa412608` |
| 8 | `lemma` | [freeAdjunction_homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/declarations/freeadjunction-homequiv--6cb339686985d867bf0b3444.md) | 104 | `result-track:6cb339686985d867bf0b3444f46b5a1be020d2034dbedf6d4b7d9052c68dd71c` |
| 9 | `lemma` | [freeAdjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantc295827d473c6366c5d9896d635c008fc4ad4c20a2da439d4931e984e9d9813e.lean/declarations/freeadjunction-unit-app--89da5d0ba435fa781b1267db.md) | 109 | `result-track:89da5d0ba435fa781b1267db9c41f78b3554e3619f4206e621c08c4ab3a6b30d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
