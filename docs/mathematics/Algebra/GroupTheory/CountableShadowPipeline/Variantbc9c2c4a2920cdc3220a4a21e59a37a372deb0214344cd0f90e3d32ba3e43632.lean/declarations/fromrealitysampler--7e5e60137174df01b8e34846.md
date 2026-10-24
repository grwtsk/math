# fromRealitySampler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ad2a4d5866c96a0b75ef5bfcae3580d6b9b5d86340b5b468637982af8c04811",
  "kind": "def",
  "lexical_name": "fromRealitySampler",
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
  "slug": "fromrealitysampler--7e5e60137174df01b8e34846",
  "source": {
    "blob": "800333be39339666675a34ff95d5ab739f138169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 135,
    "path": "GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variantbc9c2c4a2920cdc3220a4a21e59a37a372deb0214344cd0f90e3d32ba3e43632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e5e60137174df01b8e34846adfe5d35f843a0a96d140b855868e0d38b96d1b9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CountableShadowPipeline/Variantbc9c2c4a2920cdc3220a4a21e59a37a372deb0214344cd0f90e3d32ba3e43632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ad2a4d5866c96a0b75ef5bfcae3580d6b9b5d86340b5b468637982af8c04811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromRealitySampler
    (R : AnalyticRealityDescriptor)
    (S : RealitySampler R)
    (_hCompact : RealitySupportCompact R)
    (_hFaithful : Function.Injective S.infiniteSample) :
    ∃ T : BinaryMatrixTower,
      T.samplesReality ∧ T.refinementCompatible ∧ T.finitePrefixVerified :=
  let T : BinaryMatrixTower :=
    { towerHash := R.descriptorHash + S.samplerHash
      sourceTreeHash := R.descriptorHash
      refinementHash := S.samplerHash
      supportHash := R.descriptorHash
      theoremResolutionHash := R.descriptorHash
      admissibleLimitClosed := True
      compactLimit := R.compactReality
      compactLimitProof := fun _ => R.compactRealityProof
      stageCompatible := True
      stageCompatibleProof := trivial
      coversFiniteWindows := True
      coversFiniteWindowsProof := trivial
      samplesRealityHash := S.samplerHash
      samplesReality := True
      samplesRealityProof := trivial
      refinementCompatible := True
      refinementCompatibleProof := trivial
      finitePrefixVerified := True
      finitePrefixProof := trivial }
  ⟨T, T.samplesRealityProof, T.refinementCompatibleProof, T.finitePrefixProof⟩

end BinaryMatrixTower

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CountableShadowPipeline/Variantbc9c2c4a2920cdc3220a4a21e59a37a372deb0214344cd0f90e3d32ba3e43632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CountableShadowPipeline/Variantbc9c2c4a2920cdc3220a4a21e59a37a372deb0214344cd0f90e3d32ba3e43632.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800333be39339666675a34ff95d5ab739f138169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
