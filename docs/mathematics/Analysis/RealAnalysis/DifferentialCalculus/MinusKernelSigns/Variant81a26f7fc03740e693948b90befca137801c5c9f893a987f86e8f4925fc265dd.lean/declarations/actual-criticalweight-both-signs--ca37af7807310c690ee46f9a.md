# actual_criticalWeight_both_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c90c79c0-9289-a11e-24ea-34808631cac7",
  "kind": "theorem",
  "lexical_name": "actual_criticalWeight_both_signs",
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
  "slug": "actual-criticalweight-both-signs--ca37af7807310c690ee46f9a",
  "source": {
    "blob": "f2c9b8a1e1d5ad9a2e7d14dfc9a553853f924e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MinusKernelSigns/Variant81a26f7fc03740e693948b90befca137801c5c9f893a987f86e8f4925fc265dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca37af7807310c690ee46f9a6a61239d2e33b2143388f06217347035989ff47c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MinusKernelSigns/Variant81a26f7fc03740e693948b90befca137801c5c9f893a987f86e8f4925fc265dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c90c79c0-9289-a11e-24ea-34808631cac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_criticalWeight_both_signs (A : ℝ) (hA : 1 ≤ A) :
    (∃ t ∈ Ioo (0 : ℝ) (2 * A), 0 < criticalWeight A t) ∧
      (∃ t ∈ Ioo (0 : ℝ) (2 * A), criticalWeight A t < 0) := by
  have hp : 0 < A := by linarith
  obtain ⟨s, hs0, hsA, hcs⟩ := sourceCorrelation_exists_neg_in_half_support hp
  have hfs : dampedCorrelation A s < 0 :=
    mul_neg_of_pos_of_neg (Real.exp_pos _) hcs
  have hf0 : dampedCorrelation A 0 = 1 := by
    simp [dampedCorrelation, sourceCorrelation_zero hp]
  have hfA : dampedCorrelation A (2 * A) = 0 := by
    unfold dampedCorrelation
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A) hp
      (by rw [abs_of_nonneg (by linarith : 0 ≤ 2 * A)])]
    ring
  have hf := dampedCorrelation_contDiff hp
  obtain ⟨t, ht, hd⟩ := exists_deriv_eq_slope (dampedCorrelation A) hs0
    hf.continuous.continuousOn (hf.differentiable (by norm_num)).differentiableOn
  obtain ⟨u, hu, he⟩ := exists_deriv_eq_slope (dampedCorrelation A) hsA
    hf.continuous.continuousOn (hf.differentiable (by norm_num)).differentiableOn
  have hdt : deriv (dampedCorrelation A) t < 0 := by
    rw [hd, hf0]
    exact div_neg_of_neg_of_pos (by linarith) (by linarith)
  have hdu : 0 < deriv (dampedCorrelation A) u := by
    rw [he, hfA]
    exact div_pos (by linarith) (sub_pos.mpr hsA)
  rw [dampedCorrelation_deriv hp] at hdt hdu
  constructor
  · refine ⟨t, ⟨ht.1, ht.2.trans hsA⟩, ?_⟩
    nlinarith [Real.exp_pos (-t / 2)]
  · refine ⟨u, ⟨hs0.trans hu.1, hu.2⟩, ?_⟩
    nlinarith [Real.exp_pos (-u / 2)]

end FormalResearch.RiemannHypothesis.SourceCriticalRelativeKernelSign
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MinusKernelSigns/Variant81a26f7fc03740e693948b90befca137801c5c9f893a987f86e8f4925fc265dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MinusKernelSigns/Variant81a26f7fc03740e693948b90befca137801c5c9f893a987f86e8f4925fc265dd.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c9b8a1e1d5ad9a2e7d14dfc9a553853f924e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
