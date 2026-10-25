# quoteAutoTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3dbf145efa6eb49dc206a70b2068de66ca8f054e424b09f5150a5cf7f0502cc",
  "kind": "def",
  "lexical_name": "quoteAutoTactic",
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
  "slug": "quoteautotactic--059110835289776b2e2a9d4d",
  "source": {
    "blob": "f231e0603e9ee2639fdca4b396b06e20111c1cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:059110835289776b2e2a9d4d8ec94a68678ae6386e7357dc45a9b11248cabb2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3dbf145efa6eb49dc206a70b2068de66ca8f054e424b09f5150a5cf7f0502cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def quoteAutoTactic : Syntax → CoreM Expr
  | .ident _ _ val preresolved =>
    return mkApp4 (.const ``Syntax.ident [])
      (.const ``SourceInfo.none [])
      (.app (.const ``String.toRawSubstring []) (mkStrLit (toString val)))
      (toExpr val)
      (toExpr preresolved)
  | stx@(.node _ k args) => do
    if stx.isAntiquot then
      throwErrorAt stx "invalid auto tactic, antiquotation is not allowed"
    else
      let ty := .const ``Syntax []
      let mut quotedArgs := mkApp (.const ``Array.empty [.zero]) ty
      for arg in args do
        if k == nullKind && (arg.isAntiquotSuffixSplice || arg.isAntiquotSplice) then
          throwErrorAt arg "invalid auto tactic, antiquotation is not allowed"
        else
          let quotedArg ← quoteAutoTactic arg
          quotedArgs := mkApp3 (.const ``Array.push [.zero]) ty quotedArgs quotedArg
      return mkApp3 (.const ``Syntax.node []) (.const ``SourceInfo.none []) (toExpr k) quotedArgs
  | .atom _ val => return .app (.const ``mkAtom []) (toExpr val)
  | .missing    => throwError "invalid auto tactic, tactic is missing"

/--
Adds a declaration whose value is a Syntax expression representing `tactic`.
If `name?` is provided, it is used for the declaration name, and otherwise a fresh name is generated.
Returns the declaration name.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f231e0603e9ee2639fdca4b396b06e20111c1cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
