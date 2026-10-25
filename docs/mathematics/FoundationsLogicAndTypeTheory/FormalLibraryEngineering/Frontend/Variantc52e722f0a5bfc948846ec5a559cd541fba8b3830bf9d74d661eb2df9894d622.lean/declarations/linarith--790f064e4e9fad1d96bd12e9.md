# linarith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07137aabead3e4491c096d7114c8920e4b367330441ea85947753c96334b420d",
  "kind": "def",
  "lexical_name": "linarith",
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
  "slug": "linarith--790f064e4e9fad1d96bd12e9",
  "source": {
    "blob": "f8e1bbc1e6aca213e9e055714c74ebd3b16eeea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 331,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:790f064e4e9fad1d96bd12e97e348671e865eaeebb8a5fb9220f41b8e8ff47ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07137aabead3e4491c096d7114c8920e4b367330441ea85947753c96334b420d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def linarith (only_on : Bool) (hyps : List Expr) (cfg : LinarithConfig := {})
    (g : MVarId) : MetaM Unit := g.withContext do
  -- if the target is an equality, we run `linarith` twice, to prove ≤ and ≥.
  if (← whnfR (← instantiateMVars (← g.getType))).isEq then
    trace[linarith] "target is an equality: splitting"
    if let some [g₁, g₂] ← try? (g.apply (← mkConst' ``eq_of_not_lt_of_not_gt)) then
      withTraceNode `linarith (return m!"{exceptEmoji ·} proving ≥") <| linarith only_on hyps cfg g₁
      withTraceNode `linarith (return m!"{exceptEmoji ·} proving ≤") <| linarith only_on hyps cfg g₂
      return

  /- If we are proving a comparison goal (and not just `False`), we consider the type of the
    elements in the comparison to be the "preferred" type. That is, if we find comparison
    hypotheses in multiple types, we will run `linarith` on the goal type first.
    In this case we also receive a new variable from moving the goal to a hypothesis.
    Otherwise, there is no preferred type and no new variable; we simply change the goal to `False`.
  -/

  let (g, target_type, new_var) ← match ← applyContrLemma g with
  | (none, g) =>
    if cfg.exfalso then
      trace[linarith] "using exfalso"
      pure (← g.exfalso, none, none)
    else
      pure (g, none, none)
  | (some (t, v), g) => pure (g, some t, some v)

  g.withContext do
  -- set up the list of hypotheses, considering the `only_on` and `restrict_type` options
    let hyps ← (if only_on then return new_var.toList ++ hyps
      else return (← getLocalHyps).toList ++ hyps)

    -- TODO in mathlib3 we could specify a restriction to a single type.
    -- I haven't done that here because I don't know how to store a `Type` in `LinarithConfig`.
    -- There's only one use of the `restrict_type` configuration option in mathlib3,
    -- and it can be avoided just by using `linarith only`.

    linarithTraceProofs "linarith is running on the following hypotheses:" hyps
    runLinarith cfg target_type g hyps

end Linarith

/-! ### User facing functions -/

open Parser Tactic Syntax

/-- Syntax for the arguments of `linarith`, after the optional `!`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc52e722f0a5bfc948846ec5a559cd541fba8b3830bf9d74d661eb2df9894d622.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8e1bbc1e6aca213e9e055714c74ebd3b16eeea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
