# kabstractFindsPositions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:817db5d2ed540d67425c3e882ca6fac529a81f4183760c2c8a8df31493849ee9",
  "kind": "def",
  "lexical_name": "kabstractFindsPositions",
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
  "slug": "kabstractfindspositions--48783064d8839ac31d495b6d",
  "source": {
    "blob": "e6d9208a86e65894b8fbaafc676067a7bbca3e87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 391,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48783064d8839ac31d495b6d793113a7776fb6ce307e8083b74b92cc623fd728",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:817db5d2ed540d67425c3e882ca6fac529a81f4183760c2c8a8df31493849ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kabstractFindsPositions (e p : Expr) (targetPos : SubExpr.Pos) : MetaM Bool := do
  let e ← instantiateMVars e
  let pHeadIdx := p.toHeadIndex
  let pNumArgs := p.headNumArgs
  let foundRef ← IO.mkRef false
  let rec visit (e : Expr) (pos : SubExpr.Pos) : MetaM Unit := do
    let visitChildren : MetaM Unit := do
      match e with
      | .app f a         => visit f pos.pushAppFn; visit a pos.pushAppArg
      | .mdata _ e       => visit e pos
      | .proj _ _ e      => visit e pos.pushProj
      | .letE _ t v b _  =>
        visit t pos.pushLetVarType; visit v pos.pushLetValue; visit b pos.pushLetBody
      | .lam _ d b _     => visit d pos.pushBindingDomain; visit b pos.pushBindingBody
      | .forallE _ d b _ => visit d pos.pushBindingDomain; visit b pos.pushBindingBody
      | _                => pure ()
    if e.hasLooseBVars then
      visitChildren
    else if e.toHeadIndex != pHeadIdx || e.headNumArgs != pNumArgs then
      visitChildren
    else
      if ← isDefEq e p then
        if pos == targetPos then
          foundRef.set true
        else
          throwError "{p} unified with {e}"
      else
        if pos == targetPos then
          throwError "{p} did not unify with {e}"
        else
          visitChildren
  try
    visit e .root
    foundRef.get
  catch _ =>
    return false

/-- Determine which metavariables count as "unhelpful", given the old and new metavariables.
This is used in suggestions of e.g. `apply`, to filter out suggestions with unhelpful metavariables.

A metavariable is unhelpful if it was freshly introduced, and is not used in the assignment
of a previously appearing metavariable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d9208a86e65894b8fbaafc676067a7bbca3e87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
