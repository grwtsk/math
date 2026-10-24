# limitCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1454b97932b99d16816ad535e95398343b7442959499010d80805faf1e5ec7a5",
  "kind": "instance",
  "lexical_name": "limitCommRing",
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
  "slug": "limitcommring--3bdd6ce1ab196f12c1e21f91",
  "source": {
    "blob": "c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 491,
    "path": "GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bdd6ce1ab196f12c1e21f917a8923c9ee03dea5a8bba2e6436f8f41022964ca",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1454b97932b99d16816ad535e95398343b7442959499010d80805faf1e5ec7a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance limitCommRing (F : J ⥤ CommRingCatMax.{v, u}) :
    CommRing.{max v u} (Types.limitCone.{v, u} (F ⋙ forget CommRingCatMax.{v, u})).pt :=
  @Subring.toCommRing (∀ j, F.obj j) _
    (RingCat.sectionsSubring.{v, u} (F ⋙ forget₂ CommRingCat RingCat.{max v u}))
set_option linter.uppercaseLean3 false in
#align CommRing.limit_comm_ring CommRingCat.limitCommRing

/-- We show that the forgetful functor `CommRingCat ⥤ RingCat` creates limits.

All we need to do is notice that the limit point has a `CommRing` instance available,
and then reuse the existing limit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
