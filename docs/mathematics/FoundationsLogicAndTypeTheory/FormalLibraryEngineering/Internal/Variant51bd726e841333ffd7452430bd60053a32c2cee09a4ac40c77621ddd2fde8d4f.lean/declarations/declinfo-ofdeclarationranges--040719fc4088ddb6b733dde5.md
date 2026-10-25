# DeclInfo.ofDeclarationRanges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d00ff05cbf472d3b11602f5ba9278d3caa02fd5c540ae1cafa53dda4be3d59f",
  "kind": "def",
  "lexical_name": "DeclInfo.ofDeclarationRanges",
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
  "slug": "declinfo-ofdeclarationranges--040719fc4088ddb6b733dde5",
  "source": {
    "blob": "2e690c2d8b543847420eebd87411e45c3375495c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internal/Variant51bd726e841333ffd7452430bd60053a32c2cee09a4ac40c77621ddd2fde8d4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:040719fc4088ddb6b733dde547d3184f8dabd41eabdd849d6d16d75e38bab7dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internal/Variant51bd726e841333ffd7452430bd60053a32c2cee09a4ac40c77621ddd2fde8d4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d00ff05cbf472d3b11602f5ba9278d3caa02fd5c540ae1cafa53dda4be3d59f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DeclInfo.ofDeclarationRanges (r : DeclarationRanges) : DeclInfo where
  rangeStartPosLine := r.range.pos.line - 1
  rangeStartPosCharacter := r.range.charUtf16
  rangeEndPosLine := r.range.endPos.line - 1
  rangeEndPosCharacter := r.range.endCharUtf16
  selectionRangeStartPosLine := r.selectionRange.pos.line - 1
  selectionRangeStartPosCharacter := r.selectionRange.charUtf16
  selectionRangeEndPosLine := r.selectionRange.endPos.line - 1
  selectionRangeEndPosCharacter := r.selectionRange.endCharUtf16

/-- Range of this parent decl. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internal/Variant51bd726e841333ffd7452430bd60053a32c2cee09a4ac40c77621ddd2fde8d4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internal/Variant51bd726e841333ffd7452430bd60053a32c2cee09a4ac40c77621ddd2fde8d4f.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e690c2d8b543847420eebd87411e45c3375495c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
