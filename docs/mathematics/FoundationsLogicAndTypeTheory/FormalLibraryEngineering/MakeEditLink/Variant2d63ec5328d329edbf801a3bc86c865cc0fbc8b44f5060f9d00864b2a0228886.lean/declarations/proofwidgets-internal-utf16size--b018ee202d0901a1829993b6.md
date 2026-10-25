# ProofWidgets.Internal.utf16Size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abc9013dac29febc66412ca00a0b864cff79a04e341fbc86603d25feba7b7368",
  "kind": "def",
  "lexical_name": "ProofWidgets.Internal.utf16Size",
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
  "slug": "proofwidgets-internal-utf16size--b018ee202d0901a1829993b6",
  "source": {
    "blob": "84956ff7eb4e50c418f8b44287e02ea46a129840",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 8,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MakeEditLink/Variant2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b018ee202d0901a1829993b60c126e0011a7516581d0132daf67e6800e0b06fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MakeEditLink/Variant2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abc9013dac29febc66412ca00a0b864cff79a04e341fbc86603d25feba7b7368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ProofWidgets.Internal.utf16Size (c : Char) : UInt32 :=
  if c.val ≤ 0xFFFF then 1 else 2

/-- Assuming that `s` is the content of a file starting at position `p`,
advance `p` to the end of `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MakeEditLink/Variant2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MakeEditLink/Variant2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84956ff7eb4e50c418f8b44287e02ea46a129840` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
