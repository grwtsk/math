# surjOn_extremePoints_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7921d94fcdfc9729fb71866e1da6f889e5ecb0e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8ad3e2e-fe24-4a13-0bce-ca3fadf5e7a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a05742fb-b6aa-0004-6abe-c318eb7e52af",
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
  "slug": "surjon-extremepoints-image--ff5d2abbdacd13a46c87eef1",
  "source": {
    "blob": "7921d94fcdfc9729fb71866e1da6f889e5ecb0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff5d2abbdacd13a46c87eef1df119fa8c518afe5481c07b17dfbdd23ba431233",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05742fb-b6aa-0004-6abe-c318eb7e52af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KreinMilman/Variantd080744974f90629a80e11b3b944e93d69c804370b6f6e851a54938b073237ca.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7921d94fcdfc9729fb71866e1da6f889e5ecb0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
