# checked_proof_authority_gives_proof_spin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "264f2bd2a15358e284d77dc5e5610f3bd698eb86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/232e91e458462108c35032b101b98502765b9f028f789440e5bc1ccf2f8929a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7e17bc2-1f38-45d7-26ed-3f266031fbd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af4c38e8-efc6-1649-2031-37819b8388e9",
  "kind": "theorem",
  "lexical_name": "checked_proof_authority_gives_proof_spin",
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
  "slug": "checked-proof-authority-gives-proof-spin--b883c2cd1d84a0a971498dbf",
  "source": {
    "blob": "264f2bd2a15358e284d77dc5e5610f3bd698eb86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e/Variant232e91e458462108c35032b101b98502765b9f028f789440e5bc1ccf2f8929a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b883c2cd1d84a0a971498dbf3f43e1dda6f754bf80e0f163d3a8aaf07f27cb69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e/Variant232e91e458462108c35032b101b98502765b9f028f789440e5bc1ccf2f8929a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af4c38e8-efc6-1649-2031-37819b8388e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checked_proof_authority_gives_proof_spin
    (S : StatementAuthorityFlipSurface)
    (h : S.authorityActive AuthorityState.checkedProof) :
    S.proofSpinActive := by
  unfold StatementAuthorityFlipSurface.proofSpinActive
  unfold StatementAuthorityFlipSurface.spinSectorActive
  exact ⟨AuthorityState.checkedProof, h, rfl⟩

/-- Active trusted-import authority gives proof spin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e/Variant232e91e458462108c35032b101b98502765b9f028f789440e5bc1ccf2f8929a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e/Variant232e91e458462108c35032b101b98502765b9f028f789440e5bc1ccf2f8929a1.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264f2bd2a15358e284d77dc5e5610f3bd698eb86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
