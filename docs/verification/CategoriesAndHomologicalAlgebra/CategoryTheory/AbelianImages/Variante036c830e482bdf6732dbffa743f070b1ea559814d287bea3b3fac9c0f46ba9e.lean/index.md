# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AbelianImages.Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d3fe13354ee4cdd7a40ebbf753a85f569096e18",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d3fe13354ee4cdd7a40ebbf753a85f569096e18`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Images` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreservesImage.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservesimage-iso--eedc0b77ba57b147b896b304.md) | 31 | `declaration-track:eedc0b77ba57b147b896b30419527f54af3ecb19809dc35ca2e7750c17250ba9` |
| 2 | `theorem` | [PreservesImage.iso_hom_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservesimage-iso-hom--30fd02985f9aa32d2a054b8c.md) | 35 | `result-track:30fd02985f9aa32d2a054b8c65af6387f905eafbfc93e534ad506f84e8e899a2` |
| 3 | `theorem` | [PreservesImage.factorThruImage_iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservesimage-factorthruimage-iso-hom--f5ca09ffaa5da928acbf868b.md) | 40 | `result-track:f5ca09ffaa5da928acbf868b13ef99a51a5ae4a65861af29bcea9f460936bdac` |
| 4 | `theorem` | [PreservesImage.iso_inv_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservesimage-iso-inv--e9404fe4cdd512c2d1a406d1.md) | 46 | `result-track:e9404fe4cdd512c2d1a406d1381006d21b13ed4f800f02e2a854e2381de15fe2` |
| 5 | `theorem` | [PreservesImage.factorThruImage_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservesimage-factorthruimage-iso-inv--bee30a233c40f779a652ee26.md) | 51 | `result-track:bee30a233c40f779a652ee2634c954896bdbcd2a5a9cf56feb8f39bc66323a53` |
| 6 | `def` | [PreservesCoimage.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservescoimage-iso--2b4a6e35d0525ad6d1fd5f54.md) | 57 | `declaration-track:2b4a6e35d0525ad6d1fd5f544252d3f97446d7a9bd850919f2b7faf20c5c38f9` |
| 7 | `theorem` | [PreservesCoimage.iso_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservescoimage-iso-hom--dd253d432544bbe8d3417d2d.md) | 61 | `result-track:dd253d432544bbe8d3417d2d76c7d163ed6dc7d5699b2b85179d19f17ad8efa4` |
| 8 | `theorem` | [PreservesCoimage.factorThruCoimage_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservescoimage-factorthrucoimage-iso-inv--9a9027beb486cf7871972d93.md) | 66 | `result-track:9a9027beb486cf7871972d937b120e8428b89f28e0918e577cbeb291febe3508` |
| 9 | `theorem` | [PreservesCoimage.factorThruCoimage_iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservescoimage-factorthrucoimage-iso-hom--b18fe553ce713840383ebe35.md) | 72 | `result-track:b18fe553ce713840383ebe352354b861c2cd50657865166c5853033e9c355092` |
| 10 | `theorem` | [PreservesCoimage.iso_inv_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservescoimage-iso-inv--9e3945ebb1736350b55b6e17.md) | 78 | `result-track:9e3945ebb1736350b55b6e177dbc79e5f695fdcfb0436adf14879d634486ad12` |
| 11 | `theorem` | [PreservesCoimage.hom_coimageImageComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservescoimage-hom-coimageimagecomparison--25a3f2ce4a868ecb20f4caa2.md) | 82 | `result-track:25a3f2ce4a868ecb20f4caa2940fa7f5ef76f7501857a7a8773d6741b416ff50` |
| 12 | `def` | [PreservesCoimageImageComparison.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e.lean/declarations/preservescoimageimagecomparison-iso--8967fcf9cfe0cf2634f54c1b.md) | 90 | `declaration-track:8967fcf9cfe0cf2634f54c1b55357ac807bf100b1c4a6b867bab5f3774ca0126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
