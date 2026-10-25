# elabInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2864b2936151222407e7afe48e023286e3449fb88294691b8cb3cd81038696c9",
  "kind": "def",
  "lexical_name": "elabInvariant",
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
  "slug": "elabinvariant--bbef6a8225a79127254f79ef",
  "source": {
    "blob": "0a17222d80bbcf909b75c6ec90af8ccf1cad3e5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant3228411b112a5cbe31089a49e8e4fd04c600a86bd572da5d6ff9fd84c1061277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbef6a8225a79127254f79efd4c17d54a657359c40189a60236ed76c7e28b099",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant3228411b112a5cbe31089a49e8e4fd04c600a86bd572da5d6ff9fd84c1061277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2864b2936151222407e7afe48e023286e3449fb88294691b8cb3cd81038696c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def elabInvariant (invariantAlts : Std.HashMap Nat Syntax) (n : Nat) (mv : MVarId) : SymM Bool := do
  try
    let some alt := invariantAlts[n]? | return false
    let tac ← match alt with
      | `(Lean.Parser.Tactic.invariantDotAlt| · $rhs) => `(tactic| exact $rhs)
      | `(Lean.Parser.Tactic.invariantCaseAlt| | $_tag $args* => $rhs) =>
          `(tactic| (rename_i $args*; exact $rhs))
      | _ => return false
    -- `withDefault`: the surrounding grind context forces reducible transparency,
    -- under which the invariant's binder type (e.g. `List.Cursor _`) isn't
    -- resolved enough for term elaboration of `xs.suffix.length` to succeed.
    withRef alt <| discard <| Meta.withDefault <| Lean.Elab.runTactic mv tac {} {}
    -- The tactic runs without throwing even when it fails to close the goal;
    -- check explicitly that the MVar got assigned.
    if ← mv.isAssigned then
      -- Preprocess the assignment to `mv` because it will interact with the `SymM` world
      if let some val ← getExprMVarAssignment? mv then
        let val ← unfoldReducible val
        let val ← shareCommon val
        mv.assign val
      return true
    else
      return false
  catch _ => return false

/-- Pull invariant subgoals out of `subgoals` and handle them eagerly: register
each in `State.invariants` (1-based stable index) and try to inline-elaborate
its matching user alt. Returns the remaining non-invariant subgoals for `work`
to enqueue. Eager handling here ensures dependent VCs see `?inv` assigned by
the time they reach `emitVC`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant3228411b112a5cbe31089a49e8e4fd04c600a86bd572da5d6ff9fd84c1061277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant3228411b112a5cbe31089a49e8e4fd04c600a86bd572da5d6ff9fd84c1061277.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a17222d80bbcf909b75c6ec90af8ccf1cad3e5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
