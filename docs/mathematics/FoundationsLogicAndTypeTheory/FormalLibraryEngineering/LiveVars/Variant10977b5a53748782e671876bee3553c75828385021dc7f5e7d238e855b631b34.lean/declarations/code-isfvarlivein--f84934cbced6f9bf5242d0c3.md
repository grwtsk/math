# Code.isFVarLiveIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:923698173fac5a5a28fadebf25362353e9db6d5ef391e30809c768bcc3654acc",
  "kind": "def",
  "lexical_name": "Code.isFVarLiveIn",
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
  "slug": "code-isfvarlivein--f84934cbced6f9bf5242d0c3",
  "source": {
    "blob": "2c847f223b4afa7df9e59390f473678c2d53b0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LiveVars/Variant10977b5a53748782e671876bee3553c75828385021dc7f5e7d238e855b631b34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f84934cbced6f9bf5242d0c34d8dc2113886ff7880a570eda52f7614fac71a5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LiveVars/Variant10977b5a53748782e671876bee3553c75828385021dc7f5e7d238e855b631b34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:923698173fac5a5a28fadebf25362353e9db6d5ef391e30809c768bcc3654acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def Code.isFVarLiveIn (c : Code .impure) (fvarId : FVarId) : CompilerM Bool := do
  go c |>.run { targetSet := { fvarId }, targetId := fvarId } |>.run' {}
where
  go (c : Code .impure) : LiveM Bool := do
    match c with
    | .let decl k => (pure <| decl.dependsOn (← read).targetSet) <||> go k
    | .jp decl k => go decl.value <||> (do markJpVisited decl.fvarId; go k)
    | .uset fvarId _ y k _ | .sset fvarId _ _ y _ k _ =>
      visitVar fvarId <||> visitVar y <||> go k
    | .oset fvarId _ y k _ =>
      visitVar fvarId <||> pure (y.dependsOn (← read).targetSet) <||> go k
    | .cases c => visitVar c.discr <||> c.alts.anyM (go ·.getCode)
    | .jmp fvarId args =>
      (pure <| args.any (·.dependsOn (← read).targetSet)) <||> do
        if (← get).visitedJps.contains fvarId then
          return false
        else
          let some decl ← findFunDecl? fvarId | unreachable!
          markJpVisited fvarId
          go decl.value
    | .return var => visitVar var
    | .unreach .. => return false
    | .inc (fvarId := fvarId) (k := k) .. | .dec (fvarId := fvarId) (k := k) ..
    | .setTag (fvarId := fvarId) (k := k) .. | .del (fvarId := fvarId) (k := k) =>
      visitVar fvarId <||> go k

  @[inline]
  visitVar (x : FVarId) : LiveM Bool :=
    return x == fvarId

  @[inline]
  markJpVisited (jp : FVarId) : LiveM Unit := do
    modify fun s => { s with visitedJps := s.visitedJps.insert jp }

end Lean.Compiler.LCNF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LiveVars/Variant10977b5a53748782e671876bee3553c75828385021dc7f5e7d238e855b631b34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LiveVars/Variant10977b5a53748782e671876bee3553c75828385021dc7f5e7d238e855b631b34.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c847f223b4afa7df9e59390f473678c2d53b0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
