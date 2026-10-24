# mellin_mellinInv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6206362d-5509-3615-581f-a75c8424106b",
  "kind": "theorem",
  "lexical_name": "mellin_mellinInv_eq",
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
  "slug": "mellin-mellininv-eq--53ebd97f9c6510d05ac9b8c1",
  "source": {
    "blob": "36924ae62310b807be6dfbcb4860e68dae2011d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 52,
    "path": "GRWTSK/Analysis/MellinTransform/ReverseInversion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53ebd97f9c6510d05ac9b8c169284e2042e0a514a75d275d49e68e3291701e1d",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6206362d-5509-3615-581f-a75c8424106b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_mellinInv_eq (σ : ℝ) (F : ℂ → ℂ) (f : ℝ → ℂ)
    (hf : MellinConvergent f (σ : ℂ))
    (hF : Integrable (fun y : ℝ => F ((σ : ℂ) + 2 * Real.pi * y * Complex.I)))
    (hcont : Continuous (fun y : ℝ => F ((σ : ℂ) + 2 * Real.pi * y * Complex.I)))
    (hrep : ∀ x : ℝ, 0 < x → f x = mellinInv σ F x) (y : ℝ) :
    mellin f ((σ : ℂ) + 2 * Real.pi * y * Complex.I) =
      F ((σ : ℂ) + 2 * Real.pi * y * Complex.I) := by
  let A : ℝ → ℂ := fun y => F ((σ : ℂ) + 2 * Real.pi * y * Complex.I)
  let g : ℝ → ℂ := fun u => Real.exp (-σ * u) • f (Real.exp (-u))
  have hg : Integrable g := integrable_logProfile hf
  have hginv : g = 𝓕⁻ A := by
    funext u
    dsimp [g]
    rw [hrep _ (Real.exp_pos _), mellinInv_eq_fourierInv _ _ (Real.exp_pos _)]
    simp only [Real.log_exp, neg_neg]
    change (Real.exp (-σ * u) : ℂ) *
      ((Real.exp (-u) : ℂ) ^ (-(σ : ℂ)) * 𝓕⁻ A u) = 𝓕⁻ A u
    rw [← mul_assoc, ← Complex.ofReal_neg,
      ← Complex.ofReal_cpow (Real.exp_pos (-u)).le]
    have hc : Real.exp (-σ * u) * Real.exp (-u) ^ (-σ) = 1 := by
      rw [Real.rpow_def_of_pos (Real.exp_pos (-u)), Real.log_exp, ← Real.exp_add]
      rw [show -σ * u + -u * -σ = 0 by ring, Real.exp_zero]
    rw [← Complex.ofReal_mul, hc, Complex.ofReal_one, one_mul]
  have hfourier : Integrable (𝓕 A) := by
    have hn := hg.comp_neg
    rw [hginv] at hn
    simpa only [Real.fourierInv_eq_fourier_neg, neg_neg] using hn
  rw [mellin_eq_fourier]
  have hre : ((σ : ℂ) + 2 * Real.pi * y * Complex.I).re = σ := by simp
  have him : ((σ : ℂ) + 2 * Real.pi * y * Complex.I).im / (2 * Real.pi) = y := by
    simp
  rw [hre, him]
  change 𝓕 g y = A y
  rw [hginv]
  exact hF.fourier_fourierInv_eq hfourier hcont.continuousAt

/-- A nonzero logarithmic Gaussian on the positive half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/ReverseInversion.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36924ae62310b807be6dfbcb4860e68dae2011d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
