# eLpNorm'_le_mul_eLpNorm'_of_ae_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41279c3d-77ee-f72d-8f2d-8139864b427b",
  "kind": "theorem",
  "lexical_name": "eLpNorm'_le_mul_eLpNorm'_of_ae_le_mul",
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
  "slug": "elpnorm-le-mul-elpnorm-of-ae-le-mul--c04ea526e9beb8dda2551a75",
  "source": {
    "blob": "624840488e6c617cbdb0e982148df08dc075ea6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1273,
    "line": 1248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c04ea526e9beb8dda2551a75babff9a86e0235cd85e4a02cd19841663163a97c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41279c3d-77ee-f72d-8f2d-8139864b427b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1248–1273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm'_le_mul_eLpNorm'_of_ae_le_mul {f : α → ε} {c : ℝ≥0∞} {g : α → ε'} {p : ℝ}
    (hg : AEStronglyMeasurable g μ) (h : ∀ᵐ x ∂μ, ‖f x‖ₑ ≤ c * ‖g x‖ₑ) (hp : 0 < p) :
    eLpNorm' f p μ ≤ c * eLpNorm' g p μ := by
  have hp' : ¬(p < 0) := by linarith
  by_cases hc : c = ⊤
  · by_cases hg' : eLpNorm' g p μ = 0
    · have : ∀ᵐ (x : α) ∂μ, ‖g x‖ₑ = 0 := by
        simp [eLpNorm'_eq_lintegral_enorm, hp', hp] at hg'
        rw [MeasureTheory.lintegral_eq_zero_iff' (by fun_prop)] at hg'
        exact hg'.mono fun x hx ↦ by simpa [hp, hp'] using hx
      have : ∀ᵐ (x : α) ∂μ, ‖f x‖ₑ = 0 := (this.and h).mono fun x ⟨h, h'⟩ ↦ by simp_all
      simpa only [hg', mul_zero, nonpos_iff_eq_zero] using eLpNorm'_eq_zero_of_ae_eq_zero hp this
    · simp_all
  have : c ^ p ≠ ⊤ := by simp [hp.le, hc]
  simp_rw [eLpNorm'_eq_lintegral_enorm]
  rw [← ENNReal.rpow_le_rpow_iff hp, ENNReal.mul_rpow_of_nonneg _ _ hp.le]
  simp_rw [← ENNReal.rpow_mul, one_div, inv_mul_cancel₀ hp.ne', ENNReal.rpow_one,
    ← lintegral_const_mul' _ _ this]
  apply lintegral_mono_ae
  have aux (x) : (↑c) ^ p * ‖g x‖ₑ ^ p = (↑c * ‖g x‖ₑ) ^ p := by
    simp [ENNReal.mul_rpow_eq_ite, enorm_eq_zero, hp']
  simpa [ENNReal.coe_rpow_of_nonneg _ hp.le, aux, ENNReal.rpow_le_rpow_iff hp]

end ENormedAddMonoid

-- TODO: eventually, deprecate and remove the nnnorm version
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantabf7a65373ec7edee45b5e44fd40022eaabc2e89ab38a64b8bea7ccdd4c1e425.lean#L1248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624840488e6c617cbdb0e982148df08dc075ea6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
