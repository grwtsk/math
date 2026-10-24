# flat_and_surjective_iff_faithfullyFlat_of_isAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1327bdd8-cd57-22fb-9599-62c9b183eeef",
  "kind": "lemma",
  "lexical_name": "flat_and_surjective_iff_faithfullyFlat_of_isAffine",
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
  "slug": "flat-and-surjective-iff-faithfullyflat-of-isaffine--d5109237a5672c09c40a77f9",
  "source": {
    "blob": "e0e723945703bc1866e0abaa9e2a95e3088e19cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 176,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5109237a5672c09c40a77f9d5976b60583fbba2c04dd2112844feec333f8b3a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1327bdd8-cd57-22fb-9599-62c9b183eeef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma flat_and_surjective_iff_faithfullyFlat_of_isAffine [IsAffine X] [IsAffine Y] :
    Flat f ∧ Surjective f ↔ f.appTop.hom.FaithfullyFlat := by
  rw [RingHom.FaithfullyFlat.iff_flat_and_comap_surjective,
    MorphismProperty.arrow_mk_iso_iff @Surjective (arrowIsoSpecΓOfIsAffine f),
    MorphismProperty.arrow_mk_iso_iff @Flat (arrowIsoSpecΓOfIsAffine f),
    ← HasRingHomProperty.Spec_iff (P := @Flat), surjective_iff]
  rfl

end Flat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Flat/Variant7dd238d5d9cb7a2edd4534a51b5e9452f013727d705027456dea840442f84f90.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0e723945703bc1866e0abaa9e2a95e3088e19cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
