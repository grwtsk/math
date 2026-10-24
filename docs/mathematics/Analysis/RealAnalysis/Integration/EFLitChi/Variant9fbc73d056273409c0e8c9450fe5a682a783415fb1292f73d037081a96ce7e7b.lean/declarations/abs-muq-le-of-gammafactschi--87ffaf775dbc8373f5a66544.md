# abs_muq_le_of_gammaFactsChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10ad37f1-d5a3-997d-8df6-961b8b637153",
  "kind": "theorem",
  "lexical_name": "abs_muq_le_of_gammaFactsChi",
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
  "slug": "abs-muq-le-of-gammafactschi--87ffaf775dbc8373f5a66544",
  "source": {
    "blob": "0ad7b731b075be77880c8d65388a34b96aaf7eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 257,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87ffaf775dbc8373f5a66544b0e40e8798eca128ecee9ac7a4d97900a90066b2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10ad37f1-d5a3-997d-8df6-961b8b637153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_muq_le_of_gammaFactsChi {κ q : ℕ} (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q) :
    ∃ K₂ : ℝ, 0 ≤ K₂ ∧ ∀ τ : ℝ, |muq κ q τ| ≤ K₂ * (1 + |τ|) ^ (1 / 2 : ℝ) := by
  obtain ⟨C, hC⟩ := hΓq.stirling
  obtain ⟨M, hM⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (hΓq.smooth.continuous.continuousOn (s := Icc (-1 : ℝ) 1))
  have hπ : 0 < 1 / (2 * π) := by positivity
  have hq0 : (0:ℝ) < q := by exact_mod_cast hq
  set Lq : ℝ := |Real.log (2 * π / q)| with hLq
  set K₂ : ℝ := max M 0 + |C| + (1 / (2 * π)) * Lq + 1 / π with hK₂
  have hLq0 : 0 ≤ Lq := abs_nonneg _
  have hK₂nn : 0 ≤ K₂ := by
    have h1 : 0 ≤ max M 0 := le_max_right _ _
    have h2 : (0:ℝ) ≤ 1 / π := by positivity
    positivity
  refine ⟨K₂, hK₂nn, fun τ => ?_⟩
  have hb1 : 1 ≤ (1 + |τ|) ^ (1 / 2 : ℝ) :=
    Real.one_le_rpow (by linarith [abs_nonneg τ]) (by norm_num)
  rcases le_or_gt |τ| 1 with hτ | hτ
  · have := hM τ (abs_le.mp hτ)
    rw [Real.norm_eq_abs] at this
    calc |muq κ q τ| ≤ max M 0 := this.trans (le_max_left _ _)
      _ ≤ K₂ * 1 := by
        rw [mul_one, hK₂]
        have : (0:ℝ) ≤ 1 / π := by positivity
        have : (0:ℝ) ≤ (1 / (2 * π)) * Lq := by positivity
        linarith [abs_nonneg C]
      _ ≤ K₂ * (1 + |τ|) ^ (1 / 2 : ℝ) := by gcongr
  · have hτ1 : 1 ≤ |τ| := hτ.le
    have hst := hC τ hτ1
    have hsq : 1 ≤ τ ^ 2 := by rw [← sq_abs]; nlinarith
    have hCτ : C / τ ^ 2 ≤ |C| := by
      calc C / τ ^ 2 ≤ |C| / τ ^ 2 := by gcongr; exact le_abs_self C
        _ ≤ |C| := div_le_self (abs_nonneg C) hsq
    have hlogsplit : (q : ℝ) * |τ| / (2 * π) = |τ| / (2 * π / q) := by
      field_simp
    have hlog : |Real.log ((q:ℝ) * |τ| / (2 * π))| ≤ Real.log |τ| + Lq := by
      rw [hlogsplit, Real.log_div (by positivity) (by positivity)]
      calc abs (Real.log |τ| - Real.log (2 * π / q))
          ≤ abs (Real.log |τ|) + Lq := abs_sub _ _
        _ = Real.log |τ| + Lq := by rw [abs_of_nonneg (Real.log_nonneg hτ1)]
    have hlog2 : Real.log |τ| ≤ 2 * (1 + |τ|) ^ (1 / 2 : ℝ) := by
      have := Real.log_le_rpow_div (abs_nonneg τ) (by norm_num : (0 : ℝ) < 1 / 2)
      have hmono : |τ| ^ (1 / 2 : ℝ) ≤ (1 + |τ|) ^ (1 / 2 : ℝ) :=
        Real.rpow_le_rpow (abs_nonneg τ) (by linarith) (by norm_num)
      calc Real.log |τ| ≤ |τ| ^ (1 / 2 : ℝ) / (1 / 2) := this
        _ = 2 * |τ| ^ (1 / 2 : ℝ) := by ring
        _ ≤ 2 * (1 + |τ|) ^ (1 / 2 : ℝ) := by gcongr
    have hmu : |muq κ q τ| ≤ |C| + (1 / (2 * π)) * (Real.log |τ| + Lq) := by
      have htri : |muq κ q τ| ≤ |muq κ q τ - 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))|
          + |1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))| := by
        have := abs_add_le (muq κ q τ - 1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)))
          (1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π)))
        rwa [sub_add_cancel] at this
      calc |muq κ q τ| ≤ C / τ ^ 2 + |1 / (2 * π) * Real.log ((q:ℝ) * |τ| / (2 * π))| := by
            linarith
        _ ≤ |C| + (1 / (2 * π)) * (Real.log |τ| + Lq) := by
            rw [abs_mul, abs_of_pos hπ]
            gcongr
    set b := (1 + |τ|) ^ (1 / 2 : ℝ) with hb
    calc |muq κ q τ| ≤ |C| + (1 / (2 * π)) * (Real.log |τ| + Lq) := hmu
      _ ≤ |C| + (1 / (2 * π)) * (2 * b + Lq) := by gcongr
      _ = (|C| + (1 / (2 * π)) * Lq) * 1 + (1 / π) * b := by ring
      _ ≤ (|C| + (1 / (2 * π)) * Lq) * b + (1 / π) * b := by
          gcongr
      _ = (|C| + (1 / (2 * π)) * Lq + 1 / π) * b := by ring
      _ ≤ K₂ * b := by
          gcongr
          rw [hK₂]
          linarith [le_max_right M 0]

/-- k in C_c^2 and H-Gamma(chi) imply h_k times mu_chi is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad7b731b075be77880c8d65388a34b96aaf7eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
