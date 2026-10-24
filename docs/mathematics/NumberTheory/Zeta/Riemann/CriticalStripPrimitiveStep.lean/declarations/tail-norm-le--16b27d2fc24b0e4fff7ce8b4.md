# tail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67c417b1-686e-5bb0-d6cd-e771a50ebdea",
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
  "slug": "tail-norm-le--16b27d2fc24b0e4fff7ce8b4",
  "source": {
    "blob": "de72f7f4170050e3954062180617a677a7cd7f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16b27d2fc24b0e4fff7ce8b44f0258e8c1696bf45b0a7960fc24209faa6a19e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67c417b1-686e-5bb0-d6cd-e771a50ebdea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_norm_le (K : BoundedKernel) {T σ : ℝ} {z : ℂ}
    (hT : 1 ≤ T) (hσ : 1 < σ) (hz : σ ≤ z.re) :
    ‖K.tail z T‖ ≤ K.bound * (T ^ (-(σ - 1)) / (σ - 1)) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := K.integrand_integrable hT (hσ.trans_le hz)
  have hp : IntegrableOn (fun t : ℝ => t ^ (-σ)) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖K.tail z T‖ ≤ ∫ t in Ioi T, ‖K.integrand z t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, K.bound * t ^ (-σ) := by
      apply integral_mono_ae hi.norm (hp.const_mul K.bound)
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [integrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht),
        Complex.neg_re]
      exact mul_le_mul (K.norm_le t)
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
        (Real.rpow_nonneg (hT0.trans ht).le _) K.bound_nonneg
    _ = K.bound * (T ^ (-(σ - 1)) / (σ - 1)) := by
      rw [integral_const_mul, integral_Ioi_rpow_of_lt (by linarith : -σ < -1) hT0,
        show -σ + 1 = -(σ - 1) by ring, neg_div_neg_eq]

end BoundedKernel

/-- The local polynomial data must actually match the two source kernels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de72f7f4170050e3954062180617a677a7cd7f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
