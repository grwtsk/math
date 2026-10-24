# covBy_iff_card_sdiff_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c63f0d02-3c18-b866-05cb-d34879e8bb4b",
  "kind": "lemma",
  "lexical_name": "covBy_iff_card_sdiff_eq_one",
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
  "slug": "covby-iff-card-sdiff-eq-one--d4fc237aaf337335bc840d94",
  "source": {
    "blob": "64f62e6518d27c1c3fb8347411216464c14d099b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4fc237aaf337335bc840d94ee107f14a76e93a4c18042895e7ba9a4a2d55eef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c63f0d02-3c18-b866-05cb-d34879e8bb4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covBy_iff_card_sdiff_eq_one : t ⋖ s ↔ t ⊆ s ∧ (s \ t).card = 1 := by
  rw [covBy_iff_exists_insert]
  constructor
  · rintro ⟨a, ha, rfl⟩
    simp [*]
  · simp_rw [card_eq_one]
    rintro ⟨hts, a, ha⟩
    refine ⟨a, (mem_sdiff.1 <| superset_of_eq ha <| mem_singleton_self _).2, ?_⟩
    rw [insert_eq, ← ha, sdiff_union_of_subset hts]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f62e6518d27c1c3fb8347411216464c14d099b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
