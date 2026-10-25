# elabUsingElabFnsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2de625ba79c8337a7304c68801fd36486c2351b7df8c9bbd2f4151f40fd711f8",
  "kind": "def",
  "lexical_name": "elabUsingElabFnsAux",
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
  "slug": "elabusingelabfnsaux--b9638c2cae11018fa0d4210c",
  "source": {
    "blob": "872babc942fe96b14ef803da94e7e2245f8a08ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1670,
    "line": 1623,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9638c2cae11018fa0d4210c7219a507a2f2ecd7f7f8a8e6f49f7f5484aaf06d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2de625ba79c8337a7304c68801fd36486c2351b7df8c9bbd2f4151f40fd711f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1623–1670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabUsingElabFnsAux (s : SavedState) (stx : Syntax) (expectedType? : Option Expr) (catchExPostpone : Bool)
    : List (KeyedDeclsAttribute.AttributeEntry TermElab) → TermElabM Expr
  | []                => do throwError "unexpected syntax{indentD stx}"
  | (elabFn::elabFns) =>
    try
      -- record elaborator in info tree, but only when not backtracking to other elaborators (outer `try`)
      withTermInfoContext' elabFn.declName stx (expectedType? := expectedType?)
        (try
          elabFn.value stx expectedType?
        catch ex => match ex with
          | .error .. =>
            if (← read).errToSorry then
              exceptionToSorry ex expectedType?
            else
              throw ex
          | .internal id _ =>
            if (← read).errToSorry && id == abortTermExceptionId then
              exceptionToSorry ex expectedType?
            else if id == unsupportedSyntaxExceptionId then
              throw ex  -- to outer try
            else if catchExPostpone && id == postponeExceptionId then
              /- If `elab` threw `Exception.postpone`, we reset any state modifications.
                For example, we want to make sure pending synthetic metavariables created by `elab` before
                it threw `Exception.postpone` are discarded.
                Note that we are also discarding the messages created by `elab`.

                For example, consider the expression.
                `((f.x a1).x a2).x a3`
                Now, suppose the elaboration of `f.x a1` produces an `Exception.postpone`.
                Then, a new metavariable `?m` is created. Then, `?m.x a2` also throws `Exception.postpone`
                because the type of `?m` is not yet known. Then another, metavariable `?n` is created, and
                finally `?n.x a3` also throws `Exception.postpone`. If we did not restore the state, we would
                keep "dead" metavariables `?m` and `?n` on the pending synthetic metavariable list. This is
                wasteful because when we resume the elaboration of `((f.x a1).x a2).x a3`, we start it from scratch
                and new metavariables are created for the nested functions. -/
              s.restore
              postponeElabTermCore stx expectedType?
            else
              throw ex)
    catch ex => match ex with
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then
          s.restore  -- also removes the info tree created above
          elabUsingElabFnsAux s stx expectedType? catchExPostpone elabFns
        else
          throw ex
      | _ => throw ex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean#L1623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872babc942fe96b14ef803da94e7e2245f8a08ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
