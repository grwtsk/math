# withGrindTacticM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a14450b8ded4f8877bf2977ed7ad9c293dbf4b055803a9ea56be347a9d5accf2",
  "kind": "def",
  "lexical_name": "withGrindTacticM",
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
  "slug": "withgrindtacticm--99fc6773638b323f2e040e84",
  "source": {
    "blob": "197ba1cdf7abce2f1b95ada3eab6d5f2725cbc97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithGrindTacticM/Variant48dce4c6c9d04de685913d05fefeb2da809c2445e28f719aa8cfbf0bb5e88c13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99fc6773638b323f2e040e8462b63efdddb1316045f4b370b0b39fe7d8dbad3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithGrindTacticM/Variant48dce4c6c9d04de685913d05fefeb2da809c2445e28f719aa8cfbf0bb5e88c13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a14450b8ded4f8877bf2977ed7ad9c293dbf4b055803a9ea56be347a9d5accf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def withGrindTacticM (k : Tactic.Grind.GrindTacticM α) : CommandElabM α := do
  liftTermElabM do
  let params ← Grind.mkDefaultParams {}
  let (ctx, state) ← Grind.GrindM.run (params := params) do
    let methods ← Grind.getMethods
    let grindCtx ← readThe Meta.Grind.Context
    let symCtx ← readThe Sym.Context
    let grindState ← get
    let symState ← getThe Sym.State
    let ctx := {
      elaborator := `registerSymSimp,
      ctx := grindCtx, sctx := symCtx, methods, params
    }
    return (ctx, { grindState, symState, goals := [] })
  let (a, _) ← Tactic.Grind.GrindTacticM.run k ctx state
  return a

end Lean.Elab.Command
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithGrindTacticM/Variant48dce4c6c9d04de685913d05fefeb2da809c2445e28f719aa8cfbf0bb5e88c13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithGrindTacticM/Variant48dce4c6c9d04de685913d05fefeb2da809c2445e28f719aa8cfbf0bb5e88c13.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `197ba1cdf7abce2f1b95ada3eab6d5f2725cbc97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
