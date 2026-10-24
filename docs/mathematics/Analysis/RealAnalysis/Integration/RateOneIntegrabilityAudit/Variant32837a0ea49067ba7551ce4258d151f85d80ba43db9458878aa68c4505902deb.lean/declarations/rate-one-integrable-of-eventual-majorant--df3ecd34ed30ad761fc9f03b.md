# rate_one_integrable_of_eventual_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b37afe64e1e64ab71ae2534f87f79d38d0444ab5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:072e799b-68fb-190b-82d4-c296fcdd713b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:382738fb-7e6f-b3c7-1444-26e13434cb2d",
  "kind": "theorem",
  "lexical_name": "rate_one_integrable_of_eventual_majorant",
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
  "slug": "rate-one-integrable-of-eventual-majorant--df3ecd34ed30ad761fc9f03b",
  "source": {
    "blob": "b37afe64e1e64ab71ae2534f87f79d38d0444ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df3ecd34ed30ad761fc9f03b752abe3a79e10139dd0378ecc26204893476c8ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:382738fb-7e6f-b3c7-1444-26e13434cb2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rate_one_integrable_of_eventual_majorant (g : ℝ → ℝ)
    (hg : IntegrableOn g (Ioi 1))
    (hbound : ∀ᶠ A : ℝ in atTop, Real.exp (-A) * negativeSource A ≤ g A) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1) := by
  obtain ⟨R, hR⟩ := eventually_atTop.1 hbound
  let T := max 1 R
  have hT : 1 ≤ T := le_max_left _ _
  have ht : Ioi T ⊆ Ioi (1 : ℝ) := fun _ h ↦ lt_of_le_of_lt hT h
  have hm : AEStronglyMeasurable (fun A : ℝ ↦ Real.exp (-A) * negativeSource A)
      (volume.restrict (Ioi T)) := by
    simpa only [neg_mul, one_mul] using
      (weighted_negativeSource_aestronglyMeasurable 1).mono_measure
        (Measure.restrict_mono ht le_rfl)
  have htail : IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi T) := by
    apply (hg.mono_set ht).mono' hm
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
    rw [Real.norm_eq_abs, abs_of_nonneg
      (mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A (ht hA).le))]
    exact hR A ((le_max_right 1 R).trans hA.le)
  have hu : Ioc (1 : ℝ) T ∪ Ioi T = Ioi 1 := by
    ext A
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (⟨ha, _⟩ | ha)
      · exact ha
      · exact lt_of_le_of_lt hT ha
    · intro ha
      by_cases hAT : A ≤ T
      · exact Or.inl ⟨ha, hAT⟩
      · exact Or.inr (lt_of_not_ge hAT)
  rw [← hu]
  exact (rate_one_integrableOn_Ioc T).union htail

/-- Positive stretched exponential damping integrates the natural seventeenth power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37afe64e1e64ab71ae2534f87f79d38d0444ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
