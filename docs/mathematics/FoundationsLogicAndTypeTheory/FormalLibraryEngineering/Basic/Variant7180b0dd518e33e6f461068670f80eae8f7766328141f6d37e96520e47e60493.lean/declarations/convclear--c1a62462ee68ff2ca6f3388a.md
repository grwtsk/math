# convClear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00748aee6d8ca23240652d08d2de81902efedc97ab79a52cea4c2f6b61d0d66a",
  "kind": "def",
  "lexical_name": "convClear",
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
  "slug": "convclear--c1a62462ee68ff2ca6f3388a",
  "source": {
    "blob": "9dfd08124d5d2d3d786f8ead005f5f92a15b6d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7180b0dd518e33e6f461068670f80eae8f7766328141f6d37e96520e47e60493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1a62462ee68ff2ca6f3388a19436fa18909dd5409e4d36cc0bf4449b22360e4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7180b0dd518e33e6f461068670f80eae8f7766328141f6d37e96520e47e60493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00748aee6d8ca23240652d08d2de81902efedc97ab79a52cea4c2f6b61d0d66a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def convClear (mvarId : MVarId) (fvarId : FVarId) : MetaM MVarId := do
  let (lhs, rhs) ← getLhsRhsCore mvarId
  let rhs ← instantiateMVars rhs
  unless rhs.isMVar do
    return (← mvarId.clear fvarId)
  let rhsKind ← rhs.mvarId!.getKind
  -- Clear the fvar from the RHS mvar's context so that it isn't detected as a dependent. Note that
  -- `clear` always produces a synthetic-opaque mvar, so we need to reset its kind afterward
  let rhs' ← rhs.mvarId!.clear fvarId
  rhs'.setKind rhsKind
  let mvarId' ← mvarId.replaceTargetDefEq (mkLHSGoalRaw (← mkEq lhs (mkMVar rhs')))
  let mvarIdCleared ← mvarId'.clear fvarId
  return mvarIdCleared

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7180b0dd518e33e6f461068670f80eae8f7766328141f6d37e96520e47e60493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7180b0dd518e33e6f461068670f80eae8f7766328141f6d37e96520e47e60493.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dfd08124d5d2d3d786f8ead005f5f92a15b6d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
