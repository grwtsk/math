# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "587b5e562a1e3f696b91943fb6c286fd7e5d61c2",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `587b5e562a1e3f696b91943fb6c286fd7e5d61c2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.TotalComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GradedObject.Bifunctor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapBifunctorHomologicalComplexObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctorhomologicalcomplexobj--78bfacfe1e7e380f273ad6a4.md) | 41 | `declaration-track:78bfacfe1e7e380f273ad6a45756417189241eaf752f08d524f2c7d46a96bd96` |
| 2 | `def` | [mapBifunctorHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctorhomologicalcomplex--3ebae2b5d466985b10550d93.md) | 76 | `declaration-track:3ebae2b5d466985b10550d9345b05c155fb94843d7a844bfe3bdcda2938d9f68` |
| 3 | `lemma` | [mapBifunctorHomologicalComplex_obj_obj_toGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctorhomologicalcomplex-obj-obj-togradedobject--59d5437a9d705ff77d4083a2.md) | 89 | `result-track:59d5437a9d705ff77d4083a25cf8b1f2b8676890c2eb177313a04a2f75b663d1` |
| 4 | `abbrev` | [HasMapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/hasmapbifunctor--33bdfbe9de7ab8e1fad783f3.md) | 109 | `declaration-track:33bdfbe9de7ab8e1fad783f378bc8bb5a1a03393b48ed08df74f70796aae4465` |
| 5 | `abbrev` | [mapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctor--0876cda326ef5f69a2cbd309.md) | 117 | `declaration-track:0876cda326ef5f69a2cbd309e5b29c709057424e5a54ffa03b4959ca0b386307` |
| 6 | `abbrev` | [ιMapBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctor--9ca4d5f1b944f28bebca9111.md) | 121 | `declaration-track:9ca4d5f1b944f28bebca91110a3de6823d84f59df9e85f5c9ec0ec3b50c5e51c` |
| 7 | `abbrev` | [ιMapBifunctorOrZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctororzero--a1b43b6eecb6880c30e9b5a8.md) | 127 | `declaration-track:a1b43b6eecb6880c30e9b5a877e3954fe28a4ead019910830ab15c0b9169e19a` |
| 8 | `lemma` | [ιMapBifunctorOrZero_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctororzero-eq--3d4f3ce6dae94c0923baf879.md) | 131 | `result-track:3d4f3ce6dae94c0923baf879d51cab7d7265ea7f12165db182d2127c4bb0c6bd` |
| 9 | `lemma` | [ιMapBifunctorOrZero_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctororzero-eq-zero--922c59748d37323d9021435f.md) | 135 | `result-track:922c59748d37323d9021435fae545ea0d007eae0efa5c4e8f2feb136098970a0` |
| 10 | `def` | [mapBifunctorDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctordesc--b98b90e9f002aa8ea2a26c35.md) | 147 | `declaration-track:b98b90e9f002aa8ea2a26c357925a158ca57ef02573fe9bbda5a8f0154797e7e` |
| 11 | `lemma` | [ι_mapBifunctorDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctordesc--c28af829015dd30e44d4f5a1.md) | 151 | `result-track:c28af829015dd30e44d4f5a1d1b70d6550035a2b13bd4eae4059c9a90774169f` |
| 12 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/hom-ext--7d3b0e12504f3787bbeb8228.md) | 161 | `result-track:7d3b0e12504f3787bbeb82282eff2c8214c6427701f5bcc780f181a35073a65e` |
| 13 | `def` | [D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d--3c670c8bd2810cafbbb172c5.md) | 172 | `declaration-track:3c670c8bd2810cafbbb172c5d84589304b042b7b8418122a146147b8a6775d85` |
| 14 | `def` | [D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d--0f91c155391ab78380bfe392.md) | 177 | `declaration-track:0f91c155391ab78380bfe392b5a7af55becf08ab070d38144a4a353ed890596a` |
| 15 | `lemma` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d-eq--8dd8a1e5523e7a9efd678718.md) | 181 | `result-track:8dd8a1e5523e7a9efd678718e18831c0140a8e8a1d0703ea01780e9e53c335d6` |
| 16 | `def` | [d₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d--73b84346e1b10cf6431a8812.md) | 191 | `declaration-track:73b84346e1b10cf6431a8812fd6e854e2073b70eac1183d6ef83fb22ddff883e` |
| 17 | `def` | [d₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d--ac767e323e833f4f492fb77c.md) | 196 | `declaration-track:ac767e323e833f4f492fb77c2d0674100bc7e18d62d795a37f836806e863253e` |
| 18 | `lemma` | [d₁_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d-eq-zero--3b3fc41f59d1ba0f56255a69.md) | 200 | `result-track:3b3fc41f59d1ba0f56255a6949eab8b5d7c6a5787f70f27167fe88f855106ed8` |
| 19 | `lemma` | [d₂_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d-eq-zero--878ea22af9db623d7c09346a.md) | 204 | `result-track:878ea22af9db623d7c09346a192a751ac8e5bc8ed38edc4b9c470e9df3d845d0` |
| 20 | `lemma` | [d₁_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d-eq-zero--fa6e09977270254f1ecc11d9.md) | 208 | `result-track:fa6e09977270254f1ecc11d95865f4e6f4ab75514da6b4a50a55fa44b05d2433` |
| 21 | `lemma` | [d₂_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d-eq-zero--7b588d9ba8908766048d9aa5.md) | 213 | `result-track:7b588d9ba8908766048d9aa5c0a9b8509a9f86459ef6499519cb1d72f0aa0566` |
| 22 | `lemma` | [d₁_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d-eq--d7386d08e5049cfb6eef2c34.md) | 218 | `result-track:d7386d08e5049cfb6eef2c34fa0d953043a6c17170149b33790ef932edc1b531` |
| 23 | `lemma` | [d₂_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d-eq--7532b2a5443815d992f832c1.md) | 223 | `result-track:7532b2a5443815d992f832c19b145a195b0a4a975806647d701cc9afaeb29474` |
| 24 | `lemma` | [d₁_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d-eq--3b27418635540159628fda4f.md) | 228 | `result-track:3b27418635540159628fda4f82009574d75daf8ed38a2c6f0545f8b3c8c4a380` |
| 25 | `lemma` | [d₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d-eq--bb1b45d3a643b5c96b19b5e7.md) | 234 | `result-track:bb1b45d3a643b5c96b19b5e74cdd4248acc973ecbeeac28025bfc30a418b50a8` |
| 26 | `lemma` | [ι_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d--c762ef3c4102aee674e580e3.md) | 247 | `result-track:c762ef3c4102aee674e580e31ff1b3a0932e3837ba7fc10e033767f30f9b8074` |
| 27 | `lemma` | [ι_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/d--7b1fba44bd98f76e4512b506.md) | 252 | `result-track:7b1fba44bd98f76e4512b50665988c7c9a0c539aca4f09de15acf4572676c975` |
| 28 | `def` | [mapBifunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctormap--084ad2e45e548cac4544e4e2.md) | 266 | `declaration-track:084ad2e45e548cac4544e4e2cd87f851e2968c30cbcd2b04ca7fa89e0d696e2a` |
| 29 | `lemma` | [ι_mapBifunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/declarations/mapbifunctormap--37f1bd087f9738353d097229.md) | 271 | `result-track:37f1bd087f9738353d09722922035a4d9ab39340b7fefcd61accf8f64364ac4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
