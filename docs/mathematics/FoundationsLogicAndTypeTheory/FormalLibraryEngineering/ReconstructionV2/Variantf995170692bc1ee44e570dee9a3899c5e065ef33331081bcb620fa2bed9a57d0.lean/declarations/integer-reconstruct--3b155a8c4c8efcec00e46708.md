# integer_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f29c2136f9edd593d69f720ab3b9a7554d83626",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/records/evidence/c2-inverse/Reconstruction-v2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31092e4d-bdb3-20fc-30f2-18c1831002ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "9f29c2136f9edd593d69f720ab3b9a7554d83626",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/foundation/canonical/formal/c2/Reconstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0da9a25-750f-5937-5b14-3ae2ea96578b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71486270-d0f4-d707-62bf-82f25b62a66c",
  "kind": "theorem",
  "lexical_name": "integer_reconstruct",
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
  "slug": "integer-reconstruct--3b155a8c4c8efcec00e46708",
  "source": {
    "blob": "9f29c2136f9edd593d69f720ab3b9a7554d83626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV2/Variantf995170692bc1ee44e570dee9a3899c5e065ef33331081bcb620fa2bed9a57d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b155a8c4c8efcec00e46708101be47ba3a9ca706bb9782338aef6fedb13e18e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV2/Variantf995170692bc1ee44e570dee9a3899c5e065ef33331081bcb620fa2bed9a57d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71486270-d0f4-d707-62bf-82f25b62a66c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer_reconstruct {p : Bytes} {n : Int} (h : integer p = some n) :
    p = signed n := by
  cases hu : unsigned p with
  | some k =>
    simp [integer, hu] at h
    subst n
    have hn : ¬ (k : Int) < 0 := Int.not_lt.mpr (Int.natCast_nonneg k)
    simpa [signed, hn] using unsigned_reconstruct hu
  | none =>
    cases p with
    | nil => simp [integer, hu] at h
    | cons c cs =>
      by_cases hc : c = '-'
      · subst c
        cases hs : unsigned cs with
        | none => simp [integer, hu, hs] at h
        | some k =>
          by_cases hk : k = 0
          · simp [integer, hu, hs, hk] at h
          · simp [integer, hu, hs, hk] at h
            subst n
            have hp := unsigned_reconstruct hs
            have hn : -(k : Int) < 0 := by omega
            simp [signed, hp, hk]
      · simp [integer, hu, hc] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV2/Variantf995170692bc1ee44e570dee9a3899c5e065ef33331081bcb620fa2bed9a57d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV2/Variantf995170692bc1ee44e570dee9a3899c5e065ef33331081bcb620fa2bed9a57d0.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f29c2136f9edd593d69f720ab3b9a7554d83626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
