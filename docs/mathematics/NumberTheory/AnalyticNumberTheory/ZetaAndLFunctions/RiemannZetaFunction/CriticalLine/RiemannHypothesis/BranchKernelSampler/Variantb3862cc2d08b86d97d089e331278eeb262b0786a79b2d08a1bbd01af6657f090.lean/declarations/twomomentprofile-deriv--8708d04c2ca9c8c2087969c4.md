# twoMomentProfile_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce8a348f-2e12-7e21-6c4a-26ce2d3be405",
  "kind": "theorem",
  "lexical_name": "twoMomentProfile_deriv",
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
  "slug": "twomomentprofile-deriv--8708d04c2ca9c8c2087969c4",
  "source": {
    "blob": "849a8a25f7474780165270bb88439ed309133a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8708d04c2ca9c8c2087969c4c2a03bcc8d40d572f723fa92a3a675a32c119a9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce8a348f-2e12-7e21-6c4a-26ce2d3be405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoMomentProfile_deriv {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    (hMom : TwoMomentProfile F) : TwoMomentProfile (deriv F) := by
  have hc := hF.continuous_deriv_one
  have hs := hMom.2.1
  have hi0 : Integrable (fun x : ℝ ↦ Real.exp (x / 2) * deriv F x) := by
    have h : Continuous (fun x : ℝ ↦ Real.exp (x / 2) * deriv F x) := by fun_prop
    exact h.integrable_of_hasCompactSupport hs.deriv.mul_left
  have hi1 : Integrable (fun x : ℝ ↦ x * Real.exp (x / 2) * deriv F x) := by
    have h : Continuous (fun x : ℝ ↦ x * Real.exp (x / 2) * deriv F x) := by fun_prop
    exact h.integrable_of_hasCompactSupport hs.deriv.mul_left
  have hie : Integrable (fun x : ℝ ↦ Real.exp (x / 2) / 2 * F x) :=
    ((weighted_zero_integrable hMom).div_const 2).congr
      (Eventually.of_forall fun x ↦ by ring)
  have hie1 : Integrable (fun x : ℝ ↦
      (Real.exp (x / 2) + x * Real.exp (x / 2) / 2) * F x) :=
    ((weighted_zero_integrable hMom).add ((weighted_first_integrable hMom).div_const 2)).congr
      (Eventually.of_forall fun x ↦ by simp only [Pi.add_apply]; ring)
  have he (x : ℝ) : HasDerivAt (fun y : ℝ ↦ Real.exp (y / 2))
      (Real.exp (x / 2) / 2) x := by
    convert! (Real.hasDerivAt_exp (x / 2)).comp x ((hasDerivAt_id x).div_const 2) using 1
    ring
  have he1 (x : ℝ) : HasDerivAt (fun y : ℝ ↦ y * Real.exp (y / 2))
      (Real.exp (x / 2) + x * Real.exp (x / 2) / 2) x := by
    convert! (hasDerivAt_id x).mul (he x) using 1
    simp only [id_eq]
    ring
  refine ⟨hc, hs.deriv, ?_, ?_⟩
  · have h := integral_mul_deriv_eq_deriv_mul_of_integrable
      (fun x _ ↦ he x) (fun x _ ↦ (hF.differentiable_one x).hasDerivAt)
      hi0 hie (weighted_zero_integrable hMom)
    have hv : (∫ x : ℝ, Real.exp (x / 2) / 2 * F x) = 0 := by
      simp_rw [div_mul_eq_mul_div]
      rw [integral_div, hMom.2.2.1, zero_div]
    simpa only [hv, neg_zero] using h
  · have h := integral_mul_deriv_eq_deriv_mul_of_integrable
      (fun x _ ↦ he1 x) (fun x _ ↦ (hF.differentiable_one x).hasDerivAt)
      hi1 hie1 (weighted_first_integrable hMom)
    have hv : (∫ x : ℝ,
        (Real.exp (x / 2) + x * Real.exp (x / 2) / 2) * F x) = 0 := by
      simp_rw [add_mul, div_mul_eq_mul_div]
      rw [integral_add (weighted_zero_integrable hMom)
        ((weighted_first_integrable hMom).div_const 2), integral_div,
        hMom.2.2.1, hMom.2.2.2, zero_div, add_zero]
    simpa only [hv, neg_zero] using h

/-- The original differential profile is C³ because its literal correlation is C⁴. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849a8a25f7474780165270bb88439ed309133a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
