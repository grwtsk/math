# replaceFVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08335890b1ff66e2e67a5c4cb5b48124812b99ddf352d2280f67bd5e74598edf",
  "kind": "def",
  "lexical_name": "replaceFVar",
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
  "slug": "replacefvar--e1bfab5b5a5f0eedf12bff38",
  "source": {
    "blob": "754da6eb051d77181d4368f9875eafe68380b7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1bfab5b5a5f0eedf12bff388e7673bfe20c0c8a66954dbca479ab21e50539e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08335890b1ff66e2e67a5c4cb5b48124812b99ddf352d2280f67bd5e74598edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replaceFVar (goal : MVarId) (fvarId : FVarId) (type : Expr) (proof : Expr) :
    MetaM (MVarId × FVarId × Bool) := do
  let userName ← goal.withContext $ fvarId.getUserName
  let preClearGoal ← goal.assert userName type proof
  let goal ← preClearGoal.tryClear fvarId
  let clearSuccess := preClearGoal != goal
  let (newFVarId, goal) ← intro1Core goal (preserveBinderNames := true)
  return (goal, newFVarId, clearSuccess)

/-- Introduce as many binders as possible while unfolding definitions with the
ambient transparency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `754da6eb051d77181d4368f9875eafe68380b7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
