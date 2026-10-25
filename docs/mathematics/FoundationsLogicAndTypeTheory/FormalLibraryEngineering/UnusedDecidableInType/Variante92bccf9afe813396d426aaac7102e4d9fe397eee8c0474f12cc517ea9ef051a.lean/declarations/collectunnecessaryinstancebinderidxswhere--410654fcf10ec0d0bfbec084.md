# collectUnnecessaryInstanceBinderIdxsWhere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e707048b57eaa0855827374e747622827049c0147d31995fe331c37315f37db0",
  "kind": "def",
  "lexical_name": "collectUnnecessaryInstanceBinderIdxsWhere",
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
  "slug": "collectunnecessaryinstancebinderidxswhere--410654fcf10ec0d0bfbec084",
  "source": {
    "blob": "a241d4d25dde59108f682f0bcadbfd1f3049c513",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Variante92bccf9afe813396d426aaac7102e4d9fe397eee8c0474f12cc517ea9ef051a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:410654fcf10ec0d0bfbec0842a7451b56120a812e87041b59dae54dbafaf04ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Variante92bccf9afe813396d426aaac7102e4d9fe397eee8c0474f12cc517ea9ef051a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e707048b57eaa0855827374e747622827049c0147d31995fe331c37315f37db0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def collectUnnecessaryInstanceBinderIdxsWhere (p : Expr → Bool) (e : Expr) :
    MetaM (Array Nat) := do
  let (instances, fvarIdSet) ← go e 0 #[] |>.run {}
  return instances.filterMap fun i => if fvarIdSet.contains i.fvarId then none else some i.idx
where
  /-- Enter foralls recursively, creating a telescope for binders which are instances of concern
  and instantiating all other bvars with `sorry`. The only free variables therefore arise from
  instances of concern which we want to track the usage of. -/
  go (e : Expr) (currentBinderIdx : Nat) (currentFVars : Array InstanceOfConcern) :
      StateRefT FVarIdSet MetaM (Array InstanceOfConcern) := do
    let e := e.cleanupAnnotations
    if h : e.isForall then
      collectFVarsOutsideOfProofs (e.forallDomain h)
      if e.binderInfo.isInstImplicit && p (e.forallDomain h) then
        forallBoundedTelescope e (some 1) fun fvar e => do
          let fvarId := fvar[0]!.fvarId!
          go e (currentBinderIdx + 1) (currentFVars.push { fvarId, idx := currentBinderIdx })
      else
        let e := (e.forallBody h).instantiate1 (← mkSorry (e.forallDomain h) false)
        go e (currentBinderIdx + 1) currentFVars
    else
      match e with
      | .letE _ type _ body _ =>
        collectFVarsOutsideOfProofs type
        let e := body.instantiate1 (← mkSorry type false)
        go e currentBinderIdx currentFVars
      | e =>
        collectFVarsOutsideOfProofs e
        return currentFVars

/--
Gathers instance hypotheses in the type of `decl` that are unused in the remainder of the type and
whose types satisfy `p`. (Does not consider the body of the declaration.) Collects them into an
`Array Parameter`, and if (and only if) this array is nonempty, feeds it to `logOnUnused`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Variante92bccf9afe813396d426aaac7102e4d9fe397eee8c0474f12cc517ea9ef051a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Variante92bccf9afe813396d426aaac7102e4d9fe397eee8c0474f12cc517ea9ef051a.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a241d4d25dde59108f682f0bcadbfd1f3049c513` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
