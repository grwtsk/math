# canon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cfe9767e7d9e6632131cd875d297584b533e982374632862b7d07934854c98b",
  "kind": "def",
  "lexical_name": "canon",
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
  "slug": "canon--58ff8ed4b85991bce876ef51",
  "source": {
    "blob": "aba89dd5824087367332a1adbac7feedadfb2866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalizer/Variant9f9939f133e3bf4a4b9782d5ff91ea95a04aa15f864c46c89e5f4dd93bb9b6bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58ff8ed4b85991bce876ef514fc860bea4bc27b9f3a8beb8cd2dc102e4acb62d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalizer/Variant9f9939f133e3bf4a4b9782d5ff91ea95a04aa15f864c46c89e5f4dd93bb9b6bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cfe9767e7d9e6632131cd875d297584b533e982374632862b7d07934854c98b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canon (e : Expr) : CanonM Expr := do
  let k ← mkKey e
  -- Find all expressions canonicalized before that have the same key.
  if let some es' := unsafe (← get).keyToExprs[k]? then
    withTransparency (← read) do
      for e' in es' do
        -- Found an expression `e'` that is definitionally equal to `e` and share the same key.
        if (← isDefEq e e') then
          return e'
      -- `e` is not definitionally equal to any expression in `es'`. We claim this should be rare.
      modify fun { cache, keyToExprs } => { cache, keyToExprs := keyToExprs.insert k (e :: es') }
      return e
  else
    -- `e` is the first expression we found with key `k`.
    modify fun { cache, keyToExprs } => { cache, keyToExprs := keyToExprs.insert k [e] }
    return e

end Canonicalizer

export Canonicalizer (CanonM canon)

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalizer/Variant9f9939f133e3bf4a4b9782d5ff91ea95a04aa15f864c46c89e5f4dd93bb9b6bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonicalizer/Variant9f9939f133e3bf4a4b9782d5ff91ea95a04aa15f864c46c89e5f4dd93bb9b6bf.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aba89dd5824087367332a1adbac7feedadfb2866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
