# fromGlued_stalk_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd6354d81c7f4059f5a92f95499882cdf703f6973f05bb7469d42a0b47665791",
  "kind": "instance",
  "lexical_name": "fromGlued_stalk_iso",
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
  "slug": "fromglued-stalk-iso--5fb3206d1ab57c5acf110a62",
  "source": {
    "blob": "7111257d225ca68393d544fd7efd7619715b4793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 392,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fb3206d1ab57c5acf110a623f677f556b3c177b820f6a4cf47a5555e6c1da9c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd6354d81c7f4059f5a92f95499882cdf703f6973f05bb7469d42a0b47665791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fromGlued_stalk_iso (x : 𝒰.gluedCover.glued.carrier) :
    IsIso (PresheafedSpace.stalkMap 𝒰.fromGlued.val x) := by
  obtain ⟨i, x, rfl⟩ := 𝒰.gluedCover.ι_jointly_surjective x
  have :=
    PresheafedSpace.stalkMap.congr_hom _ _
      (congr_arg LocallyRingedSpace.Hom.val <| 𝒰.ι_fromGlued i) x
  erw [PresheafedSpace.stalkMap.comp] at this
  rw [← IsIso.eq_comp_inv] at this
  rw [this]
  infer_instance
#align algebraic_geometry.Scheme.open_cover.from_glued_stalk_iso AlgebraicGeometry.Scheme.OpenCover.fromGlued_stalk_iso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7111257d225ca68393d544fd7efd7619715b4793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
