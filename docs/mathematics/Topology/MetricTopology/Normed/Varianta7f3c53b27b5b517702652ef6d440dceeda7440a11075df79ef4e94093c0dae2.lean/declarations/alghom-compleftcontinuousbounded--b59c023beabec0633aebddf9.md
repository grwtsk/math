# AlgHom.compLeftContinuousBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4216cb6b010d314c3f876f5384ab7b6aecec2013ae5c631ba2da0b456a894dba",
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
  "slug": "alghom-compleftcontinuousbounded--b59c023beabec0633aebddf9",
  "source": {
    "blob": "1ce5689f03c0829f322a527247cf3d3596eb49ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 440,
    "path": "GRWTSK/Topology/MetricTopology/Normed/Varianta7f3c53b27b5b517702652ef6d440dceeda7440a11075df79ef4e94093c0dae2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b59c023beabec0633aebddf9310a2026372bfa35e8209d42f3c9c5e04ee64a4d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Normed/Varianta7f3c53b27b5b517702652ef6d440dceeda7440a11075df79ef4e94093c0dae2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4216cb6b010d314c3f876f5384ab7b6aecec2013ae5c631ba2da0b456a894dba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–447.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Normed/Varianta7f3c53b27b5b517702652ef6d440dceeda7440a11075df79ef4e94093c0dae2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Normed/Varianta7f3c53b27b5b517702652ef6d440dceeda7440a11075df79ef4e94093c0dae2.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce5689f03c0829f322a527247cf3d3596eb49ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
