# forwardMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41b0a47ed2b5585f0b05ed197f9ab6c9df572994c8a74c94f0a759847d89aacf",
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
  "slug": "forwardmatches--923fe5e37a0d1787e9de3402",
  "source": {
    "blob": "6cd46daa1295aaeb2786c763dba00c8144d4124c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:923fe5e37a0d1787e9de340262865cf152852530e2635ee4125ac302c4030e47",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41b0a47ed2b5585f0b05ed197f9ab6c9df572994c8a74c94f0a759847d89aacf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–234.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd46daa1295aaeb2786c763dba00c8144d4124c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
