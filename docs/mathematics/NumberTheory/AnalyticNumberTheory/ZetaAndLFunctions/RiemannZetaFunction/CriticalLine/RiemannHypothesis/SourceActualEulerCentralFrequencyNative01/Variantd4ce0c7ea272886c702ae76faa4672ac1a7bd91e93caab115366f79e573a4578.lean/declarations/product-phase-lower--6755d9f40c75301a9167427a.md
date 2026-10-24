# product_phase_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f301ac0c-327c-b285-9a15-b5f1567538cf",
  "kind": "theorem",
  "lexical_name": "product_phase_lower",
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
  "slug": "product-phase-lower--6755d9f40c75301a9167427a",
  "source": {
    "blob": "9ede8be06bb4b2abb317559365c930a1398d7c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 172,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6755d9f40c75301a9167427aa9868a5f9fdcd35dddfa3e619426c934a21fa236",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f301ac0c-327c-b285-9a15-b5f1567538cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem product_phase_lower {B M : ℝ} {b d f : ℂ}
    (hB : 0 ≤ B) (hM : 0 ≤ M) (hb : ‖b-(B : ℂ)‖ ≤ B/100)
    (hd : ‖d-(M : ℂ)‖ ≤ M/50) (hf : ‖f-9/16‖ ≤ 1/16) :
    B^2*M/4 ≤ (f*b^2*d).re := by
  have bn : ‖b‖ ≤ 101/100*B := by
    have h := norm_sub_le_iff.mp hb
    simpa only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hB] using h
  have dn : ‖d‖ ≤ 51/50*M := by
    have h := norm_sub_le_iff.mp hd
    simpa only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hM] using h
  have bsum : ‖b+(B : ℂ)‖ ≤ 201/100*B := by
    exact (norm_add_le _ _).trans (by
      rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hB]
      linarith)
  have b2 : ‖b^2-(B^2 : ℝ)‖ ≤ B^2/40 := by
    rw [show b^2-(B^2 : ℝ) = (b-(B : ℂ))*(b+(B : ℂ)) by push_cast; ring, norm_mul]
    calc
      _ ≤ (B/100)*(201/100*B) := mul_le_mul hb bsum (norm_nonneg _) (by positivity)
      _ ≤ _ := by nlinarith
  have prod : ‖b^2*d-(B^2*M : ℝ)‖ ≤ B^2*M/20 := by
    have he : b^2*d-(B^2*M : ℝ) = (b^2-(B^2 : ℝ))*d + (B^2 : ℝ)*(d-(M : ℂ)) := by
      push_cast
      ring
    rw [he]
    calc
      _ ≤ ‖(b^2-(B^2 : ℝ))*d‖ + ‖(B^2 : ℝ)*(d-(M : ℂ))‖ := norm_add_le _ _
      _ ≤ (B^2/40)*(51/50*M)+B^2*(M/50) := by
        rw [norm_mul, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
        exact add_le_add (mul_le_mul b2 dn (norm_nonneg _) (by positivity))
          (mul_le_mul_of_nonneg_left hd (sq_nonneg _))
      _ ≤ _ := by nlinarith
  have pn : ‖b^2*d‖ ≤ 21/20*(B^2*M) := by
    have h := norm_sub_le_iff.mp prod
    simpa only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity : 0 ≤ B^2*M)] using h
  have err : ‖f*b^2*d-((9/16*B^2*M : ℝ) : ℂ)‖ ≤ 3/32*(B^2*M) := by
    have he : f*b^2*d-((9/16*B^2*M : ℝ) : ℂ) =
        (f-9/16)*(b^2*d)+(9/16 : ℂ)*(b^2*d-(B^2*M : ℝ)) := by
      push_cast
      ring
    rw [he]
    calc
      _ ≤ ‖(f-9/16)*(b^2*d)‖+‖(9/16 : ℂ)*(b^2*d-(B^2*M : ℝ))‖ := norm_add_le _ _
      _ ≤ (1/16)*(21/20*(B^2*M))+(9/16)*(B^2*M/20) := by
        rw [norm_mul, norm_mul]
        norm_num
        exact add_le_add (mul_le_mul hf pn (norm_nonneg _) (by norm_num))
          (mul_le_mul_of_nonneg_left prod (by norm_num))
      _ = _ := by ring
  have er := (Complex.abs_re_le_norm _).trans err
  simp only [Complex.sub_re, Complex.ofReal_re] at er
  have en := neg_abs_le ((f*b^2*d).re-9/16*B^2*M)
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualEulerCentralFrequency
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ede8be06bb4b2abb317559365c930a1398d7c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
