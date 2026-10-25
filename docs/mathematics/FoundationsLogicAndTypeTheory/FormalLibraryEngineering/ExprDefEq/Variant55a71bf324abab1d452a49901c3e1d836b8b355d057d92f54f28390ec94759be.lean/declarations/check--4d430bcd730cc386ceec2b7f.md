# check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49a9aa1fac766f9e018fca33781f0c31aa4ae08d8e4143c84ee88a72c8d99ecd",
  "kind": "def",
  "lexical_name": "check",
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
  "slug": "check--4d430bcd730cc386ceec2b7f",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1048,
    "line": 995,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d430bcd730cc386ceec2b7faa97c0988488c2406ccf6df99f78f1059d9138e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49a9aa1fac766f9e018fca33781f0c31aa4ae08d8e4143c84ee88a72c8d99ecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 995–1048.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
  partial def check (e : Expr) : CheckAssignmentM Expr := do
    if !e.hasExprMVar && !e.hasFVar then
      return e
    else checkCache e fun _ =>
      match e with
      | .mdata _ b       => return e.updateMData! (← check b)
      | .proj _ _ s      => return e.updateProj! (← check s)
      | .lam _ d b _     => return e.updateLambdaE! (← check d) (← check b)
      | .forallE _ d b _ => return e.updateForallE! (← check d) (← check b)
      | .letE _ t v b _  => return e.updateLetE! (← check t) (← check v) (← check b)
      | .bvar ..         => return e
      | .sort ..         => return e
      | .const ..        => return e
      | .lit ..          => return e
      | .fvar ..         => checkFVar e
      | .mvar ..         => checkMVar e
      | .app ..          =>
        try
          checkApp e
        catch ex => match ex with
          | .internal id =>
            /-
            If `ex` is an `CheckAssignmentM` internal exception and `e` is a beta-redex, we reduce `e` and try again.
            This is useful for assignments such as `?m := (fun _ => A) a` where `a` is free variable that is not in
            the scope of `?m`.
            Note that, we do not try expensive reductions (e.g., `delta`). Thus, the following assignment
            ```lean
            ?m := Function.const 0 a
            ```
            still fails because we do reduce the rhs to `0`. We assume this is not an issue in practice.
            -/
            if (id == outOfScopeExceptionId || id == checkAssignmentExceptionId) && e.isHeadBetaTarget then
              checkApp e.headBeta
            else
              throw ex
          | _ => throw ex

        -- TODO: investigate whether the following feature is too expensive or not
        /-
        catchInternalIds [checkAssignmentExceptionId, outOfScopeExceptionId]
          (checkApp e)
          fun ex => do
            let e' ← whnfR e
            if e != e' then
              check e'
            else
              throw ex
        -/
end

end CheckAssignment

namespace CheckAssignmentQuick

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L995).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
