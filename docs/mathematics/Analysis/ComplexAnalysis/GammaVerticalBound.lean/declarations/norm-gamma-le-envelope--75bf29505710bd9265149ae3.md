# norm_Gamma_le_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a8a8a78-d00e-711d-bc0c-eb671c3a8a9f",
  "kind": "theorem",
  "lexical_name": "norm_Gamma_le_envelope",
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
  "slug": "norm-gamma-le-envelope--75bf29505710bd9265149ae3",
  "source": {
    "blob": "6e5f8f18f1f52d26684e95996420fa0bcbf43134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/Analysis/Complex/GammaVerticalBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75bf29505710bd9265149ae38727ffea6fbff343e83b69c5ee5d8deb10a9a77b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a8a8a78-d00e-711d-bc0c-eb671c3a8a9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Gamma_le_envelope (s : ℂ)
    (hs : s.re ∈ Icc (1 / 2 : ℝ) (9 / 2)) : ‖Complex.Gamma s‖ ≤ envelope := by
  have h₀ := Real.GammaIntegral_convergent (by norm_num : (0 : ℝ) < 1 / 2)
  have h₁ := Real.GammaIntegral_convergent (by norm_num : (0 : ℝ) < 9 / 2)
  have hb : ‖Complex.Gamma s‖ ≤ Real.Gamma (1 / 2) + Real.Gamma (9 / 2) := by
    rw [Complex.Gamma_eq_integral (by linarith [hs.1]), Complex.GammaIntegral,
      Real.Gamma_eq_integral (by norm_num : (0 : ℝ) < 1 / 2),
      Real.Gamma_eq_integral (by norm_num : (0 : ℝ) < 9 / 2), ← integral_add h₀ h₁]
    apply norm_integral_le_of_norm_le (h₀.add h₁)
    filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with t ht
    rw [norm_mul, Complex.norm_of_nonneg (Real.exp_pos (-t)).le,
      Complex.norm_cpow_eq_rpow_re_of_pos ht]
    simp only [Complex.sub_re, Complex.one_re]
    simpa only [mul_add, Pi.add_apply] using mul_le_mul_of_nonneg_left
      (power_le_endpoint_sum t s.re ht hs) (Real.exp_pos (-t)).le
  dsimp [envelope]
  linarith

/-- Translation center for the Gamma disk; not a zeta-zero or contour inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/GammaVerticalBound.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5f8f18f1f52d26684e95996420fa0bcbf43134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
