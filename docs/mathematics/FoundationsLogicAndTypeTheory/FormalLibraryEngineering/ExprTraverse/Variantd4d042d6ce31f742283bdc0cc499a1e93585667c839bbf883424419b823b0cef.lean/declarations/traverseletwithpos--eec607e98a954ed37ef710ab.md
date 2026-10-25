# traverseLetWithPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f39fff3ca9e6ad623fa03c05958e59ef1baff214f3eadc71e22c102503e0e8e4",
  "kind": "def",
  "lexical_name": "traverseLetWithPos",
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
  "slug": "traverseletwithpos--eec607e98a954ed37ef710ab",
  "source": {
    "blob": "9632598567ecd2528d5495d20713c928725f0431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variantd4d042d6ce31f742283bdc0cc499a1e93585667c839bbf883424419b823b0cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eec607e98a954ed37ef710ab43e9eb0afc574fb76df49d1c9a6f85bcad435f25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variantd4d042d6ce31f742283bdc0cc499a1e93585667c839bbf883424419b823b0cef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f39fff3ca9e6ad623fa03c05958e59ef1baff214f3eadc71e22c102503e0e8e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def traverseLetWithPos
  (f : Pos → Expr → M Expr) (p : Pos) (e : Expr) : M Expr := visit #[] p e
  where visit fvars (p : Pos)
    | Expr.letE n t v b _ => do
      let type ← f p.pushLetVarType <| t.instantiateRev fvars
      let value ← f p.pushLetValue <| v.instantiateRev fvars
      withLetDecl n type value fun x =>
        visit (fvars.push x) p.pushLetBody b
    | e => do
      let body ← f p <| e.instantiateRev fvars
      -- if usedLetOnly = true then let binders will be eliminated
      -- if their var doesn't appear in the body.
      mkLetFVars (usedLetOnly := false) fvars body

/-- Similar to `Lean.Meta.traverseChildren` except that `visit` also includes a `Pos` argument so you can
track the subexpression position. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variantd4d042d6ce31f742283bdc0cc499a1e93585667c839bbf883424419b823b0cef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variantd4d042d6ce31f742283bdc0cc499a1e93585667c839bbf883424419b823b0cef.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9632598567ecd2528d5495d20713c928725f0431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
