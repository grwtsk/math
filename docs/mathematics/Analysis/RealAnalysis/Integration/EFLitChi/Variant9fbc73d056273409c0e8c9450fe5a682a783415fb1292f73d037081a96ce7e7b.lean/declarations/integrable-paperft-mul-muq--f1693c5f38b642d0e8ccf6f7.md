# integrable_paperFT_mul_muq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e623132b-df23-b637-f368-18b18429830b",
  "kind": "theorem",
  "lexical_name": "integrable_paperFT_mul_muq",
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
  "slug": "integrable-paperft-mul-muq--f1693c5f38b642d0e8ccf6f7",
  "source": {
    "blob": "0ad7b731b075be77880c8d65388a34b96aaf7eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 328,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1693c5f38b642d0e8ccf6f76d3d8bc34be2c233176e9cf5e92cdf16fbf8e4d1",
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

Occurrence: `result:e623132b-df23-b637-f368-18b18429830b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_paperFT_mul_muq {κ q : ℕ} {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q) :
    Integrable (fun τ : ℝ => paperFT k τ * (muq κ q τ : ℂ)) := by
  obtain ⟨Lam, hLam⟩ := Zeta23.EF.exists_abs_le_of_hasCompactSupport hkc
  obtain ⟨K₂, hK₂, hmu⟩ := abs_muq_le_of_gammaFactsChi hΓq hq
  set K₁ : ℝ := (∫ u, ‖k u‖) + ∫ u, ‖deriv (deriv k) u‖ with hK₁
  have hK₁nn : 0 ≤ K₁ := by positivity
  have hmeas : AEStronglyMeasurable (fun τ : ℝ => paperFT k τ * (muq κ q τ : ℂ)) :=
    (Zeta23.EF.integrable_paperFT_ofReal (Zeta23.EF.integrable_fourier_of_contDiff_two hk hkc)).aestronglyMeasurable.mul
      (Complex.continuous_ofReal.comp hΓq.smooth.continuous).aestronglyMeasurable
  have hdom : Integrable (fun τ : ℝ => 2 * K₁ * K₂ * (1 + ‖τ‖) ^ (-(3 / 2) : ℝ)) :=
    (integrable_one_add_norm (by rw [Module.finrank_self]; norm_num)).const_mul _
  refine hdom.mono' hmeas (Filter.Eventually.of_forall fun τ => ?_)
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, Real.norm_eq_abs]
  have hb : 0 < 1 + |τ| := by linarith [abs_nonneg τ]
  have h1 : ‖paperFT k τ‖ * (1 + τ ^ 2) ≤ K₁ := Zeta23.EF.norm_paperFT_mul_one_add_sq_le hk hLam τ
  have h2 : |muq κ q τ| ≤ K₂ * (1 + |τ|) ^ (1 / 2 : ℝ) := hmu τ
  have hsq : (1 + |τ|) ^ (2 : ℝ) ≤ 2 * (1 + τ ^ 2) := by
    rw [Real.rpow_two]
    nlinarith [sq_abs τ, sq_nonneg (1 - |τ|)]
  have key : (1 + |τ|) ^ (1 / 2 : ℝ) ≤ 2 * (1 + τ ^ 2) * (1 + |τ|) ^ (-(3 / 2) : ℝ) := by
    rw [show (1 / 2 : ℝ) = 2 + (-(3 / 2)) by norm_num, Real.rpow_add hb]
    exact mul_le_mul_of_nonneg_right hsq (Real.rpow_nonneg hb.le _)
  calc ‖paperFT k τ‖ * |muq κ q τ|
      ≤ ‖paperFT k τ‖ * (K₂ * (1 + |τ|) ^ (1 / 2 : ℝ)) := by gcongr
    _ ≤ ‖paperFT k τ‖ * (K₂ * (2 * (1 + τ ^ 2) * (1 + |τ|) ^ (-(3 / 2) : ℝ))) := by gcongr
    _ = (‖paperFT k τ‖ * (1 + τ ^ 2)) * (2 * K₂ * (1 + |τ|) ^ (-(3 / 2) : ℝ)) := by ring
    _ ≤ K₁ * (2 * K₂ * (1 + |τ|) ^ (-(3 / 2) : ℝ)) := by
        gcongr
    _ = 2 * K₁ * K₂ * (1 + |τ|) ^ (-(3 / 2) : ℝ) := by ring
/-- **Bridge** (App-A-for-χ, mirror of Zeta23.EF.explicitFormulaPaper_of_lit): the literature form
plus the χ-Γ facts give the paper form H-EF(χ).  [Proof: transplant of the ζ-case chain with
ν_{X,χ} = μ_χ + P_{X,χ}; side-integrabilities via the Bridge.lean toolkit (norm_paperFT bounds,
abs_mu-type from GammaFactsChi.stirling) + PXc continuity/boundedness (PXc_abs_le).] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad7b731b075be77880c8d65388a34b96aaf7eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
