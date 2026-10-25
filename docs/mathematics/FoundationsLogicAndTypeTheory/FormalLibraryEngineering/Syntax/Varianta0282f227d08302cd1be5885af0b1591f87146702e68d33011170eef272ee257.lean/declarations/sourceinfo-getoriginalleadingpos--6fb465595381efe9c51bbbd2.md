# SourceInfo.getOriginalLeadingPos?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db93943d39ae7dbc2f9b528eb04d6560c59d7a49b901d072520c2a66737b9bd4",
  "kind": "def",
  "lexical_name": "SourceInfo.getOriginalLeadingPos?",
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
  "slug": "sourceinfo-getoriginalleadingpos--6fb465595381efe9c51bbbd2",
  "source": {
    "blob": "0b2a6655a8ce6469ae1057c34f7150fc88c716a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Varianta0282f227d08302cd1be5885af0b1591f87146702e68d33011170eef272ee257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fb465595381efe9c51bbbd2e31d5bdb860ab99a1033d5dc3ac6afc021c728d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Varianta0282f227d08302cd1be5885af0b1591f87146702e68d33011170eef272ee257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db93943d39ae7dbc2f9b528eb04d6560c59d7a49b901d072520c2a66737b9bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SourceInfo.getOriginalLeadingPos? : SourceInfo → Option String.Pos.Raw
  | .original (leading := leading) .. => some leading.startPos
  | _ => none

/-- Get the start position of the leading whitespace of `.original` `SourceInfo`, or the start
position of `.synthetic` `SourceInfo` (and `none` otherwise).

If `canonicalOnly := false` (the default), also returns `none` on non-canonical `.synthetic`
`SourceInfo`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Varianta0282f227d08302cd1be5885af0b1591f87146702e68d33011170eef272ee257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Varianta0282f227d08302cd1be5885af0b1591f87146702e68d33011170eef272ee257.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b2a6655a8ce6469ae1057c34f7150fc88c716a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
