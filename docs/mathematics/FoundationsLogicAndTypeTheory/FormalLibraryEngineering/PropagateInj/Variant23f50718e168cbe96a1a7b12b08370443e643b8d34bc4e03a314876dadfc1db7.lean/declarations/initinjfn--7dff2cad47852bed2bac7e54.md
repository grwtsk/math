# initInjFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73a944ae7ddb24473c4b6b9cccf10f7c1c7999dc5a52863c637baada1045e28e",
  "kind": "def",
  "lexical_name": "initInjFn",
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
  "slug": "initinjfn--7dff2cad47852bed2bac7e54",
  "source": {
    "blob": "fcafb42b577594a283609578507fa50af4a8d915",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dff2cad47852bed2bac7e540ac337aa3b346721d103672db9e38a4f75e4d40e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73a944ae7ddb24473c4b6b9cccf10f7c1c7999dc5a52863c637baada1045e28e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initInjFn (us : List Level) (α β : Expr) (f : Expr) (h : Expr) : GoalM Unit := do
  modify fun s => { s with inj.fns := s.inj.fns.insert { expr := f } { us, α, β, h } }
  let hidx := f.toHeadIndex
  for e in (← get).appMap.findD hidx [] do
    if e.isApp && isSameExpr e.appFn! f then
      mkInjEq e

builtin_grind_propagator propagateInj ↓Function.Injective := fun e => do
  let_expr i@Function.Injective α β f := e | return ()
  if (← isEqTrue e) then
    let f' := f.eta
    let f ← if isSameExpr f f' then
      pure f
    else
      let f' ← preprocessLight f'
      internalize f' (← getGeneration e)
      pure f'
    initInjFn i.constLevels! α β f (mkOfEqTrueCore e (← mkEqTrueProof e))

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcafb42b577594a283609578507fa50af4a8d915` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
