# source_fourier_indicator_frequency_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "053421702157bb97913dc8b71487be4576a46bb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ebe8cfd-c7ea-2fa8-3fe6-fa0699a70ab6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:554f2be0-087b-e88c-77f0-9d9788bdff76",
  "kind": "theorem",
  "lexical_name": "source_fourier_indicator_frequency_bound",
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
  "slug": "source-fourier-indicator-frequency-bound--f33aa66b4cbf6dded3320734",
  "source": {
    "blob": "053421702157bb97913dc8b71487be4576a46bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f33aa66b4cbf6dded3320734390bc262a79803cd090c845f806e4670ada6a232",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:554f2be0-087b-e88c-77f0-9d9788bdff76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_fourier_indicator_frequency_bound
    (f f' : ℝ → ℝ) (a b ξ : ℝ) (hab : a ≤ b)
    (hf : Continuous f) (hf' : Continuous f') (hd : ∀ x, HasDerivAt f (f' x) x) :
    |ξ| * ‖sourceFourier ((Icc a b).indicator f) ξ‖ ≤
      |f b| + |f a| + ∫ x, ‖(Icc a b).indicator f' x‖ := by
  have h := source_fourier_indicator_deriv f f' a b ξ hab hf hf' hd
  have heq : (Complex.I * (ξ : ℂ)) * sourceFourier ((Icc a b).indicator f) ξ =
      (f b : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (b : ℂ)) -
      (f a : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (a : ℂ)) -
      sourceFourier ((Icc a b).indicator f') ξ := by linear_combination h
  calc
    _ = ‖(Complex.I * (ξ : ℂ)) * sourceFourier ((Icc a b).indicator f) ξ‖ := by
      simp [Real.norm_eq_abs]
    _ = _ := congrArg norm heq
    _ ≤ ‖(f b : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (b : ℂ))‖ +
        ‖(f a : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (a : ℂ))‖ +
        ‖sourceFourier ((Icc a b).indicator f') ξ‖ := by
      exact (norm_sub_le _ _).trans (add_le_add (norm_sub_le _ _) le_rfl)
    _ ≤ _ := by
      simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
      simp only [Complex.mul_re, Complex.I_re, Complex.ofReal_re, zero_mul,
        Complex.I_im, Complex.ofReal_im, mul_zero, sub_zero, Real.exp_zero, mul_one]
      have hf := sourceFourier_norm_le ((Icc a b).indicator f') ξ
      simp only [Real.norm_eq_abs] at hf
      linarith

/-- A continuous polynomial on a compact interval has integrable Fourier-square energy,
including nonzero endpoint values of its zero extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variantab778285d84d2d8217425c65e69ab2c5de274c47555221082fd90ab66460ea44.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `053421702157bb97913dc8b71487be4576a46bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
