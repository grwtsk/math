# actual_prefix_laplace_eq_LSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acd8f49d-0d3a-ae7c-c48f-87ee4b77422b",
  "kind": "theorem",
  "lexical_name": "actual_prefix_laplace_eq_LSeries",
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
  "slug": "actual-prefix-laplace-eq-lseries--c6214a38a8e3fcd86089732a",
  "source": {
    "blob": "5ef83e182fbf018dae1b8559b08b006365b13e65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 194,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6214a38a8e3fcd86089732a79304d28a516aa6d69b586de9c651126f3f30785",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acd8f49d-0d3a-ae7c-c48f-87ee4b77422b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prefix_laplace_eq_LSeries {s : ℝ} (hs : 0 < s) :
    ((s * ∫ t in Ioi 0, Real.exp (-s*t)*mangoldtLogPrefix t : ℝ):ℂ) =
      LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) ((s+1:ℝ):ℂ) := by
  rw [actual_prefix_laplace_eq_tsum hs,mul_div_cancel₀ _ (ne_of_gt hs),Complex.ofReal_tsum]
  simp_rw [weighted_exp_eq_term]
  have hS := ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s:=((s+1:ℝ):ℂ)) (by simp only [Complex.ofReal_re]; linarith)
  have hh := hS.sum_add_tsum_nat_add 2
  have hz : (∑ n ∈ Finset.range 2, LSeries.term
    (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) ((s+1:ℝ):ℂ) n) = 0 := by
    norm_num [Finset.sum_range_succ,LSeries.term]
  rw [hz,zero_add] at hh
  exact hh

end ContinuousResearch.ActualMangoldtLaplace

/- Exact public type, full proof and transitive trusted dependency audits. -/

#check ContinuousResearch.ActualMangoldtLaplace.mangoldtWeight
#print axioms ContinuousResearch.ActualMangoldtLaplace.mangoldtWeight
#print ContinuousResearch.ActualMangoldtLaplace.mangoldtWeight

#check ContinuousResearch.ActualMangoldtLaplace.laplaceAtom
#print axioms ContinuousResearch.ActualMangoldtLaplace.laplaceAtom
#print ContinuousResearch.ActualMangoldtLaplace.laplaceAtom

#check ContinuousResearch.ActualMangoldtLaplace.onset_pos
#print axioms ContinuousResearch.ActualMangoldtLaplace.onset_pos
#print ContinuousResearch.ActualMangoldtLaplace.onset_pos

#check ContinuousResearch.ActualMangoldtLaplace.weight_nonneg
#print axioms ContinuousResearch.ActualMangoldtLaplace.weight_nonneg
#print ContinuousResearch.ActualMangoldtLaplace.weight_nonneg

#check ContinuousResearch.ActualMangoldtLaplace.atom_nonneg
#print axioms ContinuousResearch.ActualMangoldtLaplace.atom_nonneg
#print ContinuousResearch.ActualMangoldtLaplace.atom_nonneg

#check ContinuousResearch.ActualMangoldtLaplace.atom_measurable
#print axioms ContinuousResearch.ActualMangoldtLaplace.atom_measurable
#print ContinuousResearch.ActualMangoldtLaplace.atom_measurable

#check ContinuousResearch.ActualMangoldtLaplace.atom_integrable
#print axioms ContinuousResearch.ActualMangoldtLaplace.atom_integrable
#print ContinuousResearch.ActualMangoldtLaplace.atom_integrable

#check ContinuousResearch.ActualMangoldtLaplace.atom_integral
#print axioms ContinuousResearch.ActualMangoldtLaplace.atom_integral
#print ContinuousResearch.ActualMangoldtLaplace.atom_integral

#check ContinuousResearch.ActualMangoldtLaplace.weighted_exp_eq_norm_term
#print axioms ContinuousResearch.ActualMangoldtLaplace.weighted_exp_eq_norm_term
#print ContinuousResearch.ActualMangoldtLaplace.weighted_exp_eq_norm_term

#check ContinuousResearch.ActualMangoldtLaplace.atom_norm_integrals_summable
#print axioms ContinuousResearch.ActualMangoldtLaplace.atom_norm_integrals_summable
#print ContinuousResearch.ActualMangoldtLaplace.atom_norm_integrals_summable

#check ContinuousResearch.ActualMangoldtLaplace.onset_closed_iff
#print axioms ContinuousResearch.ActualMangoldtLaplace.onset_closed_iff
#print ContinuousResearch.ActualMangoldtLaplace.onset_closed_iff

#check ContinuousResearch.ActualMangoldtLaplace.atom_zero_outside
#print axioms ContinuousResearch.ActualMangoldtLaplace.atom_zero_outside
#print ContinuousResearch.ActualMangoldtLaplace.atom_zero_outside

#check ContinuousResearch.ActualMangoldtLaplace.atoms_summable
#print axioms ContinuousResearch.ActualMangoldtLaplace.atoms_summable
#print ContinuousResearch.ActualMangoldtLaplace.atoms_summable

#check ContinuousResearch.ActualMangoldtLaplace.atoms_tsum_eq_actual
#print axioms ContinuousResearch.ActualMangoldtLaplace.atoms_tsum_eq_actual
#print ContinuousResearch.ActualMangoldtLaplace.atoms_tsum_eq_actual

#check ContinuousResearch.ActualMangoldtLaplace.atoms_tsum_eq_indicator
#print axioms ContinuousResearch.ActualMangoldtLaplace.atoms_tsum_eq_indicator
#print ContinuousResearch.ActualMangoldtLaplace.atoms_tsum_eq_indicator

#check ContinuousResearch.ActualMangoldtLaplace.atoms_integrals_summable
#print axioms ContinuousResearch.ActualMangoldtLaplace.atoms_integrals_summable
#print ContinuousResearch.ActualMangoldtLaplace.atoms_integrals_summable

#check ContinuousResearch.ActualMangoldtLaplace.atoms_lintegral
#print axioms ContinuousResearch.ActualMangoldtLaplace.atoms_lintegral
#print ContinuousResearch.ActualMangoldtLaplace.atoms_lintegral

#check ContinuousResearch.ActualMangoldtLaplace.actual_prefix_laplace_integrable
#print axioms ContinuousResearch.ActualMangoldtLaplace.actual_prefix_laplace_integrable
#print ContinuousResearch.ActualMangoldtLaplace.actual_prefix_laplace_integrable

#check ContinuousResearch.ActualMangoldtLaplace.actual_prefix_laplace_eq_tsum
#print axioms ContinuousResearch.ActualMangoldtLaplace.actual_prefix_laplace_eq_tsum
#print ContinuousResearch.ActualMangoldtLaplace.actual_prefix_laplace_eq_tsum

#check ContinuousResearch.ActualMangoldtLaplace.weighted_exp_eq_term
#print axioms ContinuousResearch.ActualMangoldtLaplace.weighted_exp_eq_term
#print ContinuousResearch.ActualMangoldtLaplace.weighted_exp_eq_term

#check ContinuousResearch.ActualMangoldtLaplace.actual_prefix_laplace_eq_LSeries
#print axioms ContinuousResearch.ActualMangoldtLaplace.actual_prefix_laplace_eq_LSeries
#print ContinuousResearch.ActualMangoldtLaplace.actual_prefix_laplace_eq_LSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef83e182fbf018dae1b8559b08b006365b13e65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
