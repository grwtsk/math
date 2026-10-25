# compl_mem_generateMeasurableRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2e4689badbfd992dd861b3d8af1a8d38f277351",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27984967-8fb7-51c5-0a4e-613600cedac9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9f0d45b-991b-238b-21af-4a51a41dd14b",
  "kind": "theorem",
  "lexical_name": "compl_mem_generateMeasurableRec",
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
  "slug": "compl-mem-generatemeasurablerec--fa1e597aee43762e75d4c117",
  "source": {
    "blob": "d2e4689badbfd992dd861b3d8af1a8d38f277351",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa1e597aee43762e75d4c11771da872f0e37a3eda195f4794ad687519b2a5df9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9f0d45b-991b-238b-21af-4a51a41dd14b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compl_mem_generateMeasurableRec {s : Set (Set α)} {i j : Ordinal} (h : j < i) {t : Set α}
    (ht : t ∈ generateMeasurableRec s j) : tᶜ ∈ generateMeasurableRec s i := by
  unfold generateMeasurableRec
  exact mem_union_left _ (mem_union_right _ ⟨t, mem_iUnion₂.2 ⟨j, h, ht⟩, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e4689badbfd992dd861b3d8af1a8d38f277351` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
