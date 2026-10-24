# candidate_boundaryInverse_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec29bc4a93070e50881443803a006d0b19919880",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c77e7e3-800f-c02c-97a9-58fdb6af6f3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:897a71cd-f2a4-ca24-9e32-2eaa28ab9386",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_bounded",
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
  "slug": "candidate-boundaryinverse-bounded--1eaa9c880024a8a4760aa912",
  "source": {
    "blob": "ec29bc4a93070e50881443803a006d0b19919880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 16,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eaa9c880024a8a4760aa912c8dd2695b63be2320bd41d6a2075b8e0f76a7a8c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:897a71cd-f2a4-ca24-9e32-2eaa28ab9386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_bounded (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ x : ℝ, ‖boundaryInverse (candidate X ε h) x‖ ≤ C := by
  obtain ⟨φ, hφ, _, _, hb⟩ := candidate_boundary_majorant X hX ε h hε hh hh1
  refine ⟨‖(1 / (2 * Real.pi) : ℂ)‖ * ∫ t : ℝ, φ t, ?_, ?_⟩
  · exact mul_nonneg (norm_nonneg _) (integral_nonneg (fun t =>
      (norm_nonneg _).trans (hb 0 t le_rfl)))
  · intro x
    unfold boundaryInverse
    rw [norm_mul]
    apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
    apply norm_integral_le_of_norm_le hφ
    filter_upwards [] with t
    rw [norm_mul]
    have hn : ‖Complex.exp ((x : ℂ) * ((t : ℂ) * I))‖ = 1 := by
      simp [Complex.norm_exp]
    rw [hn, one_mul]
    simpa only [Complex.ofReal_zero, zero_add] using hb 0 t le_rfl

/-- Removing half the real offset yields an exact exponentially decaying time factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec29bc4a93070e50881443803a006d0b19919880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
