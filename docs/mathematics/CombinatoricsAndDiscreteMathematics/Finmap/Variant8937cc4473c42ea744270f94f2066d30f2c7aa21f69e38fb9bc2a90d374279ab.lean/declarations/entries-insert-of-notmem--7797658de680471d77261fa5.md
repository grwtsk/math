# entries_insert_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3423b2508d1b661cda76775bf960c19455f698af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a3ab179-7aae-c9b9-d211-7a4119dac214",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c8d2dc9-8216-2fed-e56c-e592118f0fff",
  "kind": "theorem",
  "lexical_name": "entries_insert_of_notMem",
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
  "slug": "entries-insert-of-notmem--7797658de680471d77261fa5",
  "source": {
    "blob": "3423b2508d1b661cda76775bf960c19455f698af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 431,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7797658de680471d77261fa586cf5e47e12c9b4de6ed6c2364c2e0a3f4bb3eaf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finmap/Variant8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c8d2dc9-8216-2fed-e56c-e592118f0fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem entries_insert_of_notMem {a : α} {b : β a} {s : Finmap β} :
    a ∉ s → (insert a b s).entries = ⟨a, b⟩ ::ₘ s.entries :=
  induction_on s fun s h => by
    simp [AList.entries_insert_of_notMem (mt mem_toFinmap.1 h), -entries_insert]

@[deprecated (since := "2025-05-23")] alias entries_insert_of_not_mem := entries_insert_of_notMem

@[deprecated (since := "2024-12-14")] alias insert_entries_of_neg := entries_insert_of_not_mem

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finmap/Variant8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3423b2508d1b661cda76775bf960c19455f698af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
