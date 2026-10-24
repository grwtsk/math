# surjOn_extremePoints_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7d9a914-40fb-b611-86e3-d20e59f6533d",
  "kind": "lemma",
  "lexical_name": "surjOn_extremePoints_image",
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
  "slug": "surjon-extremepoints-image--b372c136b0738f85c97b25ba",
  "source": {
    "blob": "93d74543237d7885c87bcf02ea998eaf432068f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/KreinMilman/Variantbb77633e521da8bccc9a002e6eec656981d2eab79af7249a6e5eb59d95b6db1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b372c136b0738f85c97b25bac0f3f546d249b6fc55b195abfc7cef0666067f29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KreinMilman/Variantbb77633e521da8bccc9a002e6eec656981d2eab79af7249a6e5eb59d95b6db1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7d9a914-40fb-b611-86e3-d20e59f6533d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjOn_extremePoints_image (f : E →ᴬ[ℝ] F) (hs : IsCompact s) :
    SurjOn f (extremePoints ℝ s) (extremePoints ℝ (f '' s)) := by
  rintro w hw
  -- The fiber of `w` is nonempty and compact
  have ht : IsCompact {x ∈ s | f x = w} :=
    hs.inter_right <| isClosed_singleton.preimage f.continuous
  have ht₀ : {x ∈ s | f x = w}.Nonempty := by simpa using extremePoints_subset hw
  -- Hence by the Krein-Milman lemma it has an extreme point `x`
  obtain ⟨x, ⟨hx, rfl⟩, hyt⟩ := ht.extremePoints_nonempty ht₀
  -- `f x = w` and `x` is an extreme point of `s`, so we're done
  refine mem_image_of_mem _ ⟨hx, fun y hy z hz hxyz ↦ ?_⟩
  have := by simpa using image_openSegment _ f.toAffineMap y z
  have := hw.2 (mem_image_of_mem _ hy) (mem_image_of_mem _ hz) <| by
    rw [← this]; exact mem_image_of_mem _ hxyz
  exact hyt ⟨hy, this.1⟩ ⟨hz, this.2⟩ hxyz
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KreinMilman/Variantbb77633e521da8bccc9a002e6eec656981d2eab79af7249a6e5eb59d95b6db1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KreinMilman/Variantbb77633e521da8bccc9a002e6eec656981d2eab79af7249a6e5eb59d95b6db1c.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93d74543237d7885c87bcf02ea998eaf432068f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
