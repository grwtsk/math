# isCompactOperator_iff_isCompact_closure_image_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d234c1e-6d8c-dfed-1ed6-46941c4718fb",
  "kind": "theorem",
  "lexical_name": "isCompactOperator_iff_isCompact_closure_image_closedBall",
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
  "slug": "iscompactoperator-iff-iscompact-closure-image-closedball--f513420fb652ee219429c9a4",
  "source": {
    "blob": "d68de6ae879308632034bf3882b05e94c3790b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f513420fb652ee219429c9a47a2fba4edd20d107e294fd85b87ded7251250687",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d234c1e-6d8c-dfed-1ed6-46941c4718fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompactOperator_iff_isCompact_closure_image_closedBall [ContinuousConstSMul 𝕜₂ M₂]
    [T2Space M₂] (f : M₁ →ₛₗ[σ₁₂] M₂) {r : ℝ} (hr : 0 < r) :
    IsCompactOperator f ↔ IsCompact (closure <| f '' Metric.closedBall 0 r) :=
  ⟨fun hf => hf.isCompact_closure_image_closedBall r, fun hf =>
    (isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image f).mpr
      ⟨Metric.closedBall 0 r, closedBall_mem_nhds _ hr, hf⟩⟩
#align is_compact_operator_iff_is_compact_closure_image_closed_ball isCompactOperator_iff_isCompact_closure_image_closedBall

end NormedSpace

end Characterizations

section Operations

variable {R₁ R₂ R₃ R₄ : Type*} [Semiring R₁] [Semiring R₂] [CommSemiring R₃] [CommSemiring R₄]
  {σ₁₂ : R₁ →+* R₂} {σ₁₄ : R₁ →+* R₄} {σ₃₄ : R₃ →+* R₄} {M₁ M₂ M₃ M₄ : Type*} [TopologicalSpace M₁]
  [AddCommMonoid M₁] [TopologicalSpace M₂] [AddCommMonoid M₂] [TopologicalSpace M₃]
  [AddCommGroup M₃] [TopologicalSpace M₄] [AddCommGroup M₄]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d68de6ae879308632034bf3882b05e94c3790b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
