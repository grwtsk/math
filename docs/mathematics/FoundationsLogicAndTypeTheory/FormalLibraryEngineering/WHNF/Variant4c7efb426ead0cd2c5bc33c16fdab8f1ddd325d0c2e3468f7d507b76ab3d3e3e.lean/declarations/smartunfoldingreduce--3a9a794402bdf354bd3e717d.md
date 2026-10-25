# smartUnfoldingReduce?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3210bb80231d88f056d022fb0dc980c8508fa95ee873e86d7ad70d1c7a037ae",
  "kind": "def",
  "lexical_name": "smartUnfoldingReduce?",
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
  "slug": "smartunfoldingreduce--3a9a794402bdf354bd3e717d",
  "source": {
    "blob": "768e0c93dea2a79dd5ab505c68bbcac736238c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 755,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a9a794402bdf354bd3e717d4b8536673f04e76f002757d104549841fc443070",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3210bb80231d88f056d022fb0dc980c8508fa95ee873e86d7ad70d1c7a037ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def smartUnfoldingReduce? (e : Expr) : MetaM (Option Expr) :=
  go e |>.run
where
  go (e : Expr) : OptionT MetaM Expr := do
    match e with
    | .letE n t v b nondep => mapLetDecl n t (← go v) (nondep := nondep) fun x => go (b.instantiate1 x)
    | .lam .. => lambdaTelescope e fun xs b => do mkLambdaFVars xs (← go b)
    | .app f a .. => return mkApp (← go f) (← go a)
    | .proj _ _ s => return e.updateProj! (← go s)
    | .mdata _ b  =>
      if let some m := smartUnfoldingMatch? e then
        goMatch m
      else
        return e.updateMData! (← go b)
    | _ => return e

  goMatch (e : Expr) : OptionT MetaM Expr := do
    match (← reduceMatcher? e) with
    | ReduceMatcherResult.reduced e =>
      if let some alt := smartUnfoldingMatchAlt? e then
        return alt
      else
        go e
    | ReduceMatcherResult.stuck e' =>
      let mvarId ← getStuckMVar? e'
      /- Try to "unstuck" by resolving pending TC problems -/
      if (← Meta.synthPending mvarId) then
        goMatch e
      else
        failure
    | _ => failure

/--
Returns `true` if `declName` is the name of class field.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768e0c93dea2a79dd5ab505c68bbcac736238c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
