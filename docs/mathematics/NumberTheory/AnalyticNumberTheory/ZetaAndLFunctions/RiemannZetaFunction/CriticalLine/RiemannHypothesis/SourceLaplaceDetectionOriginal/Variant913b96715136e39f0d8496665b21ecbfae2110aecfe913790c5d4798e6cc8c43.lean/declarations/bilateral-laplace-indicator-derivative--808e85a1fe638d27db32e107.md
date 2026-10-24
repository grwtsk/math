# bilateral_laplace_indicator_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f1170b5-d795-dad6-3bdf-807763cb7bed",
  "kind": "theorem",
  "lexical_name": "bilateral_laplace_indicator_derivative",
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
  "slug": "bilateral-laplace-indicator-derivative--808e85a1fe638d27db32e107",
  "source": {
    "blob": "e66b101930822c98363e2ca4ebcd43dff251f0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808e85a1fe638d27db32e1079db63d8f59d128ce3b43dcf5fb21fa0d8d619b9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f1170b5-d795-dad6-3bdf-807763cb7bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bilateral_laplace_indicator_derivative (f f' : ℝ → ℝ) (a b : ℝ) (z : ℂ)
    (hab : a ≤ b) (hf : Continuous f) (hf' : Continuous f')
    (hd : ∀ x, HasDerivAt f (f' x) x) (ha : f a = 0) (hb : f b = 0) :
    bilateralLaplace ((Icc a b).indicator f') z =
      -z * bilateralLaplace ((Icc a b).indicator f) z := by
  let w : ℝ → ℂ := fun x ↦ Complex.exp (z * (x : ℂ))
  have hw : Continuous w := by dsimp [w]; fun_prop
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := a) (b := b) (Complex.continuous_ofReal.comp hf).continuousOn hw.continuousOn
    (fun x _ ↦ (hd x).ofReal_comp) (fun x _ ↦ laplace_wave_has_deriv_at z x)
    ((Complex.continuous_ofReal.comp hf').intervalIntegrable a b)
    ((continuous_const.mul hw).intervalIntegrable a b)
  simp only [Function.comp_apply] at hi
  rw [ha, hb] at hi
  simp only [Complex.ofReal_zero, zero_mul, sub_zero, zero_sub] at hi
  have he : (∫ x in a..b, (f x : ℂ) * (z * w x)) =
      z * ∫ x in a..b, (f x : ℂ) * w x := by
    simp_rw [mul_left_comm (f _ : ℂ) z]
    rw [intervalIntegral.integral_const_mul]
  change (∫ x in a..b, (f x : ℂ) * (z * w x)) =
    -(∫ x in a..b, (f' x : ℂ) * w x) at hi
  rw [he] at hi
  rw [bilateral_laplace_indicator _ _ _ _ hab, bilateral_laplace_indicator _ _ _ _ hab]
  change (∫ x in a..b, (f' x : ℂ) * w x) = -z * ∫ x in a..b, (f x : ℂ) * w x
  linear_combination hi

/-- Two actual zero-trace integrations by parts supply the source's complex `z²` factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e66b101930822c98363e2ca4ebcd43dff251f0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
