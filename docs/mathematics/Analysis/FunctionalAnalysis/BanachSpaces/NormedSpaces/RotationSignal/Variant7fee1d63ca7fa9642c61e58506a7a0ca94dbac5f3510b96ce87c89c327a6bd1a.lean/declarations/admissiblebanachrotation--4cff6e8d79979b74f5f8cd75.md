# AdmissibleBanachRotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ea84cf62080cbe3d73678a76ff2a92571a5a1a45c36650ae0de651322f5359d",
  "kind": "structure",
  "lexical_name": "AdmissibleBanachRotation",
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
  "slug": "admissiblebanachrotation--4cff6e8d79979b74f5f8cd75",
  "source": {
    "blob": "cd5afd9a9e686ed502482444a45bafe5fdbe3465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 26,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7fee1d63ca7fa9642c61e58506a7a0ca94dbac5f3510b96ce87c89c327a6bd1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cff6e8d79979b74f5f8cd758d6d891ae2f468091dfb73ba59a0d9409c3dde33",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7fee1d63ca7fa9642c61e58506a7a0ca94dbac5f3510b96ce87c89c327a6bd1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ea84cf62080cbe3d73678a76ff2a92571a5a1a45c36650ae0de651322f5359d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdmissibleBanachRotation (n : Nat) (B : Type*)
    [NeZero n] [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B] where
  turn : ZMod n
  center : B
  axes : Fin n → B
  axesIndependent : LinearIndependent ℝ axes
  isometry : B ≃ₗᵢ[ℝ] B
  fixesCenter : isometry center = center
  rotatesAxes :
    ∀ i, isometry (axes i) = axes (cyclicCoordinateEquiv turn i)
  weights : Fin n → ℝ
  weightsPositive : ∀ i, 0 < weights i
  weightsInvariant :
    ∀ i, weights (cyclicCoordinateEquiv turn i) = weights i

/-- A signal on every face in every cubical dimension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7fee1d63ca7fa9642c61e58506a7a0ca94dbac5f3510b96ce87c89c327a6bd1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7fee1d63ca7fa9642c61e58506a7a0ca94dbac5f3510b96ce87c89c327a6bd1a.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5afd9a9e686ed502482444a45bafe5fdbe3465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
