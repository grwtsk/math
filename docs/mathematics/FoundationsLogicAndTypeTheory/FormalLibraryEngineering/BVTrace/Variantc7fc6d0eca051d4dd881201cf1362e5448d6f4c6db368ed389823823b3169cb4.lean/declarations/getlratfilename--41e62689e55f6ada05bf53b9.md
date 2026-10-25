# getLratFileName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57d2909ca142d8a7a2d5c1e750240d2e58c19a1cb54298a44317d2a640b69f7b",
  "kind": "def",
  "lexical_name": "getLratFileName",
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
  "slug": "getlratfilename--41e62689e55f6ada05bf53b9",
  "source": {
    "blob": "3c666795947e98680ae0e3384159da49d00c40e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVTrace/Variantc7fc6d0eca051d4dd881201cf1362e5448d6f4c6db368ed389823823b3169cb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41e62689e55f6ada05bf53b98caab890bcc6904779a6806dc7e9b88c9f0f8ec0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVTrace/Variantc7fc6d0eca051d4dd881201cf1362e5448d6f4c6db368ed389823823b3169cb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57d2909ca142d8a7a2d5c1e750240d2e58c19a1cb54298a44317d2a640b69f7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getLratFileName : TermElabM System.FilePath := do
  let some baseName := System.FilePath.mk (← getFileName) |>.fileName | throwError "could not find file name"
  let some declName ← Term.getDeclName? | throwError "could not find declaration name"
  let pos := (← getFileMap).toPosition (← getRefPos)
  return s!"{baseName}-{declName}-{pos.line}-{pos.column}.lrat"

open Std.Tactic.BVDecide.LRAT in
open Lean.Meta.Tactic in
open Lean.Meta.Tactic.BVDecide in
@[builtin_tactic Lean.Parser.Tactic.bvTrace]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVTrace/Variantc7fc6d0eca051d4dd881201cf1362e5448d6f4c6db368ed389823823b3169cb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVTrace/Variantc7fc6d0eca051d4dd881201cf1362e5448d6f4c6db368ed389823823b3169cb4.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c666795947e98680ae0e3384159da49d00c40e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
