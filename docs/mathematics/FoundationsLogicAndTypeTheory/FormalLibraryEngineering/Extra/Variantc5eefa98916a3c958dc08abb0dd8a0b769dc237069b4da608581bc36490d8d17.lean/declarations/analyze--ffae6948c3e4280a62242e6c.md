# analyze

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:165d1c4f312be83ca1d4caf6d27592fe564c7f348b774ba4a1a30c1e7bb20599",
  "kind": "def",
  "lexical_name": "analyze",
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
  "slug": "analyze--ffae6948c3e4280a62242e6c",
  "source": {
    "blob": "375749812ea7bd835d5a3ce0fae993d9fc5888f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffae6948c3e4280a62242e6c4d32dcf62b714cc1f9edcc7987bfae98d18e85ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:165d1c4f312be83ca1d4caf6d27592fe564c7f348b774ba4a1a30c1e7bb20599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def analyze (t : Tree) (expectedType? : Option Expr) : TermElabM AnalyzeResult := do
  let max? ←
    match expectedType? with
    | none => pure none
    | some expectedType =>
      let expectedType := (← instantiateMVars expectedType).cleanupAnnotations
      if isUnknown expectedType then pure none else pure (some expectedType)
  (go t *> get).run' { max? }
where
   go (t : Tree) : StateRefT AnalyzeResult TermElabM Unit := do
     unless (← get).hasUncomparable do
       match t with
       | .macroExpansion _ _ _ nested => go nested
       | .binop _ .leftact  _ _ rhs => go rhs
       | .binop _ .rightact _ lhs _ => go lhs
       | .binop _ _ _ lhs rhs => go lhs; go rhs
       | .unop _ _ arg => go arg
       | .term _ _ val =>
         let type := (← instantiateMVars (← inferType val)).cleanupAnnotations
         if isUnknown type then
           modify fun s => { s with hasUnknown := true }
         else
           match (← get).max? with
           | none     => modify fun s => { s with max? := type }
           | some max =>
             /-
              Remark: Previously, we used `withNewMCtxDepth` to prevent metavariables in `max` and `type` from being assigned.

              Reason: This is a heuristic procedure for introducing coercions in scenarios such as:
              - Given `(n : Nat) (i : Int)`, elaborate `n = i`. The coercion must be inserted at `n`.
                Consider the elaboration problem `(n + 0) + i`, where the type of term `0` is a metavariable.
                We do not want it to be elaborated as `(Int.ofNat n + Int.ofNat (0 : Nat)) + i`; instead, we prefer the result to be `(Int.ofNat n + (0 : Int)) + i`.
                Here is another example where we avoid assigning metavariables: `max := BitVec n` and `type := BitVec ?m`.

              However, the combination `withNewMCtxDepth <| isDefEqGuarded max type` introduced performance issues in several
              Mathlib files because `isDefEq` was spending a lot of time unfolding definitions in `max` and `type` before failing.

              To address this issue, we allowed only reducible definitions to be unfolded during this check, using
              `withNewMCtxDepth <| withReducible <| isDefEqGuarded max type`. This change fixed some performance issues but created new ones.
              Lean was now spending time trying to use `hasCoe`, likely occurring in places where `withNewMCtxDepth <| isDefEqGuarded max type`
              used to succeed but was now failing after we introduced `withReducible`.

              We then considered using just `isDefEqGuarded max type` and changing the definition of `isUnknown`. In the new definition,
              the else-case would be `| e => e.hasExprMVar` instead of `| _ => false`. However, we could not even compile this repo using
              this configuration. The problem arises because some files require coercions even when `max` contains metavariables,
              for example: `max := Option ?m` and `type := Name`.

              As a result, rather than restricting reducibility, we decided to set `Meta.Config.isDefEqStuckEx := true`.
              This means that if `isDefEq` encounters a subproblem `?m =?= a` where `?m` is non-assignable, it aborts the test
              instead of unfolding definitions.
             -/
             unless (← withNewMCtxDepth <| withConfig (fun config => { config with isDefEqStuckEx := true }) <| isDefEqGuarded max type) do
               if (← hasCoe type max) then
                 return ()
               else if (← hasCoe max type) then
                 modify fun s => { s with max? := type }
               else
                 trace[Elab.binop] "uncomparable types: {max}, {type}"
                 modify fun s => { s with hasUncomparable := true }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantc5eefa98916a3c958dc08abb0dd8a0b769dc237069b4da608581bc36490d8d17.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375749812ea7bd835d5a3ce0fae993d9fc5888f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
