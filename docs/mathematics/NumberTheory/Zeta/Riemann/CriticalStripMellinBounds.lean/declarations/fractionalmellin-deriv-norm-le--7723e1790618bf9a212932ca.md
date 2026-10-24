# fractionalMellin_deriv_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a9a171d-3930-0641-2456-47ff90beb738",
  "kind": "theorem",
  "lexical_name": "fractionalMellin_deriv_norm_le",
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
  "slug": "fractionalmellin-deriv-norm-le--7723e1790618bf9a212932ca",
  "source": {
    "blob": "e18621be209394c600609294fbf7407e811d4c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 227,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7723e1790618bf9a212932ca245da8bcd1a4c0efbe220b923ca3d22ba3133cb6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a9a171d-3930-0641-2456-47ff90beb738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalMellin_deriv_norm_le {a : ℝ} {s : ℂ}
    (ha : 0 < a) (hs : 2 * a ≤ s.re) :
    ‖deriv fractionalMellin s‖ ≤ 1 / a ^ 2 := by
  have hs0 : 0 < s.re := (by linarith : 0 < 2 * a).trans_le hs
  rw [(fractionalMellin_hasDerivAt hs0).2.deriv, norm_neg,
    fractionalLogMellin_eq_integral]
  have hi := fractionalLogMellin_integrable hs0
  have hg : IntegrableOn (fun t : ℝ => (1 / a) * t ^ (-(a + 1))) (Ioi 1) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith : -(a + 1) < -1) zero_lt_one).const_mul _
  calc
    _ ≤ ∫ t : ℝ in Ioi 1, ‖(Real.log t : ℂ) * fractionalIntegrand s t‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi 1, (1 / a) * t ^ (-(a + 1)) := by
      apply integral_mono_ae hi.norm hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have ht0 : 0 < t := zero_lt_one.trans ht
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (Real.log_nonneg ht.le)]
      calc
        _ ≤ (t ^ a / a) * t ^ (-(s.re + 1)) :=
          mul_le_mul (Real.log_le_rpow_div ht0.le ha)
            (fractionalIntegrand_norm_le ht) (norm_nonneg _) (by positivity)
        _ = (1 / a) * t ^ (a - (s.re + 1)) := by
          calc
            _ = (1 / a) * (t ^ a * t ^ (-(s.re + 1))) := by ring
            _ = _ := by
              simp only [← Real.rpow_add ht0, sub_eq_add_neg]
        _ ≤ (1 / a) * t ^ (-(a + 1)) :=
          mul_le_mul_of_nonneg_left
            (Real.rpow_le_rpow_of_exponent_le ht.le (by linarith)) (by positivity)
    _ = 1 / a ^ 2 := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(a + 1) < -1) zero_lt_one]
      rw [show -(a + 1) + 1 = -a by ring]
      simp only [Real.one_rpow, neg_div_neg_eq]
      field_simp [ha.ne'] <;> ring

/-- Differentiate the exact source identity on a genuine open half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e18621be209394c600609294fbf7407e811d4c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
