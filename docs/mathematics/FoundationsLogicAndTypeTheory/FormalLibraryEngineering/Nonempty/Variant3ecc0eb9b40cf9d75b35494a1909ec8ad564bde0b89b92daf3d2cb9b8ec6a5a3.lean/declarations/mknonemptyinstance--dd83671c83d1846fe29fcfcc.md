# mkNonemptyInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec5c6f50515e8e4fe604e07bbfd152b9b5c17e1df3ff410090deee59b7d1a455",
  "kind": "def",
  "lexical_name": "mkNonemptyInstance",
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
  "slug": "mknonemptyinstance--dd83671c83d1846fe29fcfcc",
  "source": {
    "blob": "5a14cab0ad636e7731e4d1990b77c1210bb5bfdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nonempty/Variant3ecc0eb9b40cf9d75b35494a1909ec8ad564bde0b89b92daf3d2cb9b8ec6a5a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd83671c83d1846fe29fcfcc187d20160b58cfc479f01fd217dc3166b8d402b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nonempty/Variant3ecc0eb9b40cf9d75b35494a1909ec8ad564bde0b89b92daf3d2cb9b8ec6a5a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec5c6f50515e8e4fe604e07bbfd152b9b5c17e1df3ff410090deee59b7d1a455`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkNonemptyInstance (declName : Name) : TermElabM Syntax.Command := do
  let indVal ← getConstInfoInduct declName
  forallTelescopeReducing indVal.type fun paramsIndices _ => do
  let mut indArgs := #[]
  let mut binders := #[]
  for x in paramsIndices do
    let arg := mkIdent (← mkFreshUserName (← x.fvarId!.getUserName).eraseMacroScopes)
    indArgs := indArgs.push arg
    binders := binders.push (← `(bracketedBinderF| {$arg}))
    if let .sort u ← whnf (← inferType x) then
      if let .some _ ← decLevel? u then
        binders := binders.push (← `(bracketedBinderF| [Nonempty $arg]))
  let ctorTacs ← indVal.ctors.toArray.mapM fun ctor =>
    `(tactic| apply @$(mkCIdent ctor) <;> exact Classical.ofNonempty)
  `(command| variable $binders* in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nonempty/Variant3ecc0eb9b40cf9d75b35494a1909ec8ad564bde0b89b92daf3d2cb9b8ec6a5a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nonempty/Variant3ecc0eb9b40cf9d75b35494a1909ec8ad564bde0b89b92daf3d2cb9b8ec6a5a3.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a14cab0ad636e7731e4d1990b77c1210bb5bfdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
