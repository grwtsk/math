# generic_contraction_absurd_hi_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8f98149-c9f1-6ee9-d4c0-f0d50a9e01a4",
  "kind": "lemma",
  "lexical_name": "generic_contraction_absurd_hi_neg",
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
  "slug": "generic-contraction-absurd-hi-neg--2e4423c5d38c060fbd21ab9f",
  "source": {
    "blob": "41f5fb74a45ad2a370db00f21717c481ebe0bfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 434,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e4423c5d38c060fbd21ab9ff0daa836adf2f1c1447f8a0824e7720fb7a4849e",
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

Occurrence: `result:d8f98149-c9f1-6ee9-d4c0-f0d50a9e01a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma generic_contraction_absurd_hi_neg
    (I : IntervalRat)
    (c : ℚ) (fc dI : IntervalRat) (N : IntervalRat)
    (hc_eq : c = I.midpoint)
    (hdI_nonzero : ¬dI.containsZero)
    (hdI_neg : dI.hi < 0)
    (hfc_correct : evalFunc1 e c ∈ fc)
    (hN_lo_eq : N.lo = max I.lo (c - (IntervalRat.mul fc (IntervalRat.invNonzero ⟨dI, hdI_nonzero⟩)).hi))
    (hContract : N.lo > I.lo)
    (hMVT : evalFunc1 e c < (dI.hi : ℝ) * ((I.hi - I.lo) / 2 : ℚ)) : False := by
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
  -- From hfc_correct: fc.lo ≤ f(c) < dI.hi * hw
  simp only [IntervalRat.mem_def] at hfc_correct
  have hfc_lo_lt : (fc.lo : ℝ) < (dI.hi : ℝ) * hw := by
    have := hfc_correct.1
    calc (fc.lo : ℝ) ≤ evalFunc1 e c := this
      _ < dI.hi * hw := hMVT
  -- quotient_hi_ge_neg: Q.hi ≥ fc.lo / dI.hi
  have hQ_hi_ge : Q.hi ≥ fc.lo / dI.hi := quotient_hi_ge_neg hdI_neg
  -- With dI.hi < 0: fc.lo < dI.hi * hw means fc.lo / dI.hi > hw
  have hdI_hi_neg_real : (dI.hi : ℝ) < 0 := by exact_mod_cast hdI_neg
  have hQ_hi_gt_hw : (Q.hi : ℝ) > hw := by
    have hdiv : (fc.lo : ℝ) / dI.hi > hw := by
      rw [gt_iff_lt, lt_div_iff_of_neg hdI_hi_neg_real]
      have h : (hw : ℝ) * dI.hi = (dI.hi : ℝ) * hw := by ring
      rw [h]; exact hfc_lo_lt
    calc (Q.hi : ℝ) ≥ fc.lo / dI.hi := by exact_mod_cast hQ_hi_ge
      _ > hw := hdiv
  have hQ_hi_lt_hw_real : (Q.hi : ℝ) < hw := by exact_mod_cast hQ_hi_lt_hw
  linarith

/-- Generic contradiction for Q.lo case with dI.hi < 0 (decreasing function). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41f5fb74a45ad2a370db00f21717c481ebe0bfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
