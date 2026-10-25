# _root_.Lean.MVarId.gcongrForward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9aaeb3bb0195e707cd02e2914f4fe4d6962700fddae6dc3e9f18390d3452467c",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.gcongrForward",
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
  "slug": "root-lean-mvarid-gcongrforward--b984ef0ad84e76c2a268a8d9",
  "source": {
    "blob": "b4b9f4cab66495a3472a4d0413c2e0956043d91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 373,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b984ef0ad84e76c2a268a8d9464b967ff7652910fa4970be6d042f533c06e9fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9aaeb3bb0195e707cd02e2914f4fe4d6962700fddae6dc3e9f18390d3452467c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.gcongrForward (hs : Array Expr) (g : MVarId) : MetaM Unit :=
  withReducible do
    let s ← saveState
    withTraceNode `Meta.gcongr (fun _ => return m!"gcongr_forward: ⊢ {← g.getType}") do
    -- Iterate over a list of terms
    let tacs := (forwardExt.getState (← getEnv)).2
    for h in hs do
      try
        tacs.firstM fun (n, tac) =>
          withTraceNode `Meta.gcongr (return m!"{·.emoji} trying {n} on {h} : {← inferType h}") do
            tac.eval h g
        return
      catch _ => s.restore
    throwError "gcongr_forward failed"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4b9f4cab66495a3472a4d0413c2e0956043d91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
