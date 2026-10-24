# actual_criticalWeight_both_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f62850a2-f448-de7f-8eb3-24c6b1aa955a",
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
  "slug": "actual-criticalweight-both-signs--6794d6e8f3bf61fb6035dbd8",
  "source": {
    "blob": "23e6b0e312431adadfb943ac21074f2f1f6fe133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalRelativeKernelSignAttempt03/Variantdd04b21c05e46826c064706429064717f5a0a2e9740c2e30b1754f562c281b1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6794d6e8f3bf61fb6035dbd82daaa17db6f5e7736ae17cd2e12c491f976cd06a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalRelativeKernelSignAttempt03/Variantdd04b21c05e46826c064706429064717f5a0a2e9740c2e30b1754f562c281b1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f62850a2-f448-de7f-8eb3-24c6b1aa955a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–79.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalRelativeKernelSignAttempt03/Variantdd04b21c05e46826c064706429064717f5a0a2e9740c2e30b1754f562c281b1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalRelativeKernelSignAttempt03/Variantdd04b21c05e46826c064706429064717f5a0a2e9740c2e30b1754f562c281b1f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23e6b0e312431adadfb943ac21074f2f1f6fe133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
