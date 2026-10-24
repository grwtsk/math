# complex_negative_half_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab449d32-ceba-43c2-c95e-fbfa2e2abd6f",
  "kind": "theorem",
  "lexical_name": "complex_negative_half_price",
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
  "slug": "complex-negative-half-price--8fef6d10e4e78924ca8715a2",
  "source": {
    "blob": "39e2d65db16f20ed88923da4233d4cf3ca32c681",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/Analysis/NativeOffGridTransformReadout/Variant5e51b70233b712b411a51f0805e7329a5f6981183ea75bd4ade88334140d77c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fef6d10e4e78924ca8715a2cb2445cd5ed14e91a045d4de1e5f1b4ce15eea02",
  "verification": {
    "reference": "docs/verification/Analysis/NativeOffGridTransformReadout/Variant5e51b70233b712b411a51f0805e7329a5f6981183ea75bd4ade88334140d77c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab449d32-ceba-43c2-c95e-fbfa2e2abd6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_negative_half_price {A r : ℝ} (hA : 1 ≤ A) (hr : 0 < r)
    {z : ℂ} (hz : z.re = 1 / r) : ‖complexHalfMoment A (-z)‖ ≤ r := by
  have hc : Continuous (fun t : ℝ ↦ Real.exp (-t / r)) :=
    Real.continuous_exp.comp (continuous_id.neg.div_const r)
  have hb : ‖complexHalfMoment A (-z)‖ ≤ ∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) := by
    unfold complexHalfMoment
    apply intervalIntegral.norm_integral_le_of_norm_le (by linarith)
      (Filter.Eventually.of_forall (fun t _ ↦ ?_)) (hc.intervalIntegrable _ _)
    have he : ((-z) * (t : ℂ)).re = -t / r := by
      simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im,
        mul_zero, sub_zero, hz]
      ring
    rw [norm_mul, Complex.norm_exp, he, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_of_le_one_right (Real.exp_pos _).le (actual_correlation_abs_le_one A t hA)
  rw [exact_decaying_exponential_interval hr] at hb
  exact hb.trans (by nlinarith [Real.exp_pos (-(2 * A) / r)])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NativeOffGridTransformReadout/Variant5e51b70233b712b411a51f0805e7329a5f6981183ea75bd4ade88334140d77c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NativeOffGridTransformReadout/Variant5e51b70233b712b411a51f0805e7329a5f6981183ea75bd4ade88334140d77c9.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e2d65db16f20ed88923da4233d4cf3ca32c681` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
