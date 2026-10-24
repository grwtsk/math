# psiRelativeError_mul_pow_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0905e764-e82a-05f7-e0e6-d60c569fb258",
  "kind": "theorem",
  "lexical_name": "psiRelativeError_mul_pow_integrable",
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
  "slug": "psirelativeerror-mul-pow-integrable--7af52ccec06142f5b621d3c0",
  "source": {
    "blob": "c60fa98e9f8ab85edcd7cb03bf18c813016a7504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7af52ccec06142f5b621d3c0f5f0ffd86c4c2392fb2d11ec24e0a5c489cfa267",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0905e764-e82a-05f7-e0e6-d60c569fb258`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiRelativeError_mul_pow_integrable (n : ℕ) :
    IntegrableOn (fun t : ℝ => t^n * psiRelativeError t) (Ioi (0:ℝ)) := by
  obtain ⟨T, hT, hbound⟩ := psiRelativeError_eventual_inverse_power (n+2)
  have hT0 : 0 < T := by linarith
  have hm : Measurable (fun t : ℝ => t^n * psiRelativeError t) :=
    (measurable_id.pow_const n).mul psiRelativeError_measurable
  have hnear : IntegrableOn (fun t : ℝ => t^n * psiRelativeError t) (Ioc (0:ℝ) T) := by
    refine (integrableOn_const (C:=T^n * (Real.log 4+5))
      (measure_Ioc_lt_top.ne)).mono' hm.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    rw [Real.norm_eq_abs, abs_mul, abs_of_pos (pow_pos ht.1 n)]
    exact mul_le_mul (pow_le_pow_left₀ ht.1.le ht.2 n) (psiRelativeError_bound t)
      (abs_nonneg _) (pow_nonneg hT0.le n)
  have htail : IntegrableOn (fun t : ℝ => t^n * psiRelativeError t) (Ioi T) := by
    refine (inverse_square_integrable hT0).mono' hm.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have ht0 : 0 < t := hT0.trans ht
    rw [Real.norm_eq_abs, abs_mul, abs_of_pos (pow_pos ht0 n)]
    calc
      _ ≤ t^n * (1 / t^(n+2)) := mul_le_mul_of_nonneg_left
        (hbound t ht.le) (pow_nonneg ht0.le n)
      _ = 1 / t^2 := by rw [pow_add]; field_simp; ring
  have hi := hnear.union htail
  have hs : Ioc (0:ℝ) T ∪ Ioi T = Ioi 0 := by
    ext t
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (h|h)
      · exact h.1
      · exact hT0.trans h
    · intro ht
      by_cases h : t ≤ T
      · exact Or.inl ⟨ht,h⟩
      · exact Or.inr (lt_of_not_ge h)
  simpa only [hs] using hi

/-- Actual unweighted logarithmic Chebyshev relative error is L1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c60fa98e9f8ab85edcd7cb03bf18c813016a7504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
