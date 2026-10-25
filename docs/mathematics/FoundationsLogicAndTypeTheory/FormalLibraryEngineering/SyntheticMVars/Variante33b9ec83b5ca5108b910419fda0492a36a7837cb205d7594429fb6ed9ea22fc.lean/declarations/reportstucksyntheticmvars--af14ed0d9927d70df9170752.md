# reportStuckSyntheticMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7a0109024ca60fbc6f4709b4f8d8ebabb2c330c7e8fae74070303146ca17613",
  "kind": "def",
  "lexical_name": "reportStuckSyntheticMVars",
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
  "slug": "reportstucksyntheticmvars--af14ed0d9927d70df9170752",
  "source": {
    "blob": "7b7f039bfa57aef97a3e44348d0f6194fa95fda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 322,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af14ed0d9927d70df91707520735b8303cd2b6ec8975c3ea1cdac21b0c0cf195",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7a0109024ca60fbc6f4709b4f8d8ebabb2c330c7e8fae74070303146ca17613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reportStuckSyntheticMVars (ignoreStuckTC := false) : TermElabM Unit := do
  let pendingMVars ← modifyGet fun s => (s.pendingMVars, { s with pendingMVars := [] })
  /-
  Calling the singular reportStuckSyntheticMVar function will usually raise
  an exception, meaning that we only expect to report one issue with
  synthetic MVars. Given that, what's the best one to return?

  If we have stuck typeclass instances associated with overlapping syntactic
  ranges, we want to report a problem whose syntactic range *does not include
  other unsolved typeclass problem ranges*. Here's a case where we want to
  include the innermost range, if `x` has unknown type:

      |--------------------| <- stuck typeclass problem is Decidable (x < x)
      if x < x then 1 else 2
         |---| <- stuck typeclass problem is LT _?

  Reporting the `LT _` typeclass is more informative to the user.

  A simple way to achieve this is prioritizing typeclass error messages with
  smaller syntactic ranges.
  -/
  let pendingMVarsWithDecls ← pendingMVars.filterMapM (fun mvarId => do
    let some decl ← getSyntheticMVarDecl? mvarId | return .none
    return .some (mvarId, decl)
  )
  let prioritizedProblems := pendingMVarsWithDecls.mergeSort (fun (_, decl1) (_, decl2) =>
    match (decl1.kind, decl2.kind) with
     | (.typeClass _, .typeClass _) =>
       match (decl1.stx.getRange?, decl2.stx.getRange?) with
        | (.some r1, .some r2) => if r1.bsize != r2.bsize then
            r1.bsize <= r2.bsize
          else
            r1.start <= r2.start
        | (.none, _) => false
        | _ => true
     -- All non-typeclass problems are equivalent and come before typeclass problems
     | (.typeClass _, _) => false
     | _ => true
  )
  for (mvarId, mvarDecl) in prioritizedProblems do
    reportStuckSyntheticMVar mvarId mvarDecl ignoreStuckTC

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7f039bfa57aef97a3e44348d0f6194fa95fda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
