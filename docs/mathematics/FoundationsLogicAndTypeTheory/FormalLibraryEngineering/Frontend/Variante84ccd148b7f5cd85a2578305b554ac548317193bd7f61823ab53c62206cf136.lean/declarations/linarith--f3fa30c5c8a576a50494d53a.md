# linarith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca230468222dccfe84a660394bb094ec84a38bf0a5d67d6d5bead7315e6dd347",
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
  "slug": "linarith--f3fa30c5c8a576a50494d53a",
  "source": {
    "blob": "b0c2f17b058b2c932d97154439f265bdb31c646a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3fa30c5c8a576a50494d53aa09c94bfcde0644caa2d91e82da17fa3ca9b3b82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca230468222dccfe84a660394bb094ec84a38bf0a5d67d6d5bead7315e6dd347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def linarith (only_on : Bool) (hyps : List Expr) (cfg : LinarithConfig := {})
    (g : MVarId) : MetaM Unit := do
  -- if the target is an equality, we run `linarith` twice, to prove ≤ and ≥.
  if (← whnfR (← instantiateMVars (← g.getType))).isEq then
    trace[linarith] "target is an equality: splitting"
    if let some [g₁, g₂] ← try? (g.apply (← mkConst' ``eq_of_not_lt_of_not_gt)) then
      linarith only_on hyps cfg g₁
      linarith only_on hyps cfg g₂
      return

  /- If we are proving a comparison goal (and not just `false`), we consider the type of the
    elements in the comparison to be the "preferred" type. That is, if we find comparison
    hypotheses in multiple types, we will run `linarith` on the goal type first.
    In this case we also receive a new variable from moving the goal to a hypothesis.
    Otherwise, there is no preferred type and no new variable; we simply change the goal to `false`.
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0c2f17b058b2c932d97154439f265bdb31c646a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
