# forwardMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e630139637c2fd7125229f469a620ff62a692139c1da31316162acb6e624e8b",
  "kind": "def",
  "lexical_name": "forwardMatches",
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
  "slug": "forwardmatches--e33ba5025227d544de1d7c2b",
  "source": {
    "blob": "9d85e515ada23bfb7e8f1cd059d8f4774f504acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e33ba5025227d544de1d7c2b09475bf8d0a430a04e526f8cd55dd59943367447",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e630139637c2fd7125229f469a620ff62a692139c1da31316162acb6e624e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forwardMatches (ms : Array ForwardRuleMatch) : RuleTac :=
  SingleRuleTac.toRuleTac λ input => do
    let mut goal := input.goal
    let mut addedFVars := ∅
    let mut removedFVars := ∅
    let mut anySuccess := false
    let mut steps := #[]
    for m in ms do
      let (some (goal', hyp, removedFVars'), steps') ←
        m.apply goal (skipExistingProps := true) |>.run
        | continue
      anySuccess := true
      goal := goal'
      addedFVars := addedFVars.insert hyp
      removedFVars := removedFVars.insertMany removedFVars'
      steps := steps ++ steps'
    if ! anySuccess then
      throwError "failed to add hyps for any of the following forward rule matches:{indentD $ MessageData.joinSep (ms.map toMessageData |>.toList) "\n"}"
    let diff := {
      oldGoal := input.goal
      newGoal := goal
      targetChanged := .false
      addedFVars, removedFVars
    }
    return (#[{ diff }], some steps, none)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant38adcaba86ec72168412761bf8464015eeb878436b3ba8bc8f415a203f412f2a.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d85e515ada23bfb7e8f1cd059d8f4774f504acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
