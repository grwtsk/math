# local_scaleDerivative_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c773ecc8-00de-a7ba-6e7a-63480144b279",
  "kind": "theorem",
  "lexical_name": "local_scaleDerivative_bound",
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
  "slug": "local-scalederivative-bound--c80f0fdbe590fcbd30ae026b",
  "source": {
    "blob": "b769ab090e68d8565a8b21f0003d2a076a52f5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 244,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c80f0fdbe590fcbd30ae026b2c8d23ab3dfaaa53b08b933332878c964951138b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c773ecc8-00de-a7ba-6e7a-63480144b279`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_scaleDerivative_bound {A : ℝ} (hA : 0 < A) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ B ∈ Icc (A / 2) (3 * A / 2), ∀ x : ℝ,
      |scaleDerivative B x| ≤ K := by
  have hc : ContinuousOn (fun z : ℝ × ℝ => |scaleDerivative z.1 z.2|)
      (Icc (A / 2) (3 * A / 2) ×ˢ Icc (-2 * A) (2 * A)) := by
    apply scaleDerivative_continuousOn_joint.abs.mono
    intro z hz
    exact ⟨by have := hz.1.1; change 0 < z.1; linarith, mem_univ _⟩
  obtain ⟨K, hK⟩ := (isCompact_Icc.prod isCompact_Icc).bddAbove_image hc
  refine ⟨max K 0, le_max_right _ _, ?_⟩
  intro B hB x
  by_cases hx : x ∈ Icc (-2 * A) (2 * A)
  · exact (hK ⟨(B, x), ⟨hB, hx⟩, rfl⟩).trans (le_max_left _ _)
  · have habs : 2 * A ≤ |x| := by
      simp only [mem_Icc, not_and_or, not_le] at hx
      rcases hx with hx | hx
      · have hn : x < 0 := by linarith
        rw [abs_of_neg hn]
        linarith
      · exact hx.le.trans (le_abs_self _)
    rw [(local_source_derivative_zero hA hB habs).2, abs_zero]
    exact le_max_right _ _

/-- Total derivative class, explicitly zero outside positive scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant4bc3bcbb71ee34b29a080897173416913cb53726bb84845fb469de286a6f29a7.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b769ab090e68d8565a8b21f0003d2a076a52f5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
