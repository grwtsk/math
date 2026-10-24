# minimal_exponents_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6472292-e150-671e-5685-266d16ee5db1",
  "kind": "theorem",
  "lexical_name": "minimal_exponents_eq",
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
  "slug": "minimal-exponents-eq--85b1acca58cc66e55f0475b1",
  "source": {
    "blob": "a0f88cf7b4605fcce3b944e68ca6f288c3f6ac4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 117,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85b1acca58cc66e55f0475b1716f564e075c3e25a0a2da6fddcb0aab89d4cd38",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6472292-e150-671e-5685-266d16ee5db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimal_exponents_eq (W : WeierstrassCurve K) (hΔ : W.Δ ≠ 0)
    (C D : VariableChange K) [IsMinimal R (C • W)] [IsMinimal R (D • W)] :
    discriminantExponent R (C • W) = discriminantExponent R (D • W) := by
  have hD : IsIntegral R ((D*C⁻¹) • (C • W)) := by
    simpa only [mul_smul, inv_smul_smul] using (inferInstance : IsIntegral R (D • W))
  have hC : IsIntegral R ((C*D⁻¹) • (D • W)) := by
    simpa only [mul_smul, inv_smul_smul] using (inferInstance : IsIntegral R (C • W))
  have hCD := minimal_exponent_le_competitor R (C • W)
    (changed_delta_ne_zero R W hΔ C) (D*C⁻¹) hD
  have hDC := minimal_exponent_le_competitor R (D • W)
    (changed_delta_ne_zero R W hΔ D) (C*D⁻¹) hC
  simp only [mul_smul, inv_smul_smul] at hCD hDC
  exact le_antisymm hCD hDC

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f88cf7b4605fcce3b944e68ca6f288c3f6ac4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
