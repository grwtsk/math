# mem_perpBisector_pointReflection_iff_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec45c2a7-926d-f56c-9c45-77f74dc1d4c7",
  "kind": "theorem",
  "lexical_name": "mem_perpBisector_pointReflection_iff_inner_eq_zero",
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
  "slug": "mem-perpbisector-pointreflection-iff-inner-eq-zero--e281739821a0e61ebafc5371",
  "source": {
    "blob": "fddeb8958b65578f4abf112a206f09df8038b690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 64,
    "path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e281739821a0e61ebafc53718867fb216c1def92e9a6c09b398c7ded01b219e7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec45c2a7-926d-f56c-9c45-77f74dc1d4c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_perpBisector_pointReflection_iff_inner_eq_zero :
    c ∈ perpBisector p₁ (Equiv.pointReflection p₂ p₁) ↔ ⟪c -ᵥ p₂, p₁ -ᵥ p₂⟫ = 0 := by
  rw [mem_perpBisector_iff_inner_eq_zero, midpoint_pointReflection_right,
    Equiv.pointReflection_apply, vadd_vsub_assoc, inner_add_right, add_self_eq_zero,
    ← neg_eq_zero, ← inner_neg_right, neg_vsub_eq_vsub_rev]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fddeb8958b65578f4abf112a206f09df8038b690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
