# isDefEqEtaStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf8bd5fc02f7b013fd4134f946ff5c9d1282290fc11541f3f038de35ee0b55e9",
  "kind": "def",
  "lexical_name": "isDefEqEtaStruct",
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
  "slug": "isdefeqetastruct--51d56573a6148a6a75bd0d95",
  "source": {
    "blob": "e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51d56573a6148a6a75bd0d950784c0c40fa5db5fae9cb51afd9ebb654903bcca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf8bd5fc02f7b013fd4134f946ff5c9d1282290fc11541f3f038de35ee0b55e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def isDefEqEtaStruct (a b : Expr) : MetaM Bool := do
  matchConstCtor b.getAppFn (fun _ => return false) fun ctorVal us => do
    if (← useEtaStruct ctorVal.induct) then
      matchConstCtor a.getAppFn (fun _ => go ctorVal us) fun _ _ => return false
    else
      return false
where
  go ctorVal us := do
    if ctorVal.numParams + ctorVal.numFields != b.getAppNumArgs then
      trace[Meta.isDefEq.eta.struct] "failed, insufficient number of arguments at{indentExpr b}"
      return false
    else
      if !isNonRecStructure (← getEnv) ctorVal.induct then
        trace[Meta.isDefEq.eta.struct] "failed, type is not a non-recursive structure{indentExpr b}"
        return false
      else if (← isDefEq (← inferType a) (← inferType b)) then
        checkpointDefEq do
          let args := b.getAppArgs
          let params := args[*...ctorVal.numParams].toArray
          for h : i in ctorVal.numParams...args.size do
            let j := i - ctorVal.numParams
            let proj ← mkProjFn ctorVal us params j a
            if ← isProof proj then
              unless ← isAbstractedUnassignedMVar args[i] do
                -- Skip expensive unification problem that is likely solved
                -- using proof irrelevance.  We already know that `proj` and
                -- `args[i]` have the same type, so they're defeq in any case.
                -- See comment at `isAbstractedUnassignedMVar`.
                continue
            trace[Meta.isDefEq.eta.struct] "{a} =?= {b} @ [{j}], {proj} =?= {args[i]}"
            unless (← isDefEq proj args[i]) do
              trace[Meta.isDefEq.eta.struct] "failed, unexpected arg #{i}, projection{indentExpr proj}\nis not defeq to{indentExpr args[i]}"
              return false
          return true
      else
        return false

/--
  Try to solve `a := (fun x => t) =?= b` by eta-expanding `b`,
  resulting in `t =?= b x` (with a fresh free variable `x`).

  Remark: eta-reduction is not a good alternative even in a system without universe cumulativity like Lean.
  Example:
    ```
    (fun x : A => f ?m) =?= f
    ```
    The left-hand side of the constraint above it not eta-reduced because `?m` is a metavariable.

  Note: we do not backtrack after applying η-expansion anymore.
  There is no case where `(fun x => t) =?= b` unifies, but `t =?= b x` does not.
  Backtracking after η-expansion results in lots of duplicate δ-reductions,
  because we can δ-reduce `a` before and after the η-expansion.
  The fresh free variable `x` also busts the cache.
  See https://github.com/leanprover/lean4/pull/2002 -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
