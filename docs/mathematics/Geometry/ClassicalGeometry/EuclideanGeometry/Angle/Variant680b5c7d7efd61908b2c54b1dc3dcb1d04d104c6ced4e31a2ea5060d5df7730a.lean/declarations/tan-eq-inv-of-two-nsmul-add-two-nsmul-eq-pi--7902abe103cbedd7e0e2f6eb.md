# tan_eq_inv_of_two_nsmul_add_two_nsmul_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "815f53c00815218f96f6ae5af380b3feb4a51f42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 702,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e64808d-328f-f96f-da22-61b933699f22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:675ea16c-8360-f1c8-2be2-c5b85a09f757",
  "kind": "theorem",
  "lexical_name": "tan_eq_inv_of_two_nsmul_add_two_nsmul_eq_pi",
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
  "slug": "tan-eq-inv-of-two-nsmul-add-two-nsmul-eq-pi--7902abe103cbedd7e0e2f6eb",
  "source": {
    "blob": "815f53c00815218f96f6ae5af380b3feb4a51f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 702,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7902abe103cbedd7e0e2f6ebb402c4f3784b1de3bc8f7c9c0009ac0f07027e14",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:675ea16c-8360-f1c8-2be2-c5b85a09f757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_eq_inv_of_two_nsmul_add_two_nsmul_eq_pi {θ ψ : Angle}
    (h : (2 : ℕ) • θ + (2 : ℕ) • ψ = π) : tan ψ = (tan θ)⁻¹ := by
  induction θ using Real.Angle.induction_on
  induction ψ using Real.Angle.induction_on
  rw [← smul_add, ← coe_add, ← coe_nsmul, two_nsmul, ← two_mul, angle_eq_iff_two_pi_dvd_sub] at h
  rcases h with ⟨k, h⟩
  rw [sub_eq_iff_eq_add, ← mul_inv_cancel_left₀ two_ne_zero π, mul_assoc, ← mul_add,
    mul_right_inj' (two_ne_zero' ℝ), ← eq_sub_iff_add_eq', mul_inv_cancel_left₀ two_ne_zero π,
    inv_mul_eq_div, mul_comm] at h
  rw [tan_coe, tan_coe, ← tan_pi_div_two_sub, h, add_sub_assoc, add_comm]
  exact Real.tan_periodic.int_mul _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `815f53c00815218f96f6ae5af380b3feb4a51f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
