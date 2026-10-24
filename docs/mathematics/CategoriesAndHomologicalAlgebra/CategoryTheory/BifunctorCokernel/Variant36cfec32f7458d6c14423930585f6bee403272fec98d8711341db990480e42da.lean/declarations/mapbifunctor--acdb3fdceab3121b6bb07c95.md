# mapBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c8119e0de473f0472340aff90d02fc698b8fd35ee027e484784e3d51beadd3b",
  "kind": "abbrev",
  "lexical_name": "mapBifunctor",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "mapbifunctor--acdb3fdceab3121b6bb07c95",
  "source": {
    "blob": "97bb7b98161494466cf29e72f42c12fb8042d17d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorCokernel/Variant36cfec32f7458d6c14423930585f6bee403272fec98d8711341db990480e42da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acdb3fdceab3121b6bb07c95c830be9f3b4516ed60f97efbffe924aa8fe0963e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorCokernel/Variant36cfec32f7458d6c14423930585f6bee403272fec98d8711341db990480e42da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c8119e0de473f0472340aff90d02fc698b8fd35ee027e484784e3d51beadd3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev mapBifunctor [HasBinaryCoproduct ((F.obj X₁).obj Y₂) ((F.obj Y₁).obj X₂)] :
    CokernelCofork (coprod.desc ((F.map f₁).app Y₂) ((F.obj Y₁).map f₂)) :=
  CokernelCofork.ofπ (Z := (F.obj c₁.pt).obj c₂.pt)
    ((F.map c₁.π).app Y₂ ≫ (F.obj c₁.pt).map c₂.π) (by
      ext
      · simp [← NatTrans.comp_app_assoc, ← Functor.map_comp]
      · simp [← Functor.map_comp])

variable [PreservesColimit (parallelPair f₂ 0) (F.obj c₁.pt)]
  [PreservesColimit (parallelPair f₁ 0) (F.flip.obj Y₂)]

namespace isColimitMapBifunctor

include hc₁ hc₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorCokernel/Variant36cfec32f7458d6c14423930585f6bee403272fec98d8711341db990480e42da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorCokernel/Variant36cfec32f7458d6c14423930585f6bee403272fec98d8711341db990480e42da.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97bb7b98161494466cf29e72f42c12fb8042d17d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
