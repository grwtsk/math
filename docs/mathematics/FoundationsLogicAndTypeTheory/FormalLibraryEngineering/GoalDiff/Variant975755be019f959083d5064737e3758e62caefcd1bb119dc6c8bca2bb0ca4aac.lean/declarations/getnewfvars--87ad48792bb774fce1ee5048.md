# getNewFVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cff4be35a9d136cd1efe99a54534731704f17db880700d7fbf32eb04df0e9a76",
  "kind": "def",
  "lexical_name": "getNewFVars",
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
  "slug": "getnewfvars--87ad48792bb774fce1ee5048",
  "source": {
    "blob": "1ed842f5d83057307e768a18d50c0e232954423e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87ad48792bb774fce1ee50480a5091b02246922c38c01dee72046c84550ec1cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cff4be35a9d136cd1efe99a54534731704f17db880700d7fbf32eb04df0e9a76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getNewFVars (newGoal : MVarId) (oldLCtx newLCtx : LocalContext) :
    MetaM (Std.HashSet FVarId) :=
  newGoal.withContext do newLCtx.foldlM (init := ∅) λ newFVars ldecl => do
    if ldecl.isImplementationDetail then
      return newFVars
    if let some oldLDecl := oldLCtx.find? ldecl.fvarId then
      if ← isGoalDiffDefeqLDecl oldLDecl ldecl then
        return newFVars
      else
        return newFVars.insert ldecl.fvarId
    else
      return newFVars.insert ldecl.fvarId

/--
Diff two goals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed842f5d83057307e768a18d50c0e232954423e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
