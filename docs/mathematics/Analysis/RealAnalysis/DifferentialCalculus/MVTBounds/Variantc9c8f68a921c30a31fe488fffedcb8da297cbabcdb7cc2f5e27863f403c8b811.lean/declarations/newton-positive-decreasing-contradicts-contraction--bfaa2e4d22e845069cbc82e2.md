# newton_positive_decreasing_contradicts_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97243e9b-9135-d36f-3f51-01cfca1a7aa9",
  "kind": "lemma",
  "lexical_name": "newton_positive_decreasing_contradicts_contraction",
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
  "slug": "newton-positive-decreasing-contradicts-contraction--bfaa2e4d22e845069cbc82e2",
  "source": {
    "blob": "41f5fb74a45ad2a370db00f21717c481ebe0bfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 605,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfaa2e4d22e845069cbc82e297fd217bc800b0c045442cf90d966d86066e7270",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97243e9b-9135-d36f-3f51-01cfca1a7aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 605–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma newton_positive_decreasing_contradicts_contraction
    (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (I : IntervalRat)
    (hI_nonsingleton : I.lo < I.hi)
    (hdI_hi_neg : (derivInterval e (fun _ => I) 0).hi < 0)
    (hCont : ContinuousOn (evalFunc1 e) (Set.Icc I.lo I.hi))
    (hf_Ihi_pos : 0 < evalFunc1 e I.hi) :
    let c : ℚ := I.midpoint
    let hw : ℚ := (I.hi - I.lo) / 2
    let dI := derivInterval e (fun _ => I) 0
    let fc := evalInterval1 e (IntervalRat.singleton c)
    (fc.hi : ℝ) / dI.hi ≤ -hw := by
  intro c hw dI fc
  have hderiv := deriv_in_derivInterval e hsupp hvar0 I
  have hderiv_hi : ∀ ξ ∈ I, deriv (evalFunc1 e) ξ ≤ (dI.hi : ℝ) := fun ξ hξ => (hderiv ξ hξ).2
  have hc_in_I : (c : ℝ) ∈ I := IntervalRat.midpoint_mem I
  have hIhi_in_I : (I.hi : ℝ) ∈ I := by
    simp only [IntervalRat.mem_def]
    exact ⟨by exact_mod_cast I.le, le_refl _⟩
  have hmvt := mvt_upper_bound e hsupp hvar0 I dI.hi hderiv_hi hCont (c : ℝ) I.hi hc_in_I hIhi_in_I
  have hc_le_Ihi : (c : ℝ) ≤ I.hi := by
    have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
    have hc_def : (c : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      show ((I.lo + I.hi) / 2 : ℚ) = ((I.lo : ℝ) + I.hi) / 2
      push_cast; ring
    linarith
  specialize hmvt hc_le_Ihi
  have hIhi_minus_c : (I.hi : ℝ) - c = (hw : ℝ) := by
    have hc_def : (c : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      show ((I.lo + I.hi) / 2 : ℚ) = ((I.lo : ℝ) + I.hi) / 2
      push_cast; ring
    have hhw_def : (hw : ℝ) = ((I.hi : ℝ) - I.lo) / 2 := by
      show (((I.hi - I.lo) / 2 : ℚ) : ℝ) = ((I.hi : ℝ) - I.lo) / 2
      push_cast; ring
    linarith
  rw [hIhi_minus_c] at hmvt
  have hfc_lower : evalFunc1 e c ≥ evalFunc1 e I.hi - (dI.hi : ℝ) * hw := by linarith
  have hdI_hi_neg_real : (dI.hi : ℝ) < 0 := by exact_mod_cast hdI_hi_neg
  have hhw_pos : (0 : ℝ) < hw := by
    have h : I.lo < I.hi := hI_nonsingleton
    have hhw_def : (hw : ℝ) = ((I.hi : ℝ) - I.lo) / 2 := by
      show (((I.hi - I.lo) / 2 : ℚ) : ℝ) = ((I.hi : ℝ) - I.lo) / 2
      push_cast; ring
    rw [hhw_def]
    have hpos : (I.hi : ℝ) - I.lo > 0 := by
      have : (I.lo : ℝ) < I.hi := by exact_mod_cast h
      linarith
    linarith
  have hfc_bound : evalFunc1 e c > -(dI.hi : ℝ) * hw := by linarith
  have hfc_correct := evalInterval1_correct e hsupp (c : ℝ) (IntervalRat.singleton c)
    (IntervalRat.mem_singleton c)
  simp only [IntervalRat.mem_def] at hfc_correct
  have hfc_hi_ge : (fc.hi : ℝ) ≥ evalFunc1 e c := hfc_correct.2
  have hfc_hi_bound : (fc.hi : ℝ) > -(dI.hi : ℝ) * hw := by linarith
  have h_neg_dI_hw : -((dI.hi : ℝ)) * hw = -(hw : ℝ) * dI.hi := by ring
  rw [h_neg_dI_hw] at hfc_hi_bound
  have hdiv : (fc.hi : ℝ) / dI.hi ≤ -(hw : ℝ) := by
    rw [div_le_iff_of_neg hdI_hi_neg_real]
    linarith
  exact hdiv

/-- Contradiction lemma for decreasing function: If f < 0 at I.lo with f' ≤ dI.hi < 0 (decreasing),
    then the Newton quotient violates contraction bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean#L605).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41f5fb74a45ad2a370db00f21717c481ebe0bfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
