# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongrKey.Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.Lean.MVarId.gcongrForward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25d69ecde95dce27a137de4c9a7cef58ad38c57b2286fa25e2e99601d9121015",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongrKey.Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.Lean.MVarId.gcongrForward",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-gcong--8e30d0e24a0d44e7dbccfd9b",
  "source": {
    "blob": "89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 546,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e30d0e24a0d44e7dbccfd9b34950bc344d59960323e0f37c6651b5827d6c3d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25d69ecde95dce27a137de4c9a7cef58ad38c57b2286fa25e2e99601d9121015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongrKey.Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.Lean.MVarId.gcongrForward (hs : Array Expr) (g : MVarId) : MetaM Bool := withReducible do
  withTraceNode `Meta.gcongr (fun _ => return m!"gcongr_forward: ⊢ {← g.getType}") do
  -- Iterate over a list of terms
  let tacs := (forwardExt.getState (← getEnv)).2
  let mctx ← getMCtx
  for h in hs do
    try
      tacs.firstM fun (n, tac) =>
        withTraceNode `Meta.gcongr (return m!"{·.emoji} trying {n} on {h} : {← inferType h}") do
          tac.eval h g
      return true
    catch _ => setMCtx mctx
    try
      let h ← h.applySymm
      tacs.firstM fun (n, tac) =>
        withTraceNode `Meta.gcongr (return m!"{·.emoji} trying {n} on {h} : {← inferType h}") do
          tac.eval h g
      return true
    catch _ => setMCtx mctx
  return false

/--
This is used as the default main-goal discharger,
consisting of running `Lean.MVarId.gcongrForward` (trying a term together with limited
forward-reasoning on that term) on each nontrivial hypothesis.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
