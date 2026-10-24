# Verification target: GRWTSK.Geometry.AlgebraicGeometry.AffineAnd.Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ae0f593f51dc0954b5bce2b10aa3d37ecc288f5`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/affineand--270f7700137a6776a595bfd5.md) | 41 | `declaration-track:270f7700137a6776a595bfd519ad128bfee9244579a6787c3f8a0e46c185036e` |
| 2 | `lemma` | [affineAnd_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/affineand-apply--9003c0d1eb673488311e07b0.md) | 45 | `result-track:9003c0d1eb673488311e07b0fa2a2e703857c3770a03dff76399f49ef3ab6dd4` |
| 3 | `lemma` | [affineAnd_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/affineand-respectsiso--17d0962433218e1756187d5e.md) | 55 | `result-track:17d0962433218e1756187d5ef63506c5e042d4f54b7e478cd7b4c0ffe69e73ce` |
| 4 | `lemma` | [affineAnd_isLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/affineand-islocal--f55b15130aafda9cff02b427.md) | 65 | `result-track:f55b15130aafda9cff02b42760241f7a61cf33e992a881315ceeb011f8c34115` |
| 5 | `lemma` | [affineAnd_isLocal_of_propertyIsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/affineand-islocal-of-propertyislocal--6a5fdcb35b386b2c8a331b28.md) | 104 | `result-track:6a5fdcb35b386b2c8a331b289ab544beb93a5368f15aab1a103f440367f4d01a` |
| 6 | `lemma` | [affineAnd_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/affineand-isstableunderbasechange--0419b8039e7be520008efde3.md) | 109 | `result-track:0419b8039e7be520008efde3fe3763a9fe488089030c7a00a19887a6e7efd0e0` |
| 7 | `lemma` | [targetAffineLocally_affineAnd_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/targetaffinelocally-affineand-iff--aac37bf109bcbc3200b1915f.md) | 118 | `result-track:aac37bf109bcbc3200b1915fa28a68ab0be83a0bac60638a777f89e6c56e370d` |
| 8 | `lemma` | [targetAffineLocally_affineAnd_iff'](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/targetaffinelocally-affineand-iff--6824a8f9dcee1fb17f946cff.md) | 135 | `result-track:6824a8f9dcee1fb17f946cff6850140957b443b00cd42887e13c0a035f1447df` |
| 9 | `lemma` | [targetAffineLocally_affineAnd_iff_affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/targetaffinelocally-affineand-iff-affinelocally--27bb942f6cf98aba8a8b2c54.md) | 143 | `result-track:27bb942f6cf98aba8a8b2c545304ae4d2afabde95fb345e2659a79a971262e0b` |
| 10 | `lemma` | [targetAffineLocally_affineAnd_eq_affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/targetaffinelocally-affineand-eq-affinelocally--a573cc69168348e4b46e33bc.md) | 171 | `result-track:a573cc69168348e4b46e33bcb07686ad383b6ade4c8540ccb88118fdbd997ff4` |
| 11 | `lemma` | [targetAffineLocally_affineAnd_le](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/targetaffinelocally-affineand-le--3276eec5575752c226a9984a.md) | 179 | `result-track:3276eec5575752c226a9984a98c6cf5d9fb506477e38f1fee46af8992f07aad3` |
| 12 | `lemma` | [HasAffineProperty.affineAnd_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/hasaffineproperty-affineand-isstableundercomposition--94e58fab2039221efb7177f0.md) | 193 | `result-track:94e58fab2039221efb7177f0de741524e2429acf079ed770dfb6ee5c6e65227b` |
| 13 | `lemma` | [HasAffineProperty.affineAnd_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/hasaffineproperty-affineand-isstableunderbasechange--94fcd2231d81fb3f36f9c806.md) | 212 | `result-track:94fcd2231d81fb3f36f9c8062196f271c4b1d8238243ad802096c9f9e923ce8e` |
| 14 | `lemma` | [HasAffineProperty.affineAnd_containsIdentities](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/hasaffineproperty-affineand-containsidentities--325a4c7ad309ab2a3940a465.md) | 221 | `result-track:325a4c7ad309ab2a3940a46513a9f68c330af6350fd16d91ededb23ace932453` |
| 15 | `lemma` | [HasAffineProperty.affineAnd_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/hasaffineproperty-affineand-iff--80ce5eb1c41808b5eac34dda.md) | 232 | `result-track:80ce5eb1c41808b5eac34ddac28486161bc27f7aad6c639188457213ca53c27d` |
| 16 | `lemma` | [HasAffineProperty.affineAnd_le_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/hasaffineproperty-affineand-le-isaffinehom--fd19e29123b7d0a359b02c1c.md) | 247 | `result-track:fd19e29123b7d0a359b02c1c8bcde7aa58e84d49a4a1686a891e02b93590407b` |
| 17 | `lemma` | [HasAffineProperty.affineAnd_eq_of_propertyIsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/hasaffineproperty-affineand-eq-of-propertyislocal--2aaf826623e6f66017561671.md) | 258 | `result-track:2aaf826623e6f66017561671bbdbe4e7222c2c0cbaa39793a295a06764eb8130` |
| 18 | `lemma` | [HasAffineProperty.SpecMap_iff_of_affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/hasaffineproperty-specmap-iff-of-affineand--644b9c2a0e56b69a457c25e8.md) | 266 | `result-track:644b9c2a0e56b69a457c25e8b4270429a941bd5bce95c7bd44484818d82586d8` |
| 19 | `lemma` | [HasAffineProperty.affineAnd_le_affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/hasaffineproperty-affineand-le-affineand--e3a3dc304bd4f6960d7481bb.md) | 275 | `result-track:e3a3dc304bd4f6960d7481bb63b17a1c18006a8ff54f06573837f57924e072ce` |
| 20 | `lemma` | [HasAffineProperty.coprodDesc_affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variantd4a50a4cdb8df352b4560380486b180f66eacfac0b3bc3510ec133d2a4fabee8.lean/declarations/hasaffineproperty-coproddesc-affineand--9a26589c93c1e8edb006921a.md) | 283 | `result-track:9a26589c93c1e8edb006921a81bb8c41b26864705edf3d593dde825c42800efe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
