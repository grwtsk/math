# RelativeBoundaryDiffeomorphismTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76403ede6412ae376051546649f8036ac8e1914856477875014cdb366292b219",
  "kind": "structure",
  "lexical_name": "RelativeBoundaryDiffeomorphismTheory",
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
  "slug": "relativeboundarydiffeomorphismtheory--d5072bbdaab56beae9047707",
  "source": {
    "blob": "ad5b2c1632758190f181bb876d10e8badc791175",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5072bbdaab56beae90477078c57f9df049dc682330df5a3d787ab254b060bb1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76403ede6412ae376051546649f8036ac8e1914856477875014cdb366292b219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RelativeBoundaryDiffeomorphismTheory
    (T : SmoothFramedSurgeryTheory) where
  lawStrictness : GluingLawStrictness
  lawStrictness_eq : lawStrictness = .propositional
  Hom : T.Manifold → T.Manifold → Type uD
  /-- A relative map selects the exterior on which it is required to be fixed. -/
  CommonExterior : T.Manifold → T.Manifold → Type uD
  ExteriorPoint : ∀ {X Y}, CommonExterior X Y → Type uD
  selectedExterior : ∀ {X Y}, Hom X Y → CommonExterior X Y
  restrictExterior : ∀ {X Y} (f : Hom X Y),
    ExteriorPoint (selectedExterior f) → ExteriorPoint (selectedExterior f)
  restrictExterior_eq_id : ∀ {X Y} (f : Hom X Y) (x),
    restrictExterior f x = x
  /-- The old boundary is transported explicitly, rather than hidden in `sound`. -/
  OldBoundary : T.Manifold → Type uD
  oldBoundaryMap : ∀ {X Y}, Hom X Y → OldBoundary X → OldBoundary Y
  CommonOldBoundary : T.Manifold → T.Manifold → Type uD
  OldBoundaryPoint : ∀ {X Y}, CommonOldBoundary X Y → Type uD
  selectedOldBoundary : ∀ {X Y}, Hom X Y → CommonOldBoundary X Y
  restrictOldBoundary : ∀ {X Y} (f : Hom X Y),
    OldBoundaryPoint (selectedOldBoundary f) →
      OldBoundaryPoint (selectedOldBoundary f)
  restrictOldBoundary_eq_id : ∀ {X Y} (f : Hom X Y) (x),
    restrictOldBoundary f x = x
  refl : (X : T.Manifold) → Hom X X
  symm : {X Y : T.Manifold} → Hom X Y → Hom Y X
  trans : {X Y Z : T.Manifold} → Hom X Y → Hom Y Z → Hom X Z
  refl_trans : ∀ {X Y} (f : Hom X Y), trans (refl X) f = f
  trans_refl : ∀ {X Y} (f : Hom X Y), trans f (refl Y) = f
  trans_assoc : ∀ {W X Y Z} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z),
    trans (trans f g) h = trans f (trans g h)
  symm_trans : ∀ {X Y} (f : Hom X Y), trans (symm f) f = refl Y
  trans_symm : ∀ {X Y} (f : Hom X Y), trans f (symm f) = refl X
  symm_refl : ∀ X, symm (refl X) = refl X
  symm_symm : ∀ {X Y} (f : Hom X Y), symm (symm f) = f
  oldBoundary_refl : ∀ X (x : OldBoundary X), oldBoundaryMap (refl X) x = x
  oldBoundary_trans : ∀ {X Y Z} (f : Hom X Y) (g : Hom Y Z)
      (x : OldBoundary X),
    oldBoundaryMap (trans f g) x = oldBoundaryMap g (oldBoundaryMap f x)
  oldBoundary_symm_left : ∀ {X Y} (f : Hom X Y) (x : OldBoundary X),
    oldBoundaryMap (symm f) (oldBoundaryMap f x) = x
  oldBoundary_symm_right : ∀ {X Y} (f : Hom X Y) (y : OldBoundary Y),
    oldBoundaryMap f (oldBoundaryMap (symm f) y) = y
  sound : ∀ {X Y}, Hom X Y → T.RelBoundaryDiffeomorphic X Y

namespace RelativeBoundaryDiffeomorphismTheory

variable {T : SmoothFramedSurgeryTheory}

/-- A bundled comparison always supplies the underlying relative diffeomorphism claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variant028caddd5fffc621a574448e085382a8d64f9582f36c0f24a56f189639a03062.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5b2c1632758190f181bb876d10e8badc791175` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
