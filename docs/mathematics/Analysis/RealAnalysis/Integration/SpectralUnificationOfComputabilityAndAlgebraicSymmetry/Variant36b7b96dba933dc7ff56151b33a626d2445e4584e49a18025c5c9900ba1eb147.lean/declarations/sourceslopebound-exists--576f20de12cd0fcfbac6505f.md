# sourceSlopeBound_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c945207b3057821a4c54fd95f31eef05b1d1d3bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82a51321-10a0-fa59-20a4-53450065ad62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18bd1977-de22-a89c-fdf2-acf086513c55",
  "kind": "theorem",
  "lexical_name": "sourceSlopeBound_exists",
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
  "slug": "sourceslopebound-exists--576f20de12cd0fcfbac6505f",
  "source": {
    "blob": "c945207b3057821a4c54fd95f31eef05b1d1d3bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:576f20de12cd0fcfbac6505f2b602db07f479019715283ceaf46c1bda47e671c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18bd1977-de22-a89c-fdf2-acf086513c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSlopeBound_exists (A : ℝ) (hA : 1 ≤ A) :
    ∃ K : ℝ, 1 ≤ K ∧ ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K := by
  have hA0 : 0 < A := by linarith
  have hC := sourceCorrelation_contDiff A hA0
  have hc : Continuous (fun t ↦ |correlationSlope A t|) :=
    ((hC.continuous_deriv (by norm_num)).sub (hC.continuous.div_const 2)).abs
  obtain ⟨B,hB⟩ := ((isCompact_Icc : IsCompact (Icc (0 : ℝ) (2*A))).image hc).bddAbove
  refine ⟨max 1 B, le_max_left _ _, ?_⟩
  intro t ht
  by_cases hu : t ≤ 2*A
  · exact (hB ⟨t, ⟨ht,hu⟩, rfl⟩).trans (le_max_right _ _)
  · have he := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA0
      (by rw [abs_of_nonneg ht]; linarith)
    have hd := sourceCorrelation_deriv_zero_of_two_mul_le A t hA0 (by linarith)
    simp only [correlationSlope, hd, he, zero_div, sub_self, abs_zero]
    exact zero_le_one.trans (le_max_left _ _)

/-- Elementary primitive of the exact reciprocal square-root derivative weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c945207b3057821a4c54fd95f31eef05b1d1d3bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
