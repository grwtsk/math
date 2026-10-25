# tryDischarger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28b1ca1e8a21b4d0ca543518e2dbd8a28b35e49b67241698950b67c3f47b1e95",
  "kind": "def",
  "lexical_name": "tryDischarger",
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
  "slug": "trydischarger--9fa0def41106c95788477e3a",
  "source": {
    "blob": "b3d84ef9726b00b6f49899af6fc8be93b1623e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fa0def41106c95788477e3ac9f4379dc4baab6c53eb041d4d3509c87ca8b63b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28b1ca1e8a21b4d0ca543518e2dbd8a28b35e49b67241698950b67c3f47b1e95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryDischarger (mvarId : MVarId) : MetaM (Option (List MVarId)) := do
  try
    -- Apply the marker wrapper, creating a subgoal for try? to solve
    let type ← mvarId.getType
    let u ← getLevel type
    let markerExpr := mkApp (.const ``Lean.Try.Marker [u]) type
    let [subgoal] ← mvarId.apply markerExpr
      | return none
    -- Run try? via TacticM to solve the subgoal
    -- We suppress the "Try this" messages since we're using try? as a discharger
    let tacStx ← `(tactic| try?)
    let remainingGoals ← Elab.Term.TermElabM.run' <| Elab.Tactic.run subgoal do
      -- Suppress info messages from try?
      Elab.Tactic.withSuppressedMessages do
        Elab.Tactic.evalTactic tacStx
    if remainingGoals.isEmpty then
      return some []
    else
      return none
  catch _ =>
    return none

/--
Wrapper for calling `Lean.Meta.SolveByElim.solveByElim with
appropriate arguments for library search.

If `grind` is true, `grind` will be used as a fallback discharger for subgoals
that cannot be closed by other means.
If `try?` is true, `try?` will be used as a fallback discharger (via grind internally).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d84ef9726b00b6f49899af6fc8be93b1623e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
