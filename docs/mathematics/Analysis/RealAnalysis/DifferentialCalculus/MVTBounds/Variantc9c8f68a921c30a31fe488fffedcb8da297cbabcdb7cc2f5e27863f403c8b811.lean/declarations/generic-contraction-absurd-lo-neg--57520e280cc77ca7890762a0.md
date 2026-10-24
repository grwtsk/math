# generic_contraction_absurd_lo_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d5d90e2-7244-b7fa-caf5-6cbb0f02bd47",
  "kind": "lemma",
  "lexical_name": "generic_contraction_absurd_lo_neg",
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
  "slug": "generic-contraction-absurd-lo-neg--57520e280cc77ca7890762a0",
  "source": {
    "blob": "41f5fb74a45ad2a370db00f21717c481ebe0bfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 477,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57520e280cc77ca7890762a0ab93b500ed221ae8d45f106c6c023866ab02a6cc",
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

Occurrence: `result:6d5d90e2-7244-b7fa-caf5-6cbb0f02bd47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma generic_contraction_absurd_lo_neg
    (I : IntervalRat)
    (c : ℚ) (fc dI : IntervalRat) (N : IntervalRat)
    (hc_eq : c = I.midpoint)
    (hdI_nonzero : ¬dI.containsZero)
    (hdI_neg : dI.hi < 0)
    (hfc_correct : evalFunc1 e c ∈ fc)
    (hN_hi_eq : N.hi = min I.hi (c - (IntervalRat.mul fc (IntervalRat.invNonzero ⟨dI, hdI_nonzero⟩)).lo))
    (hContract : N.hi < I.hi)
    (hMVT : evalFunc1 e c > -((dI.hi : ℝ) * ((I.hi - I.lo) / 2 : ℚ))) : False := by
  let dNonzero : IntervalRat.IntervalRatNonzero := ⟨dI, hdI_nonzero⟩
  let Q := IntervalRat.mul fc (IntervalRat.invNonzero dNonzero)
  let hw : ℚ := (I.hi - I.lo) / 2
  -- From contraction: Q.lo > -hw
  have hQ_lo_gt_neg_hw : Q.lo > -hw := by
    have hmin_lt : min I.hi (c - Q.lo) < I.hi := by rw [← hN_hi_eq]; exact hContract
    have hright_lt : c - Q.lo < I.hi := by
      by_contra! h
      have : min I.hi (c - Q.lo) = I.hi := min_eq_left h
      rw [this] at hmin_lt; exact lt_irrefl I.hi hmin_lt
    have hc_minus_Ihi : c - I.hi = -hw := by rw [hc_eq]; simp only [IntervalRat.midpoint]; ring
    linarith
  -- From hfc_correct: fc.hi ≥ f(c) > -(dI.hi * hw)
  simp only [IntervalRat.mem_def] at hfc_correct
  have hfc_hi_gt : (fc.hi : ℝ) > -((dI.hi : ℝ) * hw) := by
    have := hfc_correct.2
    calc (fc.hi : ℝ) ≥ evalFunc1 e c := this
      _ > -(dI.hi * hw) := hMVT
  -- quotient_lo_le_neg: Q.lo ≤ fc.hi / dI.hi
  have hQ_lo_le : Q.lo ≤ fc.hi / dI.hi := quotient_lo_le_neg hdI_neg
  -- With dI.hi < 0: fc.hi > -(dI.hi * hw) means fc.hi / dI.hi < -hw
  have hdI_hi_neg_real : (dI.hi : ℝ) < 0 := by exact_mod_cast hdI_neg
  have hQ_lo_lt_neg_hw : (Q.lo : ℝ) < -hw := by
    have hdiv : (fc.hi : ℝ) / dI.hi < -hw := by
      rw [div_lt_iff_of_neg hdI_hi_neg_real]
      have h : (-(hw : ℝ)) * dI.hi = -((dI.hi : ℝ) * hw) := by ring
      rw [h]; exact hfc_hi_gt
    calc (Q.lo : ℝ) ≤ fc.hi / dI.hi := by exact_mod_cast hQ_lo_le
      _ < -hw := hdiv
  have hQ_lo_gt_neg_hw_real : (Q.lo : ℝ) > -hw := by exact_mod_cast hQ_lo_gt_neg_hw
  linarith

/-! ### Simple step contradiction lemmas (using generic lemmas) -/

/-- Key contradiction: if newtonStepSimple contracts AND fc.hi/dI.lo ≥ hw (with dI.lo > 0), then False. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41f5fb74a45ad2a370db00f21717c481ebe0bfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
