# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b399a361416d20f19553bc8dc2711f23ab8a0fb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b399a361416d20f19553bc8dc2711f23ab8a0fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ObjectProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/objectproperty--f356963ab46339b425f38466.md) | 40 | `declaration-track:f356963ab46339b425f384663b527f837df529dbbe56a2692fa080c5d71ef3fb` |
| 2 | `lemma` | [le_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/le-def--5da28a680d6e2c13f065c6ab.md) | 46 | `result-track:5da28a680d6e2c13f065c6abdf447957cf56376b035341376dc823f54b21a263` |
| 3 | `def` | [inverseImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/inverseimage--cfcd9b81f4057cbab01ef4e0.md) | 50 | `declaration-track:cfcd9b81f4057cbab01ef4e0719b4713be1fafb451cd7b24076553e8f4315aec` |
| 4 | `lemma` | [prop_inverseImage_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/prop-inverseimage-iff--2c03bf63d016da05b7d64106.md) | 54 | `result-track:2c03bf63d016da05b7d64106c76fa1c336a9721caef389b73e2bc83bc816888d` |
| 5 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/map--75cd3450761cc576b4061618.md) | 58 | `declaration-track:75cd3450761cc576b4061618273f94e5bb63be9aae09ae9332f717c05455f851` |
| 6 | `lemma` | [prop_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/prop-map-iff--382c6df4d7a47320bbb62d95.md) | 61 | `result-track:382c6df4d7a47320bbb62d95e5bfaf0c17c70681f29547247ed2bad90acb911f` |
| 7 | `lemma` | [prop_map_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/prop-map-obj--23897677e756f43583f01929.md) | 64 | `result-track:23897677e756f43583f019292a0dd1892e6e6e56fea5aa851dea1b9fd4c57969` |
| 8 | `class` | [Is](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/is--3c50b8de1d0085e111527198.md) | 70 | `declaration-track:3c50b8de1d0085e111527198e4b8c0b327c0ebec98a82b82c1221900857a894b` |
| 9 | `lemma` | [prop_of_is](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/prop-of-is--74bb2b6f9a0e57252a00b0f1.md) | 73 | `result-track:74bb2b6f9a0e57252a00b0f11cb3cd7d53f1cc044efd4f24d0ad7cba3120e6a6` |
| 10 | `lemma` | [is_of_prop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ac8ac1d6f3859ffcf0f6176de297c62f83a4c6035ac53a11ca86cec04526e4d.lean/declarations/is-of-prop--6abc36c6a1d2e14e28881f78.md) | 75 | `result-track:6abc36c6a1d2e14e28881f7892c4e39b342cf6cc64d9c00cf24d74aeb9ec514a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
