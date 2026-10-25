# mkUnfoldProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e127e9744cdbc5d00c7973e4171f1e1d3f070e44fc73dda2ecd67a4e636b6a03",
  "kind": "def",
  "lexical_name": "mkUnfoldProof",
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
  "slug": "mkunfoldproof--010c62c95c58ef4173f69538",
  "source": {
    "blob": "3d511d825a7fd35db4bf68ca217743cd8f70c11f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:010c62c95c58ef4173f695389d5e0aa67e108b4ce983850cf55703c6333473ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e127e9744cdbc5d00c7973e4171f1e1d3f070e44fc73dda2ecd67a4e636b6a03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUnfoldProof (declName : Name) (mvarId : MVarId) : MetaM Unit := withTransparency .all do
  let ctx ← Simp.mkContext (config := { dsimp := false, etaStruct := .none, letToHave := false, singlePass := true })
  let simprocs := ({} : Simp.SimprocsArray)
  let simprocs ← simprocs.add ``matcherPushArg (post := false)
  match (← simpTarget mvarId ctx (simprocs := simprocs)).1 with
  | none => return ()
  | some mvarId' =>
    prependError m!"failed to finish proof for equational theorem for `{.ofConstName declName}`" do
      mvarId'.refl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Varianta325299893dad6b83de7a4ebb6faf4ae836984edc6ac5cf0d3d9d213d5e471f7.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d511d825a7fd35db4bf68ca217743cd8f70c11f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
