# applyTactics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcaeaae007c433ea2386b93121223faf61a81ee8c7214e4091504754f0ea420f",
  "kind": "def",
  "lexical_name": "applyTactics",
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
  "slug": "applytactics--68ca5230efae9606628bd179",
  "source": {
    "blob": "0eb142e759bc122524f71dec3fd1c8fb63b9d3b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68ca5230efae9606628bd17919ff7e3303e36f621b8429a68e7d8c576d409f32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcaeaae007c433ea2386b93121223faf61a81ee8c7214e4091504754f0ea420f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyTactics (cfg : ApplyConfig := {}) (transparency : TransparencyMode := .default)
    (lemmas : List Expr) (g : MVarId) : MetaM (Lean.Meta.Iterator (List Lean.MVarId)) := do
  pure <|
    (← Meta.Iterator.ofList lemmas).filterMapM (fun e => observing? do
      withTraceNode `Meta.Tactic.solveByElim (fun _ => return m!"trying to apply: {e}") do
        let goals ← withTransparency transparency (g.apply e cfg)
        -- When we call `apply` interactively, `Lean.Elab.Tactic.evalApplyLikeTactic`
        -- deals with closing new typeclass goals by calling
        -- `Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing`.
        -- It seems we can't reuse that machinery down here in `MetaM`,
        -- so we just settle for trying to close each subgoal using `inferInstance`.
        goals.filterM fun g => try g.inferInstance; pure false catch _ => pure true)

/--
`applyFirst lemmas goal` applies the first of the `lemmas`
which can be successfully applied to `goal`, and fails if none apply.

We use this in `apply_rules` and `apply_assumption` where backtracking is not needed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb142e759bc122524f71dec3fd1c8fb63b9d3b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
