# polynomial_correction_complex_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d7e947a-dc20-f95b-2e83-efe6622c8d83",
  "kind": "theorem",
  "lexical_name": "polynomial_correction_complex_integrable",
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
  "slug": "polynomial-correction-complex-integrable--f8013417a406473ba36aeb68",
  "source": {
    "blob": "1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 364,
    "path": "GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8013417a406473ba36aeb6853f9ab7f89599c6bde512bc293b9139c3ca8789f",
  "verification": {
    "reference": "docs/verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d7e947a-dc20-f95b-2e83-efe6622c8d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_correction_complex_integrable
    (C : ℝ) (hC : 0 ≤ C) (m : ℕ) (z : ℂ) (hz : 0 < z.re) :
    Integrable (fun t : ℝ ↦ Complex.exp (-z * t) *
      (C * (1 + t) ^ m : ℝ)) pickupTimeMeasure := by
  apply (integrable_norm_iff (by fun_prop)).mp
  apply (polynomial_correction_real_integrable C hC m z.re hz).congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  have ht0 : 0 ≤ t := ht.le
  have hco : ‖((C * (1 + t) ^ m : ℝ) : ℂ)‖ = C * (1 + t) ^ m := by
    rw [Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (mul_nonneg hC (pow_nonneg (by linarith) m))]
  rw [norm_mul, hco, Complex.norm_exp]
  simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im,
    mul_zero, sub_zero]
  exact mul_comm _ _

/-- The actual polynomial correction transform, defined by its genuine integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
