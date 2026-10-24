# centeredTail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1831b64-a0b1-210e-6b5b-1f9c1c519392",
  "kind": "theorem",
  "lexical_name": "centeredTail_norm_le",
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
  "slug": "centeredtail-norm-le--532eea0a1e460fb14bff0b43",
  "source": {
    "blob": "45c3117e84bd805c0a0c72020247b6e1c76f56bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 340,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:532eea0a1e460fb14bff0b43d4f78f3078efc6e2ad5ea7ebfa49c1c55e49a0d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1831b64-a0b1-210e-6b5b-1f9c1c519392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTail_norm_le {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖centeredTail T s‖ ≤ T ^ (-(σ + 3)) / (720 * (σ + 3)) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := centeredIntegrand_integrable hT (hσ.trans_le hs)
  have hg : IntegrableOn (fun t : ℝ => t ^ (-(σ + 4))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖centeredTail T s‖ ≤ ∫ t in Ioi T, ‖centeredIntegrand s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, (1 / 720 : ℝ) * t ^ (-(σ + 4)) := by
      apply integral_mono_ae hi.norm (hg.const_mul (1 / 720))
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [centeredIntegrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht)]
      simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
      exact mul_le_mul (centeredKernel_norm_le t)
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
        (Real.rpow_nonneg (hT0.trans ht).le _) (by norm_num)
    _ = T ^ (-(σ + 3)) / (720 * (σ + 3)) := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(σ + 4) < -1) hT0,
        show -(σ + 4) + 1 = -(σ + 3) by ring, neg_div_neg_eq]
      ring

/-- The nonzero correction at integer cutoffs is part of the exact source identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c3117e84bd805c0a0c72020247b6e1c76f56bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
