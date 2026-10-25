# eq_of_add_eq_add_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71ae43bb5b209b1ddb4d066ea1f0babd9b232379",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 820,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88a350c2-5e25-2fae-442e-4053ef524140",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d7dc7d3-2865-882b-78be-6fdfcf29f0f6",
  "kind": "theorem",
  "lexical_name": "eq_of_add_eq_add_left",
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
  "slug": "eq-of-add-eq-add-left--e5dd9707e71ba1e67a7ee57b",
  "source": {
    "blob": "71ae43bb5b209b1ddb4d066ea1f0babd9b232379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 840,
    "line": 820,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5dd9707e71ba1e67a7ee57b0db83d787549ff16375139b900c8b40ed79dd813",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d7dc7d3-2865-882b-78be-6fdfcf29f0f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 820–840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem eq_of_add_eq_add_left {a b c : Cardinal} (h : a + b = a + c) (ha : a < ℵ₀) :
    b = c := by
  cases' le_or_lt ℵ₀ b with hb hb
  · have : a < b := ha.trans_le hb
    rw [add_eq_right hb this.le, eq_comm] at h
    rw [eq_of_add_eq_of_aleph0_le h this hb]
  · have hc : c < ℵ₀ := by
      rw [← not_le]
      intro hc
      apply lt_irrefl ℵ₀
      apply (hc.trans (self_le_add_left _ a)).trans_lt
      rw [← h]
      apply add_lt_aleph0 ha hb
    rw [lt_aleph0] at *
    rcases ha with ⟨n, rfl⟩
    rcases hb with ⟨m, rfl⟩
    rcases hc with ⟨k, rfl⟩
    norm_cast at h ⊢
    apply add_left_cancel h
#align cardinal.eq_of_add_eq_add_left Cardinal.eq_of_add_eq_add_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4d67836c369a236359fc7c95c493613c23c7ee0a23d4e8ccbef36c83c0c3adce.lean#L820).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71ae43bb5b209b1ddb4d066ea1f0babd9b232379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
