# instantiateTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8b70dc37333a7b1a4b8ea8ff61a8a6a363ab1ca1af5f9621ab04fd123197cac",
  "kind": "def",
  "lexical_name": "instantiateTheorem",
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
  "slug": "instantiatetheorem--8f1aa01167d40a35c63bba5c",
  "source": {
    "blob": "e4b44c9d3be89b0d60e18832499bb47a33fc7dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 864,
    "line": 838,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f1aa01167d40a35c63bba5c9d62809c577a39dee1a6a026bdd2ddb5be652715",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8b70dc37333a7b1a4b8ea8ff61a8a6a363ab1ca1af5f9621ab04fd123197cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 838–864.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def instantiateTheorem (c : Choice) : M Unit := withDefault do withNewMCtxDepth do withFreshNGen do
  let thm := (← read).thm
  unless (← markTheoremInstance thm.proof c.assignment) do
    return ()
  trace_goal[grind.ematch.instance.assignment] "{thm.origin.pp}: {assignmentToMessageData c.assignment}"
  let proof ← thm.getProofWithFreshMVarLevels
  let numParams := thm.numParams
  assert! c.assignment.size == numParams
  let (mvars, bis, _) ← forallMetaBoundedTelescope (← inferType proof) numParams
  if mvars.size != thm.numParams then
    reportEMatchIssue! "unexpected number of parameters at {thm.origin.pp}"
    return ()
  let (some _, c) ← applyAssignment mvars |>.run c | return ()
  let some _ ← synthesizeInsts mvars bis | return ()
  if (← checkConstraints thm c.gen proof mvars) then
    let guards ← collectGuards thm proof mvars
    let proof := mkAppN proof mvars
    if (← mvars.allM (·.mvarId!.isAssigned)) then
      addNewInstance thm proof c.gen guards c.sources
    else
      let mvars ← mvars.filterM fun mvar => return !(← mvar.mvarId!.isAssigned)
      if let some mvarBad ← mvars.findM? fun mvar => return !(← isProof mvar) then
        reportEMatchIssue! "failed to instantiate {thm.origin.pp}, failed to instantiate non propositional argument with type{indentExpr (← inferType mvarBad)}"
      let proof ← mkLambdaFVars (binderInfoForMVars := .default) mvars (← instantiateMVars proof)
      addNewInstance thm proof c.gen guards c.sources

/-- Process choice stack until we don't have more choices to be processed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean#L838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b44c9d3be89b0d60e18832499bb47a33fc7dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
