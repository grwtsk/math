# logNormalization_perron

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f79d419-29a6-4265-cea8-d6e21ec892aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fd2bfdf-8813-ad52-13f5-08fb1314350c",
  "kind": "theorem",
  "lexical_name": "logNormalization_perron",
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
  "slug": "lognormalization-perron--a0dd42dcef21c6d2478e6fb7",
  "source": {
    "blob": "ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0dd42dcef21c6d2478e6fb7ae6aab9ec5796cde115fb241440a8a2e6d68e90b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fd2bfdf-8813-ad52-13f5-08fb1314350c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logNormalization_perron (c : ℝ) (hc : 0 < c) (X : ℕ) (hX : 1 ≤ X) :
    (logNormalization X : ℂ) =
      (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ,
        (X : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
          (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
            riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I))) := by
  have hx : 0 < (X : ℝ) := by exact_mod_cast (show 0 < X by omega)
  have hswap := integral_tsum_of_summable_integral_norm
    (perronTerm_integrable c (X : ℝ) hc hx)
    (perronTerm_norm_integrals_summable c (X : ℝ) hc)
  have hi : (∫ t : ℝ, ∑' n : ℕ, perronTerm c (X : ℝ) n t) =
      ∫ t : ℝ, (X : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
        (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
          riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I)) := by
    apply integral_congr_ae
    filter_upwards [] with t
    simpa only [Complex.ofReal_natCast] using perronTerm_tsum c (X : ℝ) hc t
  rw [← hi, ← hswap, ← tsum_const_smul'']
  let F : ℕ → ℂ := fun n =>
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronTerm c (X : ℝ) n t)
  have hzero : ∀ n ∉ Finset.Icc 1 X, F n = 0 := by
    intro n hn
    by_cases hn0 : n = 0
    · subst n
      simp [F, perronTerm, LSeries.term]
    · have hnpos : 0 < n := Nat.pos_of_ne_zero hn0
      have hnx : X < n := by simp only [Finset.mem_Icc] at hn; omega
      simp only [F, perronTerm_integral c (X : ℝ) hc hx n hnpos]
      rw [if_neg (by exact_mod_cast (not_lt.mpr hnx.le))]
  change (logNormalization X : ℂ) = ∑' n : ℕ, F n
  rw [tsum_eq_sum hzero, logNormalization, Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hnpos, hnx⟩ := Finset.mem_Icc.mp hn
  rw [show F n = (1 / (2 * Real.pi) : ℝ) •
      (∫ t : ℝ, perronTerm c (X : ℝ) n t) from rfl,
    perronTerm_integral c (X : ℝ) hc hx n (by omega)]
  by_cases hlt : n < X
  · rw [if_pos (by exact_mod_cast hlt)]
    push_cast
    rfl
  · have heq : n = X := by omega
    subst n
    rw [if_neg (lt_irrefl _)]
    simp [div_self (show (X : ℝ) ≠ 0 from hx.ne')]

end
end MobiusPerronScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @MobiusPerronScratch.mobiusDirichlet_reciprocal
#print MobiusPerronScratch.mobiusDirichlet_reciprocal
#print axioms MobiusPerronScratch.mobiusDirichlet_reciprocal
#check @MobiusPerronScratch.perronTerm
#print MobiusPerronScratch.perronTerm
#print axioms MobiusPerronScratch.perronTerm
#check @MobiusPerronScratch.perronTerm_norm
#print MobiusPerronScratch.perronTerm_norm
#print axioms MobiusPerronScratch.perronTerm_norm
#check @MobiusPerronScratch.perronTerm_integrable
#print MobiusPerronScratch.perronTerm_integrable
#print axioms MobiusPerronScratch.perronTerm_integrable
#check @MobiusPerronScratch.perronTerm_norm_integrals_summable
#print MobiusPerronScratch.perronTerm_norm_integrals_summable
#print axioms MobiusPerronScratch.perronTerm_norm_integrals_summable
#check @MobiusPerronScratch.perronTerm_tsum
#print MobiusPerronScratch.perronTerm_tsum
#print axioms MobiusPerronScratch.perronTerm_tsum
#check @MobiusPerronScratch.perronTerm_ratio
#print MobiusPerronScratch.perronTerm_ratio
#print axioms MobiusPerronScratch.perronTerm_ratio
#check @MobiusPerronScratch.mobiusPerron_integrable
#print MobiusPerronScratch.mobiusPerron_integrable
#print axioms MobiusPerronScratch.mobiusPerron_integrable
#check @MobiusPerronScratch.perronTerm_integral
#print MobiusPerronScratch.perronTerm_integral
#print axioms MobiusPerronScratch.perronTerm_integral
#check @MobiusPerronScratch.logNormalization_perron
#print MobiusPerronScratch.logNormalization_perron
#print axioms MobiusPerronScratch.logNormalization_perron
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
