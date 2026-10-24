# c_mul_k_add_conj_mul_k_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09ec6a64-9ffe-1c4f-c0c9-c982de9b4783",
  "kind": "theorem",
  "lexical_name": "c_mul_k_add_conj_mul_k_neg",
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
  "slug": "c-mul-k-add-conj-mul-k-neg--c01e75d08c7d4bd7597cf201",
  "source": {
    "blob": "c7c382365cdd9b9734aa959d042d521f2c42c975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variant5285e246035cc3ab4e5cd937136973696ba7343c8d939fc78bc0d503433ecc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c01e75d08c7d4bd7597cf201294335cf0b6aa5ba45bfa7e194a8eda3bd9a7257",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeTermJ/Variant5285e246035cc3ab4e5cd937136973696ba7343c8d939fc78bc0d503433ecc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09ec6a64-9ffe-1c4f-c0c9-c982de9b4783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem c_mul_k_add_conj_mul_k_neg {k : ℝ → ℂ} (hk : Continuous k) (hki : Integrable k)
    (hFk : Integrable (𝓕 k)) (c : ℂ) (y : ℝ) :
    c * k y + conj c * k (-y)
      = (1 / π : ℂ) * ∫ τ : ℝ, paperFT k τ * ((c.re * Real.cos (τ * y) + c.im * Real.sin (τ * y) : ℝ) : ℂ) := by
  rw [paper_inversion hk hki hFk y, paper_inversion hk hki hFk (-y)]
  have hI1 := (integrable_paperFT_mul_cexp hFk y).const_mul c
  have hI2 := (integrable_paperFT_mul_cexp hFk (-y)).const_mul (conj c)
  have e : c * ((1 / (2 * π) : ℂ) * ∫ r : ℝ, paperFT k r * cexp (-I * r * y))
      + conj c * ((1 / (2 * π) : ℂ) * ∫ r : ℝ, paperFT k r * cexp (-I * r * ↑(-y)))
      = (1 / (2 * π) : ℂ) * ((∫ r : ℝ, c * (paperFT k r * cexp (-I * r * y)))
          + ∫ r : ℝ, conj c * (paperFT k r * cexp (-I * r * ↑(-y)))) := by
    rw [cintegral_const_mul, cintegral_const_mul]
    ring
  rw [e, ← integral_add hI1 hI2]
  have h2 : ∀ τ : ℝ, c * (paperFT k τ * cexp (-I * τ * y)) + conj c * (paperFT k τ * cexp (-I * τ * ↑(-y)))
      = 2 * (paperFT k τ * ((c.re * Real.cos (τ * y) + c.im * Real.sin (τ * y) : ℝ) : ℂ)) := by
    intro τ
    have key := mul_cexp_add_conj_mul_cexp c (τ * y)
    have a1 : -I * (τ : ℂ) * (y : ℂ) = -I * ((τ * y : ℝ) : ℂ) := by push_cast; ring
    have a2 : -I * (τ : ℂ) * ((-y : ℝ) : ℂ) = I * ((τ * y : ℝ) : ℂ) := by push_cast; ring
    rw [a1, a2]
    calc c * (paperFT k τ * cexp (-I * ↑(τ * y))) + conj c * (paperFT k τ * cexp (I * ↑(τ * y)))
        = paperFT k τ * (c * cexp (-I * ↑(τ * y)) + conj c * cexp (I * ↑(τ * y))) := by ring
      _ = 2 * (paperFT k τ * ((c.re * Real.cos (τ * y) + c.im * Real.sin (τ * y) : ℝ) : ℂ)) := by
          rw [key]; ring
  simp_rw [h2]
  rw [cintegral_const_mul, ← mul_assoc]
  congr 1
  have hπ : (π : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  field_simp

/-- support step: for N ∉ (0, e^L] the N-th summand vanishes (√0 = 0 in Lean for N = 0; k(±log N) = 0 for N > e^L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeTermJ/Variant5285e246035cc3ab4e5cd937136973696ba7343c8d939fc78bc0d503433ecc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variant5285e246035cc3ab4e5cd937136973696ba7343c8d939fc78bc0d503433ecc5d.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7c382365cdd9b9734aa959d042d521f2c42c975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
