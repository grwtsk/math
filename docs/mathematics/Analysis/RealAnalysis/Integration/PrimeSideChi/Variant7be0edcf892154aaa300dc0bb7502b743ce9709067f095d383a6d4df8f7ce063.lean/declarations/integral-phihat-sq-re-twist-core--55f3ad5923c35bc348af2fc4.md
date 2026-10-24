# integral_phiHat_sq_re_twist_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a7bc8e8-6b37-025d-8f8d-dd46aff72995",
  "kind": "lemma",
  "lexical_name": "integral_phiHat_sq_re_twist_core",
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
  "slug": "integral-phihat-sq-re-twist-core--55f3ad5923c35bc348af2fc4",
  "source": {
    "blob": "b7f058ea3d12e02b6f34456557fc66c69d693d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55f3ad5923c35bc348af2fc4920a5822c50a77b57636035e5d69f8d95809d709",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a7bc8e8-6b37-025d-8f8d-dd46aff72995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_phiHat_sq_re_twist_core (hF : LocalHypsCoreW cϱ p F) (z : ℂ) (t y : ℝ) :
    ∫ r, F.phiHat r ^ 2 * (z * Complex.exp (-Complex.I * ((t + r) * y))).re
      = 2 * π * F.Aphi y * (z * Complex.exp (-Complex.I * (t * y))).re := by
  have key : ∀ r : ℝ, (z * Complex.exp (-Complex.I * ((t + r) * y))).re
      = (z * Complex.exp (-Complex.I * (t * y))).re * Real.cos (r * y)
        + (z * Complex.exp (-Complex.I * (t * y))).im * Real.sin (r * y) := by
    intro r
    have e1 : Complex.exp (-Complex.I * ((t + r) * y))
        = Complex.exp (-Complex.I * (t * y)) * Complex.exp (-Complex.I * (r * y)) := by
      rw [← Complex.exp_add]
      congr 1
      ring
    rw [e1, ← mul_assoc]
    rw [show -Complex.I * ((r:ℝ) * y) = ((-(r * y) : ℝ) : ℂ) * Complex.I by
      push_cast; ring]
    rw [Complex.exp_mul_I]
    simp only [Complex.mul_re, Complex.add_re, Complex.add_im, Complex.mul_im,
      Complex.cos_ofReal_re, Complex.sin_ofReal_re, Complex.cos_ofReal_im,
      Complex.sin_ofReal_im, Real.cos_neg, Real.sin_neg]
    ring_nf
    simp [Complex.I_re, Complex.I_im]
  have e2 : ∀ r : ℝ, F.phiHat r ^ 2 * (z * Complex.exp (-Complex.I * ((t + r) * y))).re
      = (z * Complex.exp (-Complex.I * (t * y))).re * (F.phiHat r ^ 2 * Real.cos (r * y))
        + (z * Complex.exp (-Complex.I * (t * y))).im * (F.phiHat r ^ 2 * Real.sin (r * y)) := by
    intro r
    rw [key r]
    ring
  simp_rw [e2]
  have hint1 : MeasureTheory.Integrable (fun r => F.phiHat r ^ 2 * Real.cos (r * y)) :=
    hF.phiHat_sq_mul_integrable_of_bdd (by fun_prop) (fun x => Real.abs_cos_le_one _)
  have hint2 : MeasureTheory.Integrable (fun r => F.phiHat r ^ 2 * Real.sin (r * y)) :=
    hF.phiHat_sq_mul_integrable_of_bdd (by fun_prop) (fun x => Real.abs_sin_le_one _)
  rw [MeasureTheory.integral_add (hint1.const_mul _) (hint2.const_mul _),
    MeasureTheory.integral_const_mul, MeasureTheory.integral_const_mul,
    hF.phiHat_sq_fourier, integral_phiHat_sq_mul_sin_core hF]
  ring

end PPartChi

/-! ## μ_χ increments and positivity (mirrors of the ζ-side lemmas; constants depend on κ, q) -/

section MuqAnalytic

variable {κ q : ℕ}

/-- Crude global bound: |μ_χ(τ)| ≤ M + |τ| (mirror of mu_linear_bound; q enters only M). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f058ea3d12e02b6f34456557fc66c69d693d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
