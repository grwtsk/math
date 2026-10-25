# versoDocString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fe5a775d3f76e3c1c4baba2b068a7bb268e79e407f6451160a1c97cc22f31fc",
  "kind": "def",
  "lexical_name": "versoDocString",
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
  "slug": "versodocstring--5587c7f85caa9feffd9f4d4a",
  "source": {
    "blob": "0d0bd65260cc3abb4b3025bc20cbd3db80d61637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5587c7f85caa9feffd9f4d4a43649b32c82bc0276254a400ea4688b85b5bb4c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fe5a775d3f76e3c1c4baba2b068a7bb268e79e407f6451160a1c97cc22f31fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def versoDocString
    (declName : Name) (binders : Syntax) (docComment : TSyntax ``docComment) :
    TermElabM VersoDocResult := do
  -- A docstring already parsed as Verso, or one re-parsable from its source range, supports
  -- interactive features. A macro-generated docstring has neither, so fall back to its text.
  let body := docComment.raw[1]
  if (body.getPos? (canonicalOnly := true)).isSome then
    -- Source positions are available, so re-parse from source for interactive features.
    if let some stx ← parseVersoDocString docComment then
      let ((text, subsections), deferredChecks) ← Doc.elabBlocks (stx.getArgs.map (⟨·⟩)) |>.exec declName binders
      return { text, subsections, deferredChecks }
    else return { text := #[], subsections := #[], deferredChecks := #[] }
  else if body.isOfKind ``versoCommentBody then
    if body[0].isOfKind `Lean.Doc.Syntax.parseFailure then
      -- The markup failed to parse, so re-parse its text to report the error.
      versoDocStringOfText declName binders body[0][0].getAtomVal
    else
      -- A docstring parsed as Verso by a macro, with positions stripped.
      execVersoBlocks declName binders body[0].getArgs (fileMap? := none)
  else
    -- A plain-text doc comment without source positions; parse and elaborate from its text.
    versoDocStringOfText declName binders docComment.getDocString

open Lean.Doc Parser in
open Lean.Parser.Command in
/--
Parses and elaborates a Verso module docstring.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0bd65260cc3abb4b3025bc20cbd3db80d61637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
