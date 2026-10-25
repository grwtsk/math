# readHeaderFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb953a459ef065512d8e72d5491817e8361bde26d54fa016010ec97ba1e3a296",
  "kind": "def",
  "lexical_name": "readHeaderFields",
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
  "slug": "readheaderfields--e36f1a421741f1068ebc05ab",
  "source": {
    "blob": "12e3b9698dfab1266ed45c8f5db09dea1030cdb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e36f1a421741f1068ebc05abbb0d1869ded9711eec344552d0ffcb073f1d348f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb953a459ef065512d8e72d5491817e8361bde26d54fa016010ec97ba1e3a296`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def readHeaderFields (h : FS.Stream) : IO (List (String × String)) := do
    let l ← h.getLine
    if l.isEmpty then
      throw $ userError "Stream was closed"
    if l = "\r\n" then
      pure []
    else
      match parseHeaderField l with
      | some hf =>
        let tail ← readHeaderFields h
        pure (hf :: tail)
      | none =>
        if isLean3Request l then
          throw $ userError s!"A Lean 3 request was received. Please ensure that your editor has a Lean 4 compatible extension installed. For VSCode, this is\n\n    https://github.com/leanprover/vscode-lean4 "
        else
          throw $ userError s!"Invalid header field: {repr l}"

  /-- Returns the Content-Length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e3b9698dfab1266ed45c8f5db09dea1030cdb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
