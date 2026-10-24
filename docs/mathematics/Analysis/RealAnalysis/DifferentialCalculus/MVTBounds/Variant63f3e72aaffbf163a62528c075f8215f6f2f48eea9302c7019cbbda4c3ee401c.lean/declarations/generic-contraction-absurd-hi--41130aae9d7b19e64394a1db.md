# generic_contraction_absurd_hi

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
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7128a1ea-a420-96e0-b1d5-8cab8d00e9ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ac34657-f35d-2ec9-6a15-e4f8a92b57b5",
  "kind": "lemma",
  "lexical_name": "generic_contraction_absurd_hi",
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
  "slug": "generic-contraction-absurd-hi--41130aae9d7b19e64394a1db",
  "source": {
    "blob": "4f461942b8537f8587853799e1a35b9e2c60784b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 348,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41130aae9d7b19e64394a1dbc1a65c808d424a9d5cbc7a746ca82e0e122f7bd7",
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

Occurrence: `result:0ac34657-f35d-2ec9-6a15-e4f8a92b57b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma generic_contraction_absurd_hi
    (I : IntervalRat)
    (c : ℚ) (fc dI : IntervalRat) (N : IntervalRat)
    (hc_eq : c = I.midpoint)
    (hdI_nonzero : ¬dI.containsZero)
    (hdI_pos : 0 < dI.lo)
    (hfc_correct : evalFunc1 e c ∈ fc)  -- f(c) ∈ fc
    (hN_lo_eq : N.lo = max I.lo (c - (IntervalRat.mul fc (IntervalRat.invNonzero ⟨dI, hdI_nonzero⟩)).hi))
    (hContract : N.lo > I.lo)
    (hMVT : evalFunc1 e c > (dI.lo : ℝ) * ((I.hi - I.lo) / 2 : ℚ)) : False := by
  let dNonzero : IntervalRat.IntervalRatNonzero := ⟨dI, hdI_nonzero⟩
  let Q := IntervalRat.mul fc (IntervalRat.invNonzero dNonzero)
  let hw : ℚ := (I.hi - I.lo) / 2
  -- From contraction: Q.hi < hw
  have hQ_hi_lt_hw : Q.hi < hw := by
    have hmax_gt : max I.lo (c - Q.hi) > I.lo := by rw [← hN_lo_eq]; exact hContract
    have hright_gt : c - Q.hi > I.lo := by
      by_contra! h
      have : max I.lo (c - Q.hi) = I.lo := max_eq_left h
      rw [this] at hmax_gt; exact lt_irrefl I.lo hmax_gt
    have hc_minus_Ilo : c - I.lo = hw := by rw [hc_eq]; simp only [IntervalRat.midpoint]; ring
    linarith
  -- From hfc_correct: fc.hi ≥ f(c) > dI.lo * hw
  simp only [IntervalRat.mem_def] at hfc_correct
  have hfc_hi_gt : (fc.hi : ℝ) > (dI.lo : ℝ) * hw := by
    have := hfc_correct.2
    calc (fc.hi : ℝ) ≥ evalFunc1 e c := this
      _ > dI.lo * hw := hMVT
  -- quotient_hi_lower_bound: Q.hi ≥ fc.hi / dI.lo > hw
  have hQ_hi_ge : Q.hi ≥ fc.hi / dI.lo := quotient_hi_lower_bound hdI_pos
  have hdI_lo_pos_real : (0 : ℝ) < dI.lo := by exact_mod_cast hdI_pos
  have hQ_hi_gt_hw : (Q.hi : ℝ) > hw := by
    calc (Q.hi : ℝ) ≥ fc.hi / dI.lo := by exact_mod_cast hQ_hi_ge
      _ > (dI.lo * hw) / dI.lo := by exact div_lt_div_of_pos_right hfc_hi_gt hdI_lo_pos_real
      _ = hw := by field_simp
  have hQ_hi_lt_hw_real : (Q.hi : ℝ) < hw := by exact_mod_cast hQ_hi_lt_hw
  linarith

/-- Generic contradiction for Q.lo case with dI.lo > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variant63f3e72aaffbf163a62528c075f8215f6f2f48eea9302c7019cbbda4c3ee401c.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f461942b8537f8587853799e1a35b9e2c60784b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
