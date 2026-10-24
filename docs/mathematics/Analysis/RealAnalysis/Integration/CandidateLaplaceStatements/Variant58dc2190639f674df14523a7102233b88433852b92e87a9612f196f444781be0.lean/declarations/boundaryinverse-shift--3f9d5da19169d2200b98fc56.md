# boundaryInverse_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fc49080214d1fd4d1118368de11e9dfe6a06866",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb68fbf5-022b-5807-0703-25be616f9ebe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7e57209-c295-53fa-507e-fe901b5cc43e",
  "kind": "theorem",
  "lexical_name": "boundaryInverse_shift",
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
  "slug": "boundaryinverse-shift--3f9d5da19169d2200b98fc56",
  "source": {
    "blob": "3fc49080214d1fd4d1118368de11e9dfe6a06866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f9d5da19169d2200b98fc56da7b9b53822db322bd41eab699a4def02ab27b93",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7e57209-c295-53fa-507e-fe901b5cc43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryInverse_shift (F : ℂ → ℂ)
    (hF : ∀ z : ℂ, 0 ≤ z.re → DifferentiableAt ℂ F z)
    (φ : ℝ → ℝ) (hφ : Integrable φ)
    (hb : ∀ σ t : ℝ, 0 ≤ σ → ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t)
    (htop : Tendsto φ atTop (nhds 0)) (hbot : Tendsto φ atBot (nhds 0))
    (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    boundaryInverse F x = (Real.exp (x * σ) : ℂ) *
      boundaryInverse (fun z => F ((σ : ℂ) + z)) x := by
  let G : ℂ → ℂ := fun z => Complex.exp ((x : ℂ) * z) * F z
  let ψ : ℝ → ℝ := fun t => Real.exp (|x| * σ) * φ t
  have hφ0 (t : ℝ) : 0 ≤ φ t := (norm_nonneg _).trans (hb 0 t le_rfl)
  have hbound (s t : ℝ) (hs : 0 ≤ s) (hsσ : s ≤ σ) :
      ‖G ((s : ℂ) + (t : ℂ) * I)‖ ≤ ψ t := by
    have hxs : x * s ≤ |x| * σ :=
      (mul_le_mul_of_nonneg_right (le_abs_self x) hs).trans
        (mul_le_mul_of_nonneg_left hsσ (abs_nonneg x))
    dsimp only [G, ψ]
    rw [norm_mul]
    have hn : ‖Complex.exp ((x : ℂ) * ((s : ℂ) + (t : ℂ) * I))‖ =
        Real.exp (x * s) := by simp [Complex.norm_exp]
    rw [hn]
    exact mul_le_mul ((Real.exp_le_exp).mpr hxs) (hb s t hs)
      (norm_nonneg _) (by positivity)
  have hshift : (∫ t : ℝ, G ((σ : ℂ) + (t : ℂ) * I)) =
      ∫ t : ℝ, G ((t : ℂ) * I) := by
    simpa only [Complex.ofReal_zero, zero_add, G, Pi.mul_apply] using
      Zeta23.WeilEF.vertical_line_shift hσ
        (fun z hz _ => (by fun_prop :
          DifferentiableAt ℂ (fun w : ℂ => Complex.exp ((x : ℂ) * w)) z).mul (hF z hz))
        (hφ.const_mul (Real.exp (|x| * σ))) hbound
        (by simpa only [mul_zero] using htop.const_mul (Real.exp (|x| * σ)))
        (by simpa only [mul_zero] using hbot.const_mul (Real.exp (|x| * σ)))
  unfold boundaryInverse
  rw [← hshift]
  dsimp only [G]
  have hexp (t : ℝ) : Complex.exp ((x : ℂ) * ((σ : ℂ) + (t : ℂ) * I)) =
      (Real.exp (x * σ) : ℂ) * Complex.exp ((x : ℂ) * ((t : ℂ) * I)) := by
    rw [mul_add, Complex.exp_add]
    simp only [← Complex.ofReal_mul, Complex.ofReal_exp]
  simp_rw [hexp, mul_assoc]
  rw [integral_const_mul]
  ring

/-- Shifting the candidate's complex argument exactly increases its positive real offset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc49080214d1fd4d1118368de11e9dfe6a06866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
