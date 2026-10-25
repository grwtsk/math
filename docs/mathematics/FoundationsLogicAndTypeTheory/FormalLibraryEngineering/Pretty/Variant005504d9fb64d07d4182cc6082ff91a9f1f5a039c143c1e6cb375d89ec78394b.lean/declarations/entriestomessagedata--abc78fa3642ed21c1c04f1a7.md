# entriesToMessageData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8876a7f4c799604c19e46cc5c5b46a465e8c83731254b6762ef0752c5328ef7",
  "kind": "def",
  "lexical_name": "entriesToMessageData",
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
  "slug": "entriestomessagedata--abc78fa3642ed21c1c04f1a7",
  "source": {
    "blob": "79d34b772d0ec8179062e6290ba37ebcf4c430da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abc78fa3642ed21c1c04f1a7d62328c87b0ab0c31b4f5efc9f8741774bc1a744",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8876a7f4c799604c19e46cc5c5b46a465e8c83731254b6762ef0752c5328ef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def entriesToMessageData (entries : Entries) : MetaM MessageData := do
  -- ['1', '2', '3']
  let paddedLines ← padRight <| entries.l.map fun entry => m!"{entry.line!}"
  -- ['   ', '1,2', '1  ']
  let paddedDeps ← padRight <| entries.l.map fun entry =>
    String.intercalate "," <| entry.deps.map (fun dep => (dep.map toString).getD "_")
  -- ['p  ', 'hP ', '∀I ']
  let paddedThms ← padRight <| entries.l.map (·.thm)

  rowToMessageData paddedLines paddedDeps paddedThms entries.l

end Explode

end Mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d34b772d0ec8179062e6290ba37ebcf4c430da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
