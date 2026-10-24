# PXc_eq_sum_cos_sin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfa653e9-e987-160a-093e-4465ebac3f7e",
  "kind": "lemma",
  "lexical_name": "PXc_eq_sum_cos_sin",
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
  "slug": "pxc-eq-sum-cos-sin--55a8ad004026b1b23f503aa7",
  "source": {
    "blob": "b9ede0bad210c47dde7b2d1c3923048de8da05e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant668f034a989b3b4ff99a78186133d10c8db7c48963d753c800ee44bd5041c8f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55a8ad004026b1b23f503aa77f593d4dd1adaae8c6f91ff1bcd3d4dc29bfd69e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant668f034a989b3b4ff99a78186133d10c8db7c48963d753c800ee44bd5041c8f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa653e9-e987-160a-093e-4465ebac3f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PXc_eq_sum_cos_sin (c : ℕ → ℂ) (X τ : ℝ) :
    PXc c X τ = -(1 / Real.pi) * ∑ n ∈ Finset.Ioc 0 ⌊X⌋₊,
      (Λ n : ℝ) * (n : ℝ) ^ (-(1/2 : ℝ)) *
        ((c n).re * Real.cos (τ * Real.log n) + (c n).im * Real.sin (τ * Real.log n)) := by
  unfold PXc
  congr 1
  rw [Complex.re_sum]
  refine Finset.sum_congr rfl fun n hn => ?_
  have hn0 : 0 < n := (Finset.mem_Ioc.mp hn).1
  rw [natCast_cpow_neg_half_sub_I_mul hn0,
    show -(Complex.I * ((τ : ℂ) * ((Real.log n : ℝ) : ℂ)))
      = -(Complex.I * ((τ * Real.log n : ℝ) : ℂ)) by push_cast; ring,
    exp_neg_I_mul_ofReal]
  have e1 : ((Λ n : ℝ) : ℂ) * c n * ((((n : ℝ) ^ (-(1/2 : ℝ)) : ℝ) : ℂ)
      * (((Real.cos (τ * Real.log n) : ℝ) : ℂ) - ((Real.sin (τ * Real.log n) : ℝ) : ℂ) * Complex.I))
      = ((((Λ n : ℝ) * (n : ℝ) ^ (-(1/2 : ℝ)) : ℝ)) : ℂ)
        * (c n * (((Real.cos (τ * Real.log n) : ℝ) : ℂ)
            - ((Real.sin (τ * Real.log n) : ℝ) : ℂ) * Complex.I)) := by
    push_cast
    ring
  rw [e1, Complex.re_ofReal_mul]
  have hw : (c n * (((Real.cos (τ * Real.log n) : ℝ) : ℂ)
      - ((Real.sin (τ * Real.log n) : ℝ) : ℂ) * Complex.I)).re
      = (c n).re * Real.cos (τ * Real.log n) + (c n).im * Real.sin (τ * Real.log n) := by
    simp only [Complex.mul_re, Complex.sub_re, Complex.sub_im, Complex.ofReal_re,
      Complex.ofReal_im, Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im]
    ring
  rw [hw]

end PXcUnfold

/-! ## Uniform-constant ("Bounded") variants, for the hybrid range [rem:otherL](i):
same fields as `GammaFactsChi` / `ChebyshevMertensCoprime`
but with every existential constant replaced by the given bound, so families of characters can
carry ONE constant uniformly in q. -/

/-- `GammaFactsChi` with all constants bounded by `C` (and all thresholds by `C`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant668f034a989b3b4ff99a78186133d10c8db7c48963d753c800ee44bd5041c8f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant668f034a989b3b4ff99a78186133d10c8db7c48963d753c800ee44bd5041c8f3.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ede0bad210c47dde7b2d1c3923048de8da05e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
