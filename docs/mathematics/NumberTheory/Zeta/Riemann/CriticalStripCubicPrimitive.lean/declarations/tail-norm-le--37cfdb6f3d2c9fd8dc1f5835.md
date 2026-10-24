# tail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d98d349-05b4-4e44-3bc2-69e1df220257",
  "kind": "theorem",
  "lexical_name": "tail_norm_le",
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
  "slug": "tail-norm-le--37cfdb6f3d2c9fd8dc1f5835",
  "source": {
    "blob": "9f8e9045130f5c155966f2e920d03f508ae13011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 157,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37cfdb6f3d2c9fd8dc1f5835f993407224a70fa6ee078bbc581b71c31b64c574",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d98d349-05b4-4e44-3bc2-69e1df220257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_norm_le {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖tail T s‖ ≤ T ^ (-(σ + 2)) / (120 * (σ + 2)) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := integrand_integrable hT (hσ.trans_le hs)
  have hg : IntegrableOn (fun t : ℝ => t ^ (-(σ + 3))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖tail T s‖ ≤ ∫ t in Ioi T, ‖integrand s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, (1 / 120 : ℝ) * t ^ (-(σ + 3)) := by
      apply integral_mono_ae hi.norm (hg.const_mul (1 / 120))
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [integrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht)]
      simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
      exact mul_le_mul (kernel_norm_le t)
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
        (Real.rpow_nonneg (hT0.trans ht).le _) (by norm_num)
    _ = T ^ (-(σ + 2)) / (120 * (σ + 2)) := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(σ + 3) < -1) hT0,
        show -(σ + 3) + 1 = -(σ + 2) by ring, neg_div_neg_eq]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8e9045130f5c155966f2e920d03f508ae13011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
