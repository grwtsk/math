# candidate_frequency_admission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "360f23a527746120386c13e17cdbea1d96723abf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:698106a6-87d9-9ee9-dc93-b11b4247a88d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c46e2ccb-4463-3aca-5661-b087e7dab2a2",
  "kind": "theorem",
  "lexical_name": "candidate_frequency_admission",
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
  "slug": "candidate-frequency-admission--baf06aea7e89b7bec3742f96",
  "source": {
    "blob": "360f23a527746120386c13e17cdbea1d96723abf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/CandidateRealizationFullAudit/Variant41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf06aea7e89b7bec3742f96989af1e07c9bcfdd72df2e692e2ccf7477bd8759",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CandidateRealizationFullAudit/Variant41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c46e2ccb-4463-3aca-5661-b087e7dab2a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_frequency_admission (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (angularFrequency (candidate X ε h)) ∧
      MemLp (angularFrequency (candidate X ε h)) 2 := by
  have hc : Continuous (fun t : ℝ => candidate X ε h ((t : ℂ) * I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simp)).continuousAt.comp
      (by fun_prop)
  obtain ⟨φ, hφ, _, _, hb⟩ := candidate_boundary_majorant X hX ε h hε hh hh1
  have hi : Integrable (fun t : ℝ => candidate X ε h ((t : ℂ) * I)) := by
    apply hφ.mono' hc.aestronglyMeasurable
    filter_upwards [] with t
    simpa only [Complex.ofReal_zero, zero_add] using hb 0 t le_rfl
  obtain ⟨_, _, hs⟩ := candidate_line_square_integrable_bound ε hε
  have hs0 : Integrable (fun t : ℝ => ‖candidate X ε h ((t : ℂ) * I)‖ ^ 2) := by
    simpa only [Complex.ofReal_zero, zero_add] using (hs X hX h hh hh1 0 le_rfl).1
  have hπ : 2 * Real.pi ≠ 0 := ne_of_gt (by positivity)
  refine ⟨hi.comp_mul_left' hπ, ?_⟩
  apply (memLp_two_iff_integrable_sq_norm ?_).mpr (hs0.comp_mul_left' hπ)
  exact (hc.comp (by fun_prop : Continuous (fun ξ : ℝ => 2 * Real.pi * ξ))).aestronglyMeasurable

/-- The admitted full-line inverse Fourier vector of the actual candidate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CandidateRealizationFullAudit/Variant41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CandidateRealizationFullAudit/Variant41856ea913a1a722678af7c8affdf4528374c5363fec01bc94ed84223fc826b1.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360f23a527746120386c13e17cdbea1d96723abf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
