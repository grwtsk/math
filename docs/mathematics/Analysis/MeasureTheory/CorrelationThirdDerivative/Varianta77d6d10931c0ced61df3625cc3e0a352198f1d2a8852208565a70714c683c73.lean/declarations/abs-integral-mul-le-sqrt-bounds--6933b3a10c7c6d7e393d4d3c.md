# abs_integral_mul_le_sqrt_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a81ece3e-9807-90b8-3bb2-88134104ccf7",
  "kind": "theorem",
  "lexical_name": "abs_integral_mul_le_sqrt_bounds",
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
  "slug": "abs-integral-mul-le-sqrt-bounds--6933b3a10c7c6d7e393d4d3c",
  "source": {
    "blob": "9bf463f07370d26bd14db47325f3671e6bd88252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 121,
    "path": "GRWTSK/Analysis/MeasureTheory/CorrelationThirdDerivative/Varianta77d6d10931c0ced61df3625cc3e0a352198f1d2a8852208565a70714c683c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6933b3a10c7c6d7e393d4d3cc361af12a26fa61afa3018bbfcf365d3bf1c074d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CorrelationThirdDerivative/Varianta77d6d10931c0ced61df3625cc3e0a352198f1d2a8852208565a70714c683c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a81ece3e-9807-90b8-3bb2-88134104ccf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_integral_mul_le_sqrt_bounds (f g : ℝ → ℝ) (B D : ℝ)
    (hB : 0 < B) (hD : 0 < D)
    (hf : Integrable (fun x ↦ f x ^ 2) volume)
    (hg : Integrable (fun x ↦ g x ^ 2) volume)
    (hp : Integrable (fun x ↦ f x * g x) volume)
    (hfB : (∫ x, f x ^ 2) ≤ B) (hgD : (∫ x, g x ^ 2) ≤ D) :
    |∫ x, f x * g x| ≤ Real.sqrt D * Real.sqrt B := by
  let c := Real.sqrt D * Real.sqrt B
  have hc : 0 < c := mul_pos (Real.sqrt_pos.mpr hD) (Real.sqrt_pos.mpr hB)
  have hc2 : c^2 = B * D := by
    dsimp [c]
    rw [mul_pow, Real.sq_sqrt hD.le, Real.sq_sqrt hB.le]
    ring
  have hpoint (x : ℝ) (sgn : ℝ) (hsign : sgn^2 = 1) :
      sgn * (2 * c) * (f x * g x) ≤ D * f x ^ 2 + B * g x ^ 2 := by
    have heq : D * f x ^ 2 + B * g x ^ 2 - sgn * (2 * c) * (f x * g x) =
        (Real.sqrt D * f x - sgn * Real.sqrt B * g x)^2 := by
      dsimp [c]
      calc
        _ = (Real.sqrt D)^2 * f x ^ 2 + (Real.sqrt B)^2 * g x ^ 2 -
            sgn * (2 * (Real.sqrt D * Real.sqrt B)) * (f x * g x) := by
          rw [Real.sq_sqrt hD.le, Real.sq_sqrt hB.le]
        _ = _ := by
          rw [sub_sq, mul_pow, mul_pow, mul_pow, hsign]
          ring
    exact sub_nonneg.mp (heq ▸ sq_nonneg _)
  have hh (sgn : ℝ) (hsign : sgn^2 = 1) :
      sgn * (2*c) * (∫ x, f x * g x) ≤ 2 * c^2 := by
    have hi := integral_mono (hp.const_mul (sgn * (2*c)))
      ((hf.const_mul D).add (hg.const_mul B)) (fun x ↦ hpoint x sgn hsign)
    simp only [Pi.add_apply] at hi
    rw [integral_const_mul, integral_add (hf.const_mul D) (hg.const_mul B),
      integral_const_mul, integral_const_mul] at hi
    have h1 := mul_le_mul_of_nonneg_left hfB hD.le
    have h2 := mul_le_mul_of_nonneg_left hgD hB.le
    nlinarith [hc2]
  have hplus := hh 1 (by norm_num)
  have hminus := hh (-1) (by norm_num)
  have upper : (∫ x, f x * g x) ≤ c := (mul_le_mul_iff_right₀ hc).mp (by nlinarith)
  have lower : -(∫ x, f x * g x) ≤ c := (mul_le_mul_iff_right₀ hc).mp (by nlinarith)
  exact abs_le.mpr ⟨by linarith, upper⟩

/-- The two actual derivative energies give a uniform inverse-cubic source bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CorrelationThirdDerivative/Varianta77d6d10931c0ced61df3625cc3e0a352198f1d2a8852208565a70714c683c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CorrelationThirdDerivative/Varianta77d6d10931c0ced61df3625cc3e0a352198f1d2a8852208565a70714c683c73.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf463f07370d26bd14db47325f3671e6bd88252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
