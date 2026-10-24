# inner_ibp_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dce8b88e-bcb9-7c66-e27d-ab44ae498556",
  "kind": "lemma",
  "lexical_name": "inner_ibp_phase",
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
  "slug": "inner-ibp-phase--8295d1fa68c7d70a88689566",
  "source": {
    "blob": "88d97132e018384b8355161f5b3313f3f9efe4a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant6698c35bc91361b740fc0ed20e0f455966486a8d2cdb939cd5dc9b8cc0abe5b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8295d1fa68c7d70a88689566a65081da7a5a60515a2521cef0f01b2a4efdad99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant6698c35bc91361b740fc0ed20e0f455966486a8d2cdb939cd5dc9b8cc0abe5b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dce8b88e-bcb9-7c66-e27d-ab44ae498556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_ibp_phase (hΦ : ContDiff ℝ 1 Φ) {y : ℝ} (hy : y ≠ 0) (θ τ : ℝ) :
    ∫ τ' in T..(2 * T), Φ (τ - τ') ^ 2 * Real.cos (τ' * y + θ)
      = (Φ (τ - 2 * T) ^ 2 * Real.sin (2 * T * y + θ) - Φ (τ - T) ^ 2 * Real.sin (T * y + θ)) / y
        + y⁻¹ * ∫ τ' in T..(2 * T), deriv (fun x => Φ x ^ 2) (τ - τ') * Real.sin (τ' * y + θ) := by
  set Ψ : ℝ → ℝ := fun x => Φ x ^ 2 with hΨdef
  have hΨ : ContDiff ℝ 1 Ψ := hΦ.pow 2
  have hΨd : ∀ x, HasDerivAt Ψ (deriv Ψ x) x := fun x =>
    (hΨ.differentiable one_ne_zero x).hasDerivAt
  have hΨ'c : Continuous (deriv Ψ) := hΨ.continuous_deriv le_rfl
  have hu : ∀ x ∈ Set.uIcc T (2 * T), HasDerivAt (fun τ' => Ψ (τ - τ')) (-deriv Ψ (τ - x)) x := by
    intro x _
    have h := (hΨd (τ - x)).comp x ((hasDerivAt_id x).const_sub τ)
    simpa [Function.comp_def] using h
  have hv : ∀ x ∈ Set.uIcc T (2 * T),
      HasDerivAt (fun τ' => Real.sin (τ' * y + θ) / y) (Real.cos (x * y + θ)) x := by
    intro x _
    have h := ((((hasDerivAt_id x).mul_const y).add_const θ).sin).div_const y
    simpa [mul_div_assoc, div_self hy] using h
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul hu hv
    ((hΨ'c.comp (continuous_const.sub continuous_id)).neg.intervalIntegrable _ _)
    ((Real.continuous_cos.comp ((continuous_id.mul continuous_const).add
      continuous_const)).intervalIntegrable _ _)
  simp only [hΨdef] at hibp ⊢
  rw [hibp]
  have e : ∫ x in T..(2 * T), -deriv (fun x => Φ x ^ 2) (τ - x) * (Real.sin (x * y + θ) / y)
      = -(y⁻¹ * ∫ x in T..(2 * T), deriv (fun x => Φ x ^ 2) (τ - x) * Real.sin (x * y + θ)) := by
    rw [← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_neg]
    congr 1; ext x; field_simp
  rw [e]
  field_simp
  ring

/-- **The oscillatory bound** (§5.4: "`|∫_I m(τ′)cos(τ′y)dτ′| ≤ (2 sup|m| + ∫_I|m′|)/y`"), in the explicit,
phase-shifted form: if `Φ, u ∈ C¹`, `|u| ≤ B` and `|u′| ≤ D` on `I = [T,2T]`, `T ≥ 0`, `y ≠ 0`, then for every
phase `θ`, `|𝓜[u, cos(·y + θ)]| ≤ (4B + D·T)·(∫_ℝ Φ²)/|y|` (covers `sin` at `θ = −π/2`; used for the
complex-coefficient prime sums of Theorem E, where `Re(c·e^{−iτy}) = ‖c‖·cos(τy − arg c)`; the case `θ = 0` is
`abs_Mform_cos_le` below). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant6698c35bc91361b740fc0ed20e0f455966486a8d2cdb939cd5dc9b8cc0abe5b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant6698c35bc91361b740fc0ed20e0f455966486a8d2cdb939cd5dc9b8cc0abe5b9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d97132e018384b8355161f5b3313f3f9efe4a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
