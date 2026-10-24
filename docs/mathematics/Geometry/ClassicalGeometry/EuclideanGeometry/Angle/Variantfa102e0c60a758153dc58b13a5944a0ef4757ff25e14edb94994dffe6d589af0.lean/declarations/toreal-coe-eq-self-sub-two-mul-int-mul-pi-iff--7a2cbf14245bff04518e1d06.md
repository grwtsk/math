# toReal_coe_eq_self_sub_two_mul_int_mul_pi_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb045027-a735-0f76-1cd5-1bb9b42a206b",
  "kind": "theorem",
  "lexical_name": "toReal_coe_eq_self_sub_two_mul_int_mul_pi_iff",
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
  "slug": "toreal-coe-eq-self-sub-two-mul-int-mul-pi-iff--7a2cbf14245bff04518e1d06",
  "source": {
    "blob": "8464084c8889b5b5a659c5bb51b4a6ed3e6ad874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 691,
    "line": 685,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a2cbf14245bff04518e1d06831b45f4c23d1988a3927bdc7989fcf6c6fe866a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb045027-a735-0f76-1cd5-1bb9b42a206b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–691.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toReal_coe_eq_self_sub_two_mul_int_mul_pi_iff {θ : ℝ} {k : ℤ} :
    (θ : Angle).toReal = θ - 2 * k * π ↔ θ ∈ Set.Ioc ((2 * k - 1 : ℝ) * π) ((2 * k + 1) * π) := by
  rw [← sub_zero (θ : Angle), ← zsmul_zero k, ← coe_two_pi, ← coe_zsmul, ← coe_sub, zsmul_eq_mul, ←
    mul_assoc, mul_comm (k : ℝ), toReal_coe_eq_self_iff, Set.mem_Ioc]
  exact ⟨fun h => ⟨by linarith, by linarith⟩, fun h => ⟨by linarith, by linarith⟩⟩
#align real.angle.to_real_coe_eq_self_sub_two_mul_int_mul_pi_iff Real.Angle.toReal_coe_eq_self_sub_two_mul_int_mul_pi_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantfa102e0c60a758153dc58b13a5944a0ef4757ff25e14edb94994dffe6d589af0.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8464084c8889b5b5a659c5bb51b4a6ed3e6ad874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
