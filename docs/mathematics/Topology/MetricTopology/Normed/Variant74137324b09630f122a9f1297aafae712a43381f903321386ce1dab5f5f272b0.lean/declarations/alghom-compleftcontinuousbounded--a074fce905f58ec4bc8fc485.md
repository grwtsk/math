# AlgHom.compLeftContinuousBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ae99baf2a929a5d5b1474b310264e509205e796b9af4566f2d5581fa09cff27",
  "kind": "def",
  "lexical_name": "AlgHom.compLeftContinuousBounded",
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
  "slug": "alghom-compleftcontinuousbounded--a074fce905f58ec4bc8fc485",
  "source": {
    "blob": "3a8455226a8b93d19a0e9139efb131b0a6670280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 448,
    "path": "GRWTSK/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a074fce905f58ec4bc8fc4858db70cb416505db24272bd87f442f58d68f42abb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ae99baf2a929a5d5b1474b310264e509205e796b9af4566f2d5581fa09cff27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def AlgHom.compLeftContinuousBounded
    [NormedRing β] [NormedAlgebra 𝕜 β] [NormedRing γ] [NormedAlgebra 𝕜 γ]
    (g : β →ₐ[𝕜] γ) {C : NNReal} (hg : LipschitzWith C g) : (α →ᵇ β) →ₐ[𝕜] (α →ᵇ γ) :=
  { g.toRingHom.compLeftContinuousBounded α hg with
    commutes' := fun _ => DFunLike.ext _ _ fun _ => g.commutes' _ }

/-- The algebra-homomorphism forgetting that a bounded continuous function is bounded. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Normed/Variant74137324b09630f122a9f1297aafae712a43381f903321386ce1dab5f5f272b0.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a8455226a8b93d19a0e9139efb131b0a6670280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
