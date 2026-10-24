# source_fourier_indicator_frequency_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab3ba98c-d793-dbb8-3def-3a463da6addf",
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
  "slug": "source-fourier-indicator-frequency-bound--465255b8809f205eb767616a",
  "source": {
    "blob": "940c5d71709e76b0932d44688cef08e036426a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:465255b8809f205eb767616a8d356a4025a5c4be2a674b475e60e19f2a734183",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab3ba98c-d793-dbb8-3def-3a463da6addf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–98.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `940c5d71709e76b0932d44688cef08e036426a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
