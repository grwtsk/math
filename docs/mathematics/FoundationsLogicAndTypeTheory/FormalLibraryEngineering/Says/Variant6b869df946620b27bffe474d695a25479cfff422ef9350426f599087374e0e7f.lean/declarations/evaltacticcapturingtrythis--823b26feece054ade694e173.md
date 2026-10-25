# evalTacticCapturingTryThis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86a12ccff856236fdf554148286b118782a7fe4b77b2f7f9402ee622ef334c25",
  "kind": "def",
  "lexical_name": "evalTacticCapturingTryThis",
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
  "slug": "evaltacticcapturingtrythis--823b26feece054ade694e173",
  "source": {
    "blob": "fc0e6f97f5bdbc6cca8038953f4de781778b4221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant6b869df946620b27bffe474d695a25479cfff422ef9350426f599087374e0e7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:823b26feece054ade694e1732ee9f54a8c2def6efca91a77cbdf8fe0541be6d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant6b869df946620b27bffe474d695a25479cfff422ef9350426f599087374e0e7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86a12ccff856236fdf554148286b118782a7fe4b77b2f7f9402ee622ef334c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalTacticCapturingTryThis (tac : TSyntax `tactic) : TacticM (TSyntax ``tacticSeq) := do
  let { trees, ..} ← withResetServerInfo <| evalTactic tac
  let suggestions := collectTryThisSuggestions trees
  let some s := suggestions[0]?
    | throwError m!"Tactic `{tac}` did not produce a 'Try this:' suggestion."
  let suggestion ← do
    if let some msg := s.messageData? then
      pure <| SuggestionText.string <| ← msg.toString
    else
      pure <| s.suggestion
  match suggestion with
  | .tsyntax (kind := ``tacticSeq) stx =>
    return stx
  | .tsyntax (kind := `tactic) stx =>
    return ← `(tacticSeq| $stx:tactic)
  | .tsyntax stx =>
    throwError m!"Tactic `{tac}` produced a 'Try this:' suggestion with a non-tactic syntax: {stx}"
  | .string s =>
    match Mathlib.GuardExceptions.parseAsTacticSeq (← getEnv) s with
    | .ok stx => return stx
    | .error err => throwError m!"Failed to parse 'Try this:' suggestion: {s}\n{err}"

/--
`tac₁ says tac₂` runs `tac₂`. In CI it also runs `tac₁` and validates that `tac₁` produces
a "Try this: `tac₂`" message. Use `set_option says.verify true` to enable the validation step on
your own machine.

The `says` combinator is intended to be used when `tac₁` is meaningful but slow and `tac₂` is faster
but hard to read: for example, `simp? [X] says simp only [X, Y, Z]`.

To generate or update the correct value of `tac₂`, write `tac₁ says`. You will get a message
"Try this: `tac₁ says tac₂`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant6b869df946620b27bffe474d695a25479cfff422ef9350426f599087374e0e7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variant6b869df946620b27bffe474d695a25479cfff422ef9350426f599087374e0e7f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc0e6f97f5bdbc6cca8038953f4de781778b4221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
