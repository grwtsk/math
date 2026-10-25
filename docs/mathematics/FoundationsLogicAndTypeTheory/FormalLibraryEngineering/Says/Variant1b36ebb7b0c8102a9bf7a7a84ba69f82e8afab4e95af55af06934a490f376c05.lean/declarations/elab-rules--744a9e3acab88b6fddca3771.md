# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d98f3a05498f83588f1b51fc828559426e87401c8e0b3e93d37085ef26407b1",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--744a9e3acab88b6fddca3771",
  "source": {
    "blob": "25c2997fa05cd76fd65a3b93c8d2dc592aa3876d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:744a9e3acab88b6fddca377127829c3d905e02b2099ce9f08d61beeb66703474",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d98f3a05498f83588f1b51fc828559426e87401c8e0b3e93d37085ef26407b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| $tac:tactic says%$tk $[$result:tacticSeq]?) => do
  let verify := says.verify.get (← getOptions) ||
    !says.no_verify_in_CI.get (← getOptions) && (← IO.getEnv "CI").isSome
  match result, verify with
  | some _, true
  | none, _ =>
    let stx ← evalTacticCapturingTryThis tac
    match result with
    | some r =>
        let stx' := (← Lean.PrettyPrinter.ppTactic ⟨Syntax.stripPos stx⟩).pretty
        let r' := (← Lean.PrettyPrinter.ppTactic ⟨Syntax.stripPos r⟩).pretty
        if stx' != r' then
          throwError m!"Tactic `{tac}` produced `{stx'}`,\nbut was expecting it to produce `{r'}`!"
            ++ m!"\n\nYou can reproduce this error locally using `set_option says.verify true`."
    | none =>
    addSuggestion tk (← `(tactic| $tac says $stx)) (origSpan? := (← `(tactic| $tac says)))
  | some result, false =>
    evalTactic result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant1b36ebb7b0c8102a9bf7a7a84ba69f82e8afab4e95af55af06934a490f376c05.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25c2997fa05cd76fd65a3b93c8d2dc592aa3876d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
