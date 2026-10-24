# pullback_snd_isIso_of_range_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e648b770-e5b9-ffe2-f587-b5d0caa682ad",
  "kind": "theorem",
  "lexical_name": "pullback_snd_isIso_of_range_subset",
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
  "slug": "pullback-snd-isiso-of-range-subset--d9852eb2547e898d0ff8b611",
  "source": {
    "blob": "22b1569af81b9358ba015aba3f8e97b03c814037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 553,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9852eb2547e898d0ff8b6112492fb3bf116bb8e31b46201b5d64e81b0168a0d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e648b770-e5b9-ffe2-f587-b5d0caa682ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_snd_isIso_of_range_subset (H : Set.range g.base ⊆ Set.range f.base) :
    IsIso (pullback.snd : pullback f g ⟶ _) := by
  haveI := TopCat.snd_iso_of_left_embedding_range_subset hf.base_open.toEmbedding g.base H
  have : IsIso (pullback.snd : pullback f g ⟶ _).base := by
    delta pullback.snd
    rw [← limit.isoLimitCone_hom_π ⟨_, pullbackConeOfLeftIsLimit f g⟩ WalkingCospan.right]
    change IsIso (_ ≫ pullback.snd)
    infer_instance
  apply to_iso
#align algebraic_geometry.PresheafedSpace.is_open_immersion.pullback_snd_is_iso_of_range_subset AlgebraicGeometry.PresheafedSpace.IsOpenImmersion.pullback_snd_isIso_of_range_subset

/-- The universal property of open immersions:
For an open immersion `f : X ⟶ Z`, given any morphism of schemes `g : Y ⟶ Z` whose topological
image is contained in the image of `f`, we can lift this morphism to a unique `Y ⟶ X` that
commutes with these maps.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant51cf6b825cf0af0537d56b80cf8052e9f81c79bd300034171c18a8d730de76dc.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b1569af81b9358ba015aba3f8e97b03c814037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
