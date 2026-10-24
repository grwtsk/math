# propertyIsLocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f0952a47462ebab8dd138151e0476fb107362ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f978253e-35b2-b2e5-b932-75fb68c1d1ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:148ba633-4e9b-b63d-7367-f5a8320c9b65",
  "kind": "lemma",
  "lexical_name": "propertyIsLocal",
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
  "slug": "propertyislocal--b98427644a41484c8aff0abd",
  "source": {
    "blob": "5f0952a47462ebab8dd138151e0476fb107362ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 93,
    "path": "GRWTSK/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b98427644a41484c8aff0abdbdc71f50166f9d1389506d32aa627fc335fdc159",
  "verification": {
    "reference": "docs/verification/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:148ba633-4e9b-b63d-7367-f5a8320c9b65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma propertyIsLocal :
    PropertyIsLocal FormallyUnramified := by
  constructor
  · intro R S _ _ f r R' S' _ _ _ _ _ _ H
    algebraize [f, (algebraMap S S').comp f, IsLocalization.Away.map R' S' f r]
    have := Algebra.FormallyUnramified.of_isLocalization (Rₘ := S') (.powers (f r))
    have := Algebra.FormallyUnramified.comp R S S'
    have H : Submonoid.powers r ≤ (Submonoid.powers (f r)).comap f := by
      rintro x ⟨n, rfl⟩; exact ⟨n, by simp⟩
    have : IsScalarTower R R' S' := .of_algebraMap_eq' (IsLocalization.map_comp H).symm
    exact Algebra.FormallyUnramified.of_comp R R' S'
  · exact ofLocalizationSpanTarget
  · exact ofLocalizationSpanTarget.ofLocalizationSpan
      (stableUnderComposition.stableUnderCompositionWithLocalizationAway
          holdsForLocalizationAway).1
  · exact (stableUnderComposition.stableUnderCompositionWithLocalizationAway
        holdsForLocalizationAway).2

end RingHom.FormallyUnramified
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0952a47462ebab8dd138151e0476fb107362ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
