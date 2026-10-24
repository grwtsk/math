# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Constructors.Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88bcf15636c887111b8f5d021d3744ed9d486c6a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88bcf15636c887111b8f5d021d3744ed9d486c6a`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHomProperties` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AffineTargetMorphismProperty.diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/affinetargetmorphismproperty-diagonal--762a3d9ee822f8784887ec7e.md) | 46 | `declaration-track:762a3d9ee822f8784887ec7e5fe5b2782239c9f2072ab5671e4ee7daf845f3c5` |
| 2 | `instance` | [AffineTargetMorphismProperty.diagonal_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/affinetargetmorphismproperty-diagonal-respectsiso--63518a769b036d021234299d.md) | 52 | `declaration-track:63518a769b036d021234299d8a1965be1d6638e663ea67e64666434aec28168e` |
| 3 | `theorem` | [HasAffineProperty.diagonal_of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/hasaffineproperty-diagonal-of-opencover--39864a04f27144c93160e2fa.md) | 63 | `result-track:39864a04f27144c93160e2fab2d1ecff585033097b465d9202c6cda4784cbca9` |
| 4 | `theorem` | [HasAffineProperty.diagonal_of_openCover_diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/hasaffineproperty-diagonal-of-opencover-diagonal--8aa120564f3527d5de4a3092.md) | 86 | `result-track:8aa120564f3527d5de4a3092674f3119ba1ed7adb5828ae45c040e84062f0b22` |
| 5 | `theorem` | [HasAffineProperty.diagonal_of_diagonal_of_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/hasaffineproperty-diagonal-of-diagonal-of-ispullback--f96750c5cd503eea401e9c78.md) | 94 | `result-track:f96750c5cd503eea401e9c789a0ec6d39f7ed7d9a6b1cb30c72f0d709ac2d1d8` |
| 6 | `theorem` | [HasAffineProperty.diagonal_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/hasaffineproperty-diagonal-iff--ed46a49a7bc020595f9b9d4d.md) | 110 | `result-track:ed46a49a7bc020595f9b9d4dc33e229ed211508e4b6dbfdaedcc9553ea491e06` |
| 7 | `instance` | [HasAffineProperty.diagonal_affineProperty_isLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/hasaffineproperty-diagonal-affineproperty-islocal--1bd74155ec11fc6676438572.md) | 122 | `declaration-track:1bd74155ec11fc667643857249111c6bf29ae316bd29eaffe920f2c9d3770a17` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/instance--63d86948048ef2ffc606d224.md) | 139 | `declaration-track:63d86948048ef2ffc606d2241f831a00ed93cf9ef293d583121c9f933d2a96db` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/instance--7a6483ec759ff22eae2bd3b8.md) | 150 | `declaration-track:7a6483ec759ff22eae2bd3b8b7dd341c15cc6fcaf42b48ee5dbcb7c2202b5703` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/instance--d7e039d8bcb5605c2ca93822.md) | 155 | `declaration-track:d7e039d8bcb5605c2ca93822e4a52f44e31b5b6d2818ec7decba337f6ce6587b` |
| 11 | `theorem` | [universally_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/universally-islocalattarget--56f58a21ee6081c78cd57e19.md) | 175 | `result-track:56f58a21ee6081c78cd57e19e9802dd5db8a1e437e03a239a68cb59a818c4152` |
| 12 | `lemma` | [universally_isLocalAtSource](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/universally-islocalatsource--b6412452a93af163e3e074ea.md) | 195 | `result-track:b6412452a93af163e3e074ea85c086a36d8d47785518dfb147bd4b6aa6016fd2` |
| 13 | `def` | [topologically](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/topologically--de745bd177bef53199d1e828.md) | 217 | `declaration-track:de745bd177bef53199d1e828feb09ea8b444d180a1e868520dd2835d7731669a` |
| 14 | `lemma` | [topologically_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/topologically-isstableundercomposition--e283cdcf15ef6bebdd7fe21d.md) | 225 | `result-track:e283cdcf15ef6bebdd7fe21d68757ad8369ea7f6b2ff7f91859211d34fed6079` |
| 15 | `lemma` | [topologically_iso_le](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/topologically-iso-le--4290d9f30016371da660229a.md) | 235 | `result-track:4290d9f30016371da660229a6339cf7f8bac034e40e34b9208cdd79176130f24` |
| 16 | `lemma` | [topologically_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/topologically-respectsiso--c062ffeadc245be854a02718.md) | 244 | `result-track:c062ffeadc245be854a02718260075db6473a538376b5c4550f713c733876a20` |
| 17 | `lemma` | [topologically_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/topologically-islocalattarget--a98c53cd1df99dd0ebd6b5f3.md) | 255 | `result-track:a98c53cd1df99dd0ebd6b5f398bed633e6da9304f4e725a20c9e8569aec28052` |
| 18 | `lemma` | [topologically_isLocalAtTarget'](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/topologically-islocalattarget--f4f373e160b95d3109b9a047.md) | 273 | `result-track:f4f373e160b95d3109b9a047cae6b2d58e4d3badb30a1722107b7869da56053f` |
| 19 | `lemma` | [topologically_isLocalAtSource](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/topologically-islocalatsource--9ba904644650e06d6ebbcdc7.md) | 284 | `result-track:9ba904644650e06d6ebbcdc717fc77500249f230b3958f039c8b00438fb88b6e` |
| 20 | `lemma` | [topologically_isLocalAtSource'](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/topologically-islocalatsource--01c7f39b1b39673cde854ae1.md) | 299 | `result-track:01c7f39b1b39673cde854ae10ae245ddbb7e385a4a8aaa618fae0df9bddc7c53` |
| 21 | `def` | [stalkwise](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/stalkwise--168ee0abb1968a3d106dc7b8.md) | 313 | `declaration-track:168ee0abb1968a3d106dc7b808808d58364f404d70281182b0f3e178f43decda` |
| 22 | `lemma` | [stalkwise_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/stalkwise-respectsiso--98106055db13124899a0c71c.md) | 322 | `result-track:98106055db13124899a0c71c20e696af45ab2257e87f3c72c5913bf3670e22da` |
| 23 | `lemma` | [stalkwiseIsLocalAtTarget_of_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/stalkwiseislocalattarget-of-respectsiso--c61dfc6d5ef920561d20ffc8.md) | 336 | `result-track:c61dfc6d5ef920561d20ffc8bc22fa6341d4e6df014ae4108b4ce6937303e74e` |
| 24 | `lemma` | [stalkwise_isLocalAtSource_of_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/stalkwise-islocalatsource-of-respectsiso--111a26058cf35c162fe940b6.md) | 352 | `result-track:111a26058cf35c162fe940b651ae362f17658bc81610a4aee29f61decdcee2de` |
| 25 | `lemma` | [stalkwise_Spec_map_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/stalkwise-spec-map-iff--de3fa474936c68e7db92e959.md) | 365 | `result-track:de3fa474936c68e7db92e959d60c4848d94d7596c42a9d33579cbeb61bce46bf` |
| 26 | `lemma` | [isStableUnderBaseChange_of_isStableUnderBaseChangeOnAffine_of_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/declarations/isstableunderbasechange-of-isstableunderbasechangeonaffine-of-islocalatt--c30b4c013c2ad98ba95684ca.md) | 381 | `result-track:c30b4c013c2ad98ba95684cab7dd9b13bea8973f73ebfe1b950baa1228e62763` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
