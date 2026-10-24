# subset_set_image₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fa31694-128f-7ef1-62cb-fc286ea60551",
  "kind": "theorem",
  "lexical_name": "subset_set_image₂",
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
  "slug": "subset-set-image--24badc6285c37e0fb6150e7e",
  "source": {
    "blob": "fbed15b8d2a887a4d5c1f9cf87fd5bcd4382e16f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 475,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NAry/Variant2a2104b2601da0625ead121df6cccb9f47042df18fb65cf4dbd076bbed94a3b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24badc6285c37e0fb6150e7e4427ad66e48419ae47a34dab9734d85b08da6133",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NAry/Variant2a2104b2601da0625ead121df6cccb9f47042df18fb65cf4dbd076bbed94a3b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fa31694-128f-7ef1-62cb-fc286ea60551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_set_image₂ {s : Set α} {t : Set β} (hu : ↑u ⊆ image2 f s t) :
    ∃ (s' : Finset α) (t' : Finset β), ↑s' ⊆ s ∧ ↑t' ⊆ t ∧ u ⊆ image₂ f s' t' := by
  rw [← Set.image_prod, subset_set_image_iff] at hu
  rcases hu with ⟨u, hu, rfl⟩
  classical
  use u.image Prod.fst, u.image Prod.snd
  simp only [coe_image, Set.image_subset_iff, image₂_image_left, image₂_image_right,
    image_subset_iff]
  exact ⟨fun _ h ↦ (hu h).1, fun _ h ↦ (hu h).2, fun x hx ↦ mem_image₂_of_mem hx hx⟩

end
section UnionInter

variable [DecidableEq α] [DecidableEq β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NAry/Variant2a2104b2601da0625ead121df6cccb9f47042df18fb65cf4dbd076bbed94a3b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NAry/Variant2a2104b2601da0625ead121df6cccb9f47042df18fb65cf4dbd076bbed94a3b1.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbed15b8d2a887a4d5c1f9cf87fd5bcd4382e16f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
