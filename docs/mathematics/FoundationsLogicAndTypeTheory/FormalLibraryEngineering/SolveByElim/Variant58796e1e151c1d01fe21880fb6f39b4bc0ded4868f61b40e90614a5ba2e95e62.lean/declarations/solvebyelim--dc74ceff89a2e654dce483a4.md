# solveByElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c5e5887e6b0fcd99b4bc6963c59c333dc91a13cd8b5a20d628f249bf60c41ae",
  "kind": "def",
  "lexical_name": "solveByElim",
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
  "slug": "solvebyelim--dc74ceff89a2e654dce483a4",
  "source": {
    "blob": "5edc6405bb9d3379ec16ad71ee3afa318d241a43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc74ceff89a2e654dce483a43c612d11f42686345da801fcff2370608f82d44e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c5e5887e6b0fcd99b4bc6963c59c333dc91a13cd8b5a20d628f249bf60c41ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solveByElim (cfg : Config) (lemmas : List (TermElabM Expr)) (ctx : TermElabM (List Expr))
    (goals : List MVarId) : MetaM (List MVarId) := do
  try
    run goals
  catch e => do
    -- Implementation note: as with `cfg.symm`, this is different from the mathlib3 approach,
    -- for (not as severe) performance reasons.
    match goals, cfg.exfalso with
    | [g], true =>
      withTraceNode `Meta.Tactic.solveByElim
          (fun _ => return m!"⏮️ starting over using `exfalso`") do
        run [← g.exfalso]
    | _, _ => throw e
where
  -- Run either backtracking search, or repeated application, on the list of goals.
  run : List MVarId → MetaM (List MVarId) := if cfg.backtracking then
    backtrack cfg `Meta.Tactic.solveByElim (applyLemmas cfg lemmas ctx)
  else
    repeat1' (maxIters := cfg.maxDepth) (applyFirstLemma cfg lemmas ctx)

/--
A `MetaM` analogue of the `apply_rules` user tactic.

We pass the lemmas as `TermElabM Expr` rather than just `Expr`,
so they can be generated fresh for each application, to avoid stuck metavariables.

By default it uses all local hypotheses, but you can disable this with `only := true`.
If you need to remove particular local hypotheses, call `solveByElim` directly.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variant58796e1e151c1d01fe21880fb6f39b4bc0ded4868f61b40e90614a5ba2e95e62.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5edc6405bb9d3379ec16ad71ee3afa318d241a43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
