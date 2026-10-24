# mvDiag_of_eigenBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1803c2dd-ec7a-a485-d032-df3fa747e97c",
  "kind": "theorem",
  "lexical_name": "mvDiag_of_eigenBound",
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
  "slug": "mvdiag-of-eigenbound--89ff7c44662ea7347e072417",
  "source": {
    "blob": "b1244b0db1cf17d49da91d3dc86f5cdd529104db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 166,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89ff7c44662ea7347e072417719ed3df05438c87879873c8edd0f019c1d00b03",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1803c2dd-ec7a-a485-d032-df3fa747e97c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mvDiag_of_eigenBound {C : ℝ} (hb : EigenBound C) : MVDiag C := by
  intro ι _ _ freq δ x hinj hpos hadm
  have h : Adm freq δ := ⟨hinj, hpos, hadm⟩
  -- y_r := x_r / √δ_r
  set y : ι → ℂ := fun r => x r / (Real.sqrt (δ r) : ℂ) with hydef
  have hsq : ∀ r, (Real.sqrt (δ r) : ℂ) ≠ 0 := fun r => by
    exact_mod_cast (Real.sqrt_pos.mpr (hpos r)).ne'
  have hxy : ∀ r, x r = (Real.sqrt (δ r) : ℂ) * y r := fun r => by
    simp only [hydef]; field_simp [hsq r]
  -- Σ ‖y_r‖² = Σ ‖x_r‖²/δ_r
  have hnorm : ∑ r, ‖y r‖ ^ 2 = ∑ r, ‖x r‖ ^ 2 / δ r := by
    refine Finset.sum_congr rfl fun r _ => ?_
    simp only [hydef, norm_div, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (Real.sqrt_nonneg _), div_pow, Real.sq_sqrt (hpos r).le]
  -- the double sum is rewritten termwise:
  -- Σ_{r,s} [r≠s] x_r x̄_s/(λ_r−λ_s) = Σ_r Σ_s y_r conj(y_s) k_{rs}
  have hterm : ∀ r s, (if r = s then (0 : ℂ) else x r * conj (x s) / ((freq r - freq s : ℝ) : ℂ))
      = y r * conj (y s) * (kfun freq δ r s : ℂ) := by
    intro r s
    by_cases hrs : r = s
    · simp [hrs, kfun]
    · rw [if_neg hrs]
      simp only [kfun, if_neg hrs, hxy r, hxy s, map_mul, Complex.conj_ofReal]
      have hf : ((freq r - freq s : ℝ) : ℂ) ≠ 0 := by
        exact_mod_cast sub_ne_zero.mpr (fun e => hrs (hinj e))
      push_cast
      field_simp
  have hsum : (∑ r, ∑ s, if r = s then (0 : ℂ) else x r * conj (x s) / ((freq r - freq s : ℝ) : ℂ))
      = conj (star y ⬝ᵥ (Mmat freq δ *ᵥ y)) * Complex.I := by
    simp only [hterm, dotProduct, Matrix.mulVec, Mmat, Pi.star_apply, Complex.star_def, map_sum,
      map_mul, Complex.conj_conj, Complex.conj_ofReal, Complex.conj_I, Finset.sum_mul, Finset.mul_sum]
    refine Finset.sum_congr rfl fun r _ => Finset.sum_congr rfl fun s _ => ?_
    have : Complex.I * Complex.I = -1 := Complex.I_mul_I
    linear_combination (y r * conj (y s) * (kfun freq δ r s : ℂ)) * this
  rw [hsum, norm_mul, Complex.norm_I, mul_one, Complex.norm_conj, ← hnorm]
  exact norm_form_le hb h y

/-- … hence the bilinear H-MV of `Hypotheses.lean` with constant `2C` (polarization). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1244b0db1cf17d49da91d3dc86f5cdd529104db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
