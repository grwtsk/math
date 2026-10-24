# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafComparison.Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42659c7da24085423f8e4ac561f1f193a50f8049",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42659c7da24085423f8e4ac561f1f193a50f8049`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.Comparison` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.ExtensiveSheaves` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.ReflectsPrecoherent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.ReflectsPreregular` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.InducedTopology` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/instance--0e1bab670c0bccf95de91a1a.md) | 43 | `declaration-track:0e1bab670c0bccf95de91a1a7ed6e1affd99903f68b5ec2ea000662bd98116bc` |
| 2 | `theorem` | [exists_effectiveEpiFamily_iff_mem_induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/exists-effectiveepifamily-iff-mem-induced--de7746a94f4cba9c983d7179.md) | 55 | `result-track:de7746a94f4cba9c983d717991edb3f82a70b025187de6e99a31e4fd64530892` |
| 3 | `lemma` | [eq_induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/eq-induced--0ac6ef9ece28731ff0b44c35.md) | 78 | `result-track:0ac6ef9ece28731ff0b44c35236abe82f9f5c492f58873f1299d3e0c5e2663d5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/instance--db015ef353abbc48bc083ad3.md) | 86 | `declaration-track:db015ef353abbc48bc083ad35a718e18637c9e8df936d1593f0f5ec0ec4f9e7e` |
| 5 | `lemma` | [coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/coverpreserving--770511aa0eb3a6dadae96498.md) | 92 | `result-track:770511aa0eb3a6dadae964985e07320d6e1e144b6a115d4bbcc1b70a13764aa3` |
| 6 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/equivalence--64cd4ecfc7b3d6be6ba3240f.md) | 110 | `declaration-track:64cd4ecfc7b3d6be6ba3240feecb1e1ce64c7ac4ae95adae307e6c69a44ce6a2` |
| 7 | `def` | [equivalence'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/equivalence--7655d434fec5463088973fc0.md) | 133 | `declaration-track:7655d434fec5463088973fc0164148ca20fc809ae1e23e4dcc91d1995af08e50` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/instance--4ede63eef37c5e753a697e51.md) | 148 | `declaration-track:4ede63eef37c5e753a697e51a41546d1390539d49422ed93d652262f4d1fef08` |
| 9 | `theorem` | [exists_effectiveEpi_iff_mem_induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/exists-effectiveepi-iff-mem-induced--029fc39742fc55ecdbbaf28b.md) | 157 | `result-track:029fc39742fc55ecdbbaf28b7f8acbe39042e17bfc480a454c3862d6013d3e1f` |
| 10 | `lemma` | [eq_induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/eq-induced--287e75326e783b360c24c6f6.md) | 176 | `result-track:287e75326e783b360c24c6f6b10539325b9c3bd1c9df9f1d325f953f1ffa060d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/instance--64ea28f292a7edce5190a377.md) | 184 | `declaration-track:64ea28f292a7edce5190a3773a1a8550606bb489684aecaa655e40992d31ee45` |
| 12 | `lemma` | [coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/coverpreserving--6d7a1293b4bbc8ce26d89580.md) | 190 | `result-track:6d7a1293b4bbc8ce26d89580f77fd02ebbd507102a912c8e0be7e18e0815fda4` |
| 13 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/equivalence--19b015f93a8add4eacf0e80e.md) | 208 | `declaration-track:19b015f93a8add4eacf0e80e125afc14a02311d324434161b76664eb861b85d0` |
| 14 | `theorem` | [isSheaf_coherent_iff_regular_and_extensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/issheaf-coherent-iff-regular-and-extensive--75427ae2a295604775ffeee3.md) | 221 | `result-track:75427ae2a295604775ffeee33e961f5816aadeccbab60df5886005fd221cb558` |
| 15 | `theorem` | [isSheaf_iff_preservesFiniteProducts_and_equalizerCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/issheaf-iff-preservesfiniteproducts-and-equalizercondition--753a48b31151da45fe4ead9f.md) | 227 | `result-track:753a48b31151da45fe4ead9fd36ed3c00dfa0821b45fc08fab4ffb852dbc6b5b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/instance--4a38cd1bfd7383225ae16c92.md) | 236 | `declaration-track:4a38cd1bfd7383225ae16c9238c1c32cba4476650748f917d7d98694796f30b8` |
| 17 | `theorem` | [isSheaf_iff_preservesFiniteProducts_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/issheaf-iff-preservesfiniteproducts-of-projective--3182f822c09e479c5ade38ed.md) | 241 | `result-track:3182f822c09e479c5ade38ed1c356b88a79b124c7d702080f42cf09e356d454b` |
| 18 | `theorem` | [isSheaf_iff_extensiveSheaf_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/issheaf-iff-extensivesheaf-of-projective--c2fc585558660536158b8813.md) | 247 | `result-track:c2fc585558660536158b8813f00d47c8282d00217b43f66fb41db0651d0907a5` |
| 19 | `def` | [coherentExtensiveEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/coherentextensiveequivalence--d234c4eef207c1bbeebbe38c.md) | 257 | `declaration-track:d234c4eef207c1bbeebbe38cd42156d2fe5b1bdbec127d9980e815b0ebf4e01a` |
| 20 | `lemma` | [isSheaf_coherent_of_hasPullbacks_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/issheaf-coherent-of-haspullbacks-comp--59a6c83c1865780ce31451bd.md) | 271 | `result-track:59a6c83c1865780ce31451bdf96c173cb0a860f06acd2a2d348f2099743a09bd` |
| 21 | `lemma` | [isSheaf_coherent_of_hasPullbacks_of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/issheaf-coherent-of-haspullbacks-of-comp--5f556898ed1828f971dc156b.md) | 279 | `result-track:5f556898ed1828f971dc156bdbb05157f1d910bde80503bbc2369fd9700f6291` |
| 22 | `lemma` | [isSheaf_coherent_of_projective_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/issheaf-coherent-of-projective-comp--5e06a93b57b1aedc69b8d09a.md) | 289 | `result-track:5e06a93b57b1aedc69b8d09a7faa234c54ea5e44736714deb8bb4a280be9ac0c` |
| 23 | `lemma` | [isSheaf_coherent_of_projective_of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/issheaf-coherent-of-projective-of-comp--263395ded5dfb4ae960ebb2c.md) | 295 | `result-track:263395ded5dfb4ae960ebb2c73e7c97df13f87927456c80f42de176a3638fcbe` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/instance--d2f8d2bc9baee2185cb82f54.md) | 302 | `declaration-track:d2f8d2bc9baee2185cb82f5446686ec2ddd14965149a9439d9931dfe288b4da2` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant118267c9f973d0f0dd28255d0d55a2b907b70702461586531cb46fb543ebf60d.lean/declarations/instance--c12682204026202c5d6358e2.md) | 307 | `declaration-track:c12682204026202c5d6358e29fe0c91167c25a1d85a15733ac13503f6e4478df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
