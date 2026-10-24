# newton_negative_increasing_contradicts_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f461942b8537f8587853799e1a35b9e2c60784b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1bcafd4-6759-0b0b-1501-adbd5e0a97a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a3b039c-5a48-36d7-9626-c6ab647bb099",
  "kind": "lemma",
  "lexical_name": "newton_negative_increasing_contradicts_contraction",
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
  "slug": "newton-negative-increasing-contradicts-contraction--eba2910a732bdc438868e374",
  "source": {
    "blob": "4f461942b8537f8587853799e1a35b9e2c60784b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eba2910a732bdc438868e3744486cca9fbc5b6ece98c6d7ed5893b9b7bcec6e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a3b039c-5a48-36d7-9626-c6ab647bb099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma newton_negative_increasing_contradicts_contraction
    (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (I : IntervalRat)
    (_hI_nonsingleton : I.lo < I.hi)
    (hdI_lo_pos : 0 < (derivInterval e (fun _ => I) 0).lo)
    (hCont : ContinuousOn (evalFunc1 e) (Set.Icc I.lo I.hi))
    (hf_Ihi_neg : evalFunc1 e I.hi < 0) :
    let c : ℚ := I.midpoint
    let hw : ℚ := (I.hi - I.lo) / 2
    let dI := derivInterval e (fun _ => I) 0
    let fc := evalInterval1 e (IntervalRat.singleton c)
    -- The Newton quotient violates the contraction bound (in ℝ)
    (fc.lo : ℝ) / dI.lo ≤ -hw := by
  intro c hw dI fc
  -- Get derivative bounds
  have hderiv := deriv_in_derivInterval e hsupp hvar0 I
  have hderiv_lo : ∀ ξ ∈ I, (dI.lo : ℝ) ≤ deriv (evalFunc1 e) ξ := fun ξ hξ => (hderiv ξ hξ).1
  -- Get memberships
  have hc_in_I : (c : ℝ) ∈ I := IntervalRat.midpoint_mem I
  have hIhi_in_I : (I.hi : ℝ) ∈ I := by
    simp only [IntervalRat.mem_def]
    exact ⟨by exact_mod_cast I.le, le_refl _⟩
  -- Apply MVT: f(I.hi) - f(c) ≥ dI.lo * (I.hi - c)
  have hmvt := mvt_lower_bound e hsupp hvar0 I dI.lo hderiv_lo hCont c I.hi hc_in_I hIhi_in_I
  have hc_le_Ihi : (c : ℝ) ≤ I.hi := by
    have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
    have hc_def : (c : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      show ((I.lo + I.hi) / 2 : ℚ) = ((I.lo : ℝ) + I.hi) / 2
      push_cast; ring
    linarith
  specialize hmvt hc_le_Ihi
  -- I.hi - c = hw (in ℝ)
  have hIhi_minus_c : (I.hi : ℝ) - c = hw := by
    have hc_def : (c : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      show ((I.lo + I.hi) / 2 : ℚ) = ((I.lo : ℝ) + I.hi) / 2
      push_cast; ring
    have hhw_def : (hw : ℝ) = ((I.hi : ℝ) - I.lo) / 2 := by
      show (((I.hi - I.lo) / 2 : ℚ) : ℝ) = ((I.hi : ℝ) - I.lo) / 2
      push_cast; ring
    linarith
  rw [hIhi_minus_c] at hmvt
  -- So f(c) ≤ f(I.hi) - dI.lo * hw < -dI.lo * hw (since f(I.hi) < 0)
  have hfc_bound : evalFunc1 e c < -((dI.lo : ℝ) * hw) := by linarith
  -- By interval correctness: fc.lo ≤ f(c)
  have hfc_correct := evalInterval1_correct e hsupp (c : ℝ) (IntervalRat.singleton c)
    (IntervalRat.mem_singleton c)
  simp only [IntervalRat.mem_def] at hfc_correct
  have hfc_lo_le : (fc.lo : ℝ) ≤ evalFunc1 e c := hfc_correct.1
  -- So fc.lo < -dI.lo * hw
  have hfc_lo_bound : (fc.lo : ℝ) < -((dI.lo : ℝ) * hw) := by linarith
  -- Therefore fc.lo / dI.lo < -hw (since dI.lo > 0)
  have hdI_lo_pos_real : (0 : ℝ) < dI.lo := by exact_mod_cast hdI_lo_pos
  have hdiv_bound : (fc.lo : ℝ) / dI.lo < -(hw : ℝ) := by
    have hpos : (0 : ℝ) < dI.lo := hdI_lo_pos_real
    calc (fc.lo : ℝ) / dI.lo < (-((dI.lo : ℝ) * hw)) / dI.lo := by {
      apply div_lt_div_of_pos_right hfc_lo_bound hpos
    }
    _ = -(hw : ℝ) := by field_simp;
  linarith

/-! ### Quotient bound lemmas -/

/-- When dI.lo > 0, the quotient Q has Q.hi ≥ fc.hi / dI.lo (regardless of fc signs).
    This is because the invNonzero of positive dI is [1/dI.hi, 1/dI.lo], and the max
    includes fc.hi * dI.lo⁻¹ as one of its corners. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f461942b8537f8587853799e1a35b9e2c60784b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
