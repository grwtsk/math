# throwAesopEx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93520e013fffbaa724e719d21751b854938ae1d138749c5845cf612ca02bf5ec",
  "kind": "def",
  "lexical_name": "throwAesopEx",
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
  "slug": "throwaesopex--007fe54e53ca96592c034c73",
  "source": {
    "blob": "98f97661eca9705b3ffa06ae5ecee54aac129a1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:007fe54e53ca96592c034c73fe4aaf8b65f8fd5dfad97b40eedb28ce213dcd3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93520e013fffbaa724e719d21751b854938ae1d138749c5845cf612ca02bf5ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def throwAesopEx (mvarId : MVarId) (remainingSafeGoals : Array MVarId)
    (safePrefixExpansionSuccess : Bool) (msg? : Option MessageData) :
    SearchM Q α := do
  if aesop.smallErrorMessages.get (← getOptions) then
    match msg? with
    | none => throwError "Tactic `aesop` failed"
    | some msg => throwError "Tactic `aesop` failed, {msg}"
  else
    let maxRapps := (← read).options.maxSafePrefixRuleApplications
    let suffix :=
      if remainingSafeGoals.isEmpty then
        m!""
      else
        let gs := .joinSep (remainingSafeGoals.toList.map toMessageData) "\n\n"
        let suffix' :=
          if safePrefixExpansionSuccess then
            m!""
          else
            m!"\nThe safe prefix was not fully expanded because the maximum number of rule applications ({maxRapps}) was reached."
        m!"\nRemaining goals after safe rules:{indentD gs}{suffix'}"
    -- Copy-pasta from `Lean.Meta.throwTacticEx`
    match msg? with
    | none => throwError "Tactic `aesop` failed\nInitial goal:{indentD mvarId}{suffix}"
    | some msg => throwError "Tactic `aesop` failed, {msg}\nInitial goal:{indentD mvarId}{suffix}"


-- When we hit a non-fatal error (i.e. the search terminates without a proof
-- because the root goal is unprovable or because we hit a search limit), we
-- usually:
--
-- - Expand all safe rules as much as possible, starting from the root node,
--   until we hit an unsafe rule. We call this the safe prefix.
-- - Extract the proof term for the safe prefix and report the remaining goals.
--
-- The first step is necessary because a goal can become unprovable due to a
-- sibling being unprovable, without the goal ever being expanded. So if we did
-- not expand the safe rules after the fact, the tactic's output would be
-- sensitive to minor changes in, e.g., rule priority.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f97661eca9705b3ffa06ae5ecee54aac129a1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
