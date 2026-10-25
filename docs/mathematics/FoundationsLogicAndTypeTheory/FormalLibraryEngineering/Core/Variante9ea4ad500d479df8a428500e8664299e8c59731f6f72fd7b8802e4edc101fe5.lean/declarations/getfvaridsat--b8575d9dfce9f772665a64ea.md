# getFVarIdsAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:749920fb1b98329e60fbe858b1281ce47c65377701dece9ebfc1cec2e09158ad",
  "kind": "def",
  "lexical_name": "getFVarIdsAt",
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
  "slug": "getfvaridsat--b8575d9dfce9f772665a64ea",
  "source": {
    "blob": "f3b7be3bc22e265d8ff9eaa89d4afdf7e137c2e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante9ea4ad500d479df8a428500e8664299e8c59731f6f72fd7b8802e4edc101fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8575d9dfce9f772665a64ea2a6d23656205734a2d400de56ebadfd535601f4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante9ea4ad500d479df8a428500e8664299e8c59731f6f72fd7b8802e4edc101fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:749920fb1b98329e60fbe858b1281ce47c65377701dece9ebfc1cec2e09158ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getFVarIdsAt (goal : MVarId) (ids : Option (Array Syntax) := none)
    (includeImplementationDetails : Bool := false) : TacticM (Array FVarId) :=
  goal.withContext do
    let lctx := (← goal.getDecl).lctx
    let fvarIds ← match ids with
    | none => pure lctx.getFVarIds
    | some ids => ids.mapM <| getFVarIdAt goal
    if includeImplementationDetails then
      return fvarIds
    else
      return filterOutImplementationDetails lctx fvarIds

/--
Run a tactic on all goals, and always succeeds.

(This is parallel to `Lean.Elab.Tactic.evalAllGoals` in core,
which takes a `Syntax` rather than `TacticM Unit`.
This function could be moved to core and `evalAllGoals` refactored to use it.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante9ea4ad500d479df8a428500e8664299e8c59731f6f72fd7b8802e4edc101fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante9ea4ad500d479df8a428500e8664299e8c59731f6f72fd7b8802e4edc101fe5.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3b7be3bc22e265d8ff9eaa89d4afdf7e137c2e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
