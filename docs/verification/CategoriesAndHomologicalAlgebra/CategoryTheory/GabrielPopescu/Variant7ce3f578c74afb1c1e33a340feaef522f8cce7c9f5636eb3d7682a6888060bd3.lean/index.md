# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GabrielPopescu.Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fca6aff0f68fb1457332ff9a3ec2ebeff6a73e8a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fca6aff0f68fb1457332ff9a3ec2ebeff6a73e8a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Injective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Connected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Coseparator` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Preserves` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.LiftToFinset` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/instance--0d83dec92f7a3321622538dc.md) | 42 | `declaration-track:0d83dec92f7a3321622538dc760c8bb567df0b31c9d34ed969455583d1d78996` |
| 2 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/tensorobj--87d69f020ff07ad671b589ca.md) | 46 | `declaration-track:87d69f020ff07ad671b589ca4efd3d20e0eb9576faa7be2bb2c1c00d9d5303ad` |
| 3 | `def` | [tensorObjPreadditiveCoyonedaObjAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/tensorobjpreadditivecoyonedaobjadjunction--3055fb688e0f51a7c6bbda8d.md) | 50 | `declaration-track:3055fb688e0f51a7c6bbda8d4ac01485a9e1d032fdf4c7ffd9d4e29867d868c8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/instance--3fd8160932609c44d4484082.md) | 54 | `declaration-track:3fd8160932609c44d4484082d0aceae3fceb1ae89c0fef184ec1dcb0f9483030` |
| 5 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/d--086ed258ce6235917911587d.md) | 62 | `declaration-track:086ed258ce6235917911587de5d4a93951946957b71124dc997d6d06ff55377a` |
| 6 | `theorem` | [ι_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/d--18a775c03d725081549f2547.md) | 67 | `result-track:18a775c03d725081549f254702636225c55174eb960ec05e604f62a94078348d` |
| 7 | `theorem` | [kernel_ι_d_comp_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/kernel-d-comp-d--2b6f3a766c10a0d28dedaa29.md) | 73 | `result-track:2b6f3a766c10a0d28dedaa29f17978941c7cfffc7057fbb823ad8db3be62c9fc` |
| 8 | `theorem` | [exists_d_comp_eq_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/exists-d-comp-eq-d--6edcb2353066b3a9cc2cdb2d.md) | 93 | `result-track:6edcb2353066b3a9cc2cdb2da83879037424a5f6b02d87682224461fdcd74fd9` |
| 9 | `theorem` | [GabrielPopescu.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/gabrielpopescu-full--c84f9be12c6bda0bef754196.md) | 110 | `result-track:c84f9be12c6bda0bef754196bb44ced848cecf1245b34196bc759d4456c04e16` |
| 10 | `theorem` | [GabrielPopescu.preservesInjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/gabrielpopescu-preservesinjectiveobjects--b91d3669f7bea3cf25190b37.md) | 119 | `result-track:b91d3669f7bea3cf25190b37e99f00b66c60153cf00253e6497614cf663241af` |
| 11 | `theorem` | [GabrielPopescu.preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Variant7ce3f578c74afb1c1e33a340feaef522f8cce7c9f5636eb3d7682a6888060bd3.lean/declarations/gabrielpopescu-preservesfinitelimits--0bf0407f1039b892a3634f54.md) | 137 | `result-track:0bf0407f1039b892a3634f542b5ce6696b84e532247fb607ab2e946e672071d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
