# inverse_sqrt_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:457035ab-07e1-0e99-83f4-a1aa15625e14",
  "kind": "theorem",
  "lexical_name": "inverse_sqrt_integral",
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
  "slug": "inverse-sqrt-integral--9ece09c30c2a3fa5740322b8",
  "source": {
    "blob": "b0e95b1dc23f1700c8892652db73d1586345d97c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 111,
    "path": "GRWTSK/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ece09c30c2a3fa5740322b82e2159c88bbadb2c68253d04d70d3f4418a62c86",
  "verification": {
    "reference": "docs/verification/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:457035ab-07e1-0e99-83f4-a1aa15625e14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_sqrt_integral {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    (∫ x in A ^ 2..Real.exp t, (Real.sqrt x)⁻¹) =
      2 * (Real.exp (t / 2) - A) := by
  have hcut := cutoff_order hA ht
  calc
    _ = ∫ x in A ^ 2..Real.exp t, x ^ (-(1 / 2 : ℝ)) := by
      apply intervalIntegral.integral_congr
      intro x hx
      rw [uIcc_of_le hcut] at hx
      change (Real.sqrt x)⁻¹ = x ^ (-(1 / 2 : ℝ))
      rw [Real.rpow_neg ((by positivity : 0 ≤ A ^ 2).trans hx.1), ← Real.sqrt_eq_rpow]
    _ = _ := by
      rw [integral_rpow (Or.inl (by norm_num : (-1 : ℝ) < -(1 / 2 : ℝ)))]
      norm_num
      rw [← Real.sqrt_eq_rpow, exp_half, ← Real.sqrt_eq_rpow,
        Real.sqrt_sq (by linarith : 0 ≤ A)]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0e95b1dc23f1700c8892652db73d1586345d97c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
