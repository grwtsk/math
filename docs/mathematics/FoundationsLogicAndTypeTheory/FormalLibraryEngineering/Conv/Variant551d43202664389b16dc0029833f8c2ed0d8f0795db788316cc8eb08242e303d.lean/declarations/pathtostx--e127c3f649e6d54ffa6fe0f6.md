# pathToStx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f02d98810286fbcf96eb8f5137a3bd649fa1d4b12d1a9142e82d78005a9ab548",
  "kind": "def",
  "lexical_name": "pathToStx",
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
  "slug": "pathtostx--e127c3f649e6d54ffa6fe0f6",
  "source": {
    "blob": "0094691cab4a7965b55931095b0bcd37be150d37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e127c3f649e6d54ffa6fe0f618c9caeee2d67c0703c1c5c6a85f5afa6baf011d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f02d98810286fbcf96eb8f5137a3bd649fa1d4b12d1a9142e82d78005a9ab548`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def pathToStx {m} [Monad m] [MonadQuotation m] (convStx : TSyntax `conv)
    (path : Path) (loc : Option Name) (xs : Syntax.TSepArray ``enterArg "," := {}) :
    m (TSyntax `tactic) := do
  match path with
  | Path.arg arg all next =>
    let num := Syntax.mkNumLit (toString arg) (← MonadRef.mkInfoFromRefPos)
    let arg ← if all then `(enterArg| @$num:num)
      else `(enterArg| $num:num)
    pathToStx convStx next loc (xs.push arg)
  | Path.type next =>
    let arg ← `(enterArg| 1)
    pathToStx convStx next loc (xs.push arg)
  | Path.body name next =>
    let bi ←
      if name.eraseMacroScopes.willRoundTrip then
        `(binderIdent| $(← mkIdentFromRef name.eraseMacroScopes):ident)
      else `(binderIdent| _)
    let arg ← `(enterArg| $bi:binderIdent)
    pathToStx convStx next loc (xs.push arg)
  | Path.fun depth =>
    let capacity := if xs.elemsAndSeps.isEmpty
      then depth + 1 -- `fun`*depth; `skip`
      else depth + 2 -- `conv [args+]`; `fun`*depth; `skip`
    let mut arr := Array.emptyWithCapacity capacity
    let enterStx ← `(conv| enter [$xs,*])
    let funStx ← `(conv| fun)
    if !xs.elemsAndSeps.isEmpty then arr := arr.push enterStx
    for _ in [0:depth] do arr := arr.push funStx
    arr := arr.push convStx
    let seq ← `(convSeq1Indented| $arr:conv*)
    match loc with
    | none => `(tactic| conv => $seq:convSeq1Indented)
    | some n => `(tactic| conv at $(← mkIdentFromRef n):ident => $seq:convSeq1Indented)

/-- Return the syntax to insert for the conv widget.
Factored out of `insertEnter` for easy testing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0094691cab4a7965b55931095b0bcd37be150d37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
