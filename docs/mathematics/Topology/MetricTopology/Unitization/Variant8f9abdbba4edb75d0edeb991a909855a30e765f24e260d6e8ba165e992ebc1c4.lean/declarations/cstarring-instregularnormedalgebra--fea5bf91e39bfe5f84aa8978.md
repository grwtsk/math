# CStarRing.instRegularNormedAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c8987abe27b6a714697de1c9026b0aac02739d1e4b58c1307e8eaadbe7708f7",
  "kind": "instance",
  "lexical_name": "CStarRing.instRegularNormedAlgebra",
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
  "slug": "cstarring-instregularnormedalgebra--fea5bf91e39bfe5f84aa8978",
  "source": {
    "blob": "3e1ef0b0d4f8cab720253e7bb40439d2cc6d7663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 60,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fea5bf91e39bfe5f84aa8978c740e4c2b65b46615dec4100b692c2a01f2a1b96",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c8987abe27b6a714697de1c9026b0aac02739d1e4b58c1307e8eaadbe7708f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CStarRing.instRegularNormedAlgebra : RegularNormedAlgebra 𝕜 E where
  isometry_mul' := AddMonoidHomClass.isometry_of_norm (mul 𝕜 E) fun a => NNReal.eq_iff.mp <|
    show ‖mul 𝕜 E a‖₊ = ‖a‖₊ by
    rw [← sSup_unitClosedBall_eq_nnnorm]
    refine csSup_eq_of_forall_le_of_forall_lt_exists_gt ?_ ?_ fun r hr => ?_
    · exact (Metric.nonempty_closedBall.mpr zero_le_one).image _
    · rintro - ⟨x, hx, rfl⟩
      exact
        ((mul 𝕜 E a).unit_le_opNorm x <| mem_closedBall_zero_iff.mp hx).trans
          (opNorm_mul_apply_le 𝕜 E a)
    · have ha : 0 < ‖a‖₊ := hr.pos
      rw [← inv_inv ‖a‖₊, NNReal.lt_inv_iff_mul_lt (inv_ne_zero ha.ne')] at hr
      obtain ⟨k, hk₁, hk₂⟩ :=
        NormedField.exists_lt_nnnorm_lt 𝕜 (mul_lt_mul_of_pos_right hr <| inv_pos.2 ha)
      refine ⟨_, ⟨k • star a, ?_, rfl⟩, ?_⟩
      · simpa only [mem_closedBall_zero_iff, norm_smul, one_mul, norm_star] using!
          (NNReal.le_inv_iff_mul_le ha.ne').1 (one_mul ‖a‖₊⁻¹ ▸ hk₂.le : ‖k‖₊ ≤ ‖a‖₊⁻¹)
      · simp only [map_smul, nnnorm_smul, mul_apply', CStarRing.nnnorm_self_mul_star]
        rwa [← div_lt_iff₀ (mul_pos ha ha), div_eq_mul_inv, mul_inv, ← mul_assoc]

section CStarProperty

variable [StarRing 𝕜] [StarModule 𝕜 E]
variable {E}

/-- This is the key lemma used to establish the instance `Unitization.instCStarRing`
(i.e., proving that the norm on `Unitization 𝕜 E` satisfies the C⋆-property). We split this one
out so that declaring the `CStarRing` instance doesn't time out. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variant8f9abdbba4edb75d0edeb991a909855a30e765f24e260d6e8ba165e992ebc1c4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e1ef0b0d4f8cab720253e7bb40439d2cc6d7663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
