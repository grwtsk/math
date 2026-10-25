# subset_vonNeumann

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b81921dc116b5f06783c204013566a0652bf0f5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c78b0f9b-ced3-591c-3c19-fda45cbeff38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aea50851-eeff-0f17-6a5e-cf372c078f22",
  "kind": "theorem",
  "lexical_name": "subset_vonNeumann",
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
  "slug": "subset-vonneumann--6681cb1292c6747f222e72e7",
  "source": {
    "blob": "b81921dc116b5f06783c204013566a0652bf0f5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6681cb1292c6747f222e72e711b439d7aa900774798605721a6f7f89b6645049",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aea50851-eeff-0f17-6a5e-cf372c078f22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_vonNeumann {o : Ordinal} {x : ZFSet} : x ⊆ V_ o ↔ rank x ≤ o := by
  rw [rank_le_iff]
  constructor <;> intro hx y hy
  · apply (rank_lt_of_mem (hx hy)).trans_le
    simp_rw [rank_le_iff, mem_vonNeumann']
    rintro z ⟨a, ha, hz⟩
    exact (subset_vonNeumann.1 hz).trans_lt ha
  · rw [mem_vonNeumann']
    have := hx hy
    exact ⟨_, this, subset_vonNeumann.2 le_rfl⟩
termination_by o

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b81921dc116b5f06783c204013566a0652bf0f5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
