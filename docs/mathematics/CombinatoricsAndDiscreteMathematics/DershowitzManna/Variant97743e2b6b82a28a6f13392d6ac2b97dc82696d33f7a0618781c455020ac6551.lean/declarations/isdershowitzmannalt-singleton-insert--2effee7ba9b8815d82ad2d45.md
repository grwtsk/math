# isDershowitzMannaLT_singleton_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c17ed32960049cac87af313a67d426ebe825819",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c116680-7268-978f-6250-8492d4d2fa83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdf1a409-eddc-e3ab-0297-392d5d29e979",
  "kind": "lemma",
  "lexical_name": "isDershowitzMannaLT_singleton_insert",
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
  "slug": "isdershowitzmannalt-singleton-insert--2effee7ba9b8815d82ad2d45",
  "source": {
    "blob": "4c17ed32960049cac87af313a67d426ebe825819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2effee7ba9b8815d82ad2d45bae8d707ff950eb4f548afd45663aadd013719c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdf1a409-eddc-e3ab-0297-392d5d29e979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isDershowitzMannaLT_singleton_insert (h : OneStep N (a ::ₘ M)) :
    ∃ M', N = a ::ₘ M' ∧ OneStep M' M ∨ N = M + M' ∧ ∀ x ∈ M', x < a := by
  classical
  obtain ⟨X, Y, b, rfl, h0, h2⟩ := h
  obtain rfl | hab := eq_or_ne a b
  · refine ⟨Y, .inr ⟨?_, h2⟩⟩
    simpa [add_comm _ {a}, singleton_add, eq_comm] using h0
  refine ⟨Y + (M - {b}), .inl ⟨?_, M - {b}, Y, b, add_comm .., ?_, h2⟩⟩
  · rw [← singleton_add, add_comm] at h0
    rw [tsub_eq_tsub_of_add_eq_add h0, add_comm Y, ← singleton_add, ← add_assoc,
      add_tsub_cancel_of_le]
    have : a ∈ X + {b} := by simp [← h0]
    simpa [hab] using this
  · rw [tsub_add_cancel_of_le]
    have : b ∈ a ::ₘ M := by simp [h0]
    simpa [hab.symm] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c17ed32960049cac87af313a67d426ebe825819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
