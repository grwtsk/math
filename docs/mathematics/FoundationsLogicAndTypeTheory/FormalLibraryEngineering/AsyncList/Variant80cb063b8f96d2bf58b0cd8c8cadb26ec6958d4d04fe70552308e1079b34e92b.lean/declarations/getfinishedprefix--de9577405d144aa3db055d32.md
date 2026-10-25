# getFinishedPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9d4ae03542a172cdb95af3807551723bf0730ce821804c96a5ee79a386c8667",
  "kind": "def",
  "lexical_name": "getFinishedPrefix",
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
  "slug": "getfinishedprefix--de9577405d144aa3db055d32",
  "source": {
    "blob": "a89d2af053b45a4985a28d641630ea9d4a633c3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de9577405d144aa3db055d322ce163ffe8ec7b8b840313f88aab28f60eff6646",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9d4ae03542a172cdb95af3807551723bf0730ce821804c96a5ee79a386c8667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getFinishedPrefix : AsyncList ε α → BaseIO (List α × Option ε × Bool)
  | cons hd tl => do
    let ⟨tl, e?, isComplete⟩ ← tl.getFinishedPrefix
    pure ⟨hd :: tl, e?, isComplete⟩
  | nil => pure ⟨[], none, true⟩
  | delayed tl => do
    if ← tl.hasFinished then
      match ← tl.wait with
      | Except.ok tl => tl.getFinishedPrefix
      | Except.error e => pure ⟨[], some e, true⟩
    else pure ⟨[], none, false⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89d2af053b45a4985a28d641630ea9d4a633c3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
