# getGrwPos?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7002550dd325e3169e6a8c7b5f2d80a9d12ca6ec4605ace46473d9c098adfab9",
  "kind": "def",
  "lexical_name": "getGrwPos?",
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
  "slug": "getgrwpos--5b4e301663a631fae766cb54",
  "source": {
    "blob": "2205871552965d94a311c90f45918d890e662711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b4e301663a631fae766cb54c40abedf8d17b35f4be5348a9d8fec281ae31889",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7002550dd325e3169e6a8c7b5f2d80a9d12ca6ec4605ace46473d9c098adfab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getGrwPos? (rootExpr subExpr : Expr) (pos : SubExpr.Pos) (hyp? : Bool) :
    MetaM (Array GrwPos) := do
  withLocalDeclD `_a (← inferType subExpr) fun fvar => do
  let root' ← replaceSubexpr (fun _ => pure (GCongr.mkHoleAnnotation fvar)) pos rootExpr
  let imp := Expr.forallE `_a rootExpr root' .default
  let dummyGoal ← mkFreshExprMVar imp
  let ref ← IO.mkRef #[]
  try
    _ ← dummyGoal.mvarId!.gcongr false |>.run (mainGoalDischarger := dummyDischarger ref hyp? fvar)
    return #[]
  catch ex =>
    if (← ex.toMessageData.toString) != "dummyError" then
      return #[]
  let result ← ref.get
  /- I doubt that this can come up in practice, but we check anyways that the relation
  that was found doesn't contain any free variables that are now out of scope. -/
  for { relation, .. } in result do
    unless (collectFVars {} relation).fvarIds.all (← getLCtx).contains do
      return #[]
  return result


/-- The structure for rewrite lemmas stored in the `RefinedDiscrTree`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2205871552965d94a311c90f45918d890e662711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
