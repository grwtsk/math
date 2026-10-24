# actualSecondProfile_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b5a1b2e-7807-d992-9bbf-0a65e9730d63",
  "kind": "theorem",
  "lexical_name": "actualSecondProfile_bounded",
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
  "slug": "actualsecondprofile-bounded--7de01b5c87c7730835caad96",
  "source": {
    "blob": "1bd7f7f9527150b414ad48e8ae66161d47b8fdb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7de01b5c87c7730835caad9699b76f3c04ac221e795d577d89ae7f7926549dfa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b5a1b2e-7807-d992-9bbf-0a65e9730d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondProfile_bounded (A : ℝ) (hA : 0 < A) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ x : ℝ, |actualSecondProfile A x| ≤ M := by
  obtain ⟨M, hM⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (normalizedInteriorSecond_continuous A).continuousOn
  refine ⟨max 0 M, le_max_left _ _, ?_⟩
  intro x
  rw [actualSecondProfile_eq_indicator A hA]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx]
    exact (by simpa only [Real.norm_eq_abs] using hM x hx).trans (le_max_right _ _)
  · rw [indicator_of_notMem hx, abs_zero]
    exact le_max_left _ _

/-- Product integrability and a fixed L1 dominator justify continuity at every real shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSecondProfileContinuity/Variant4af81c0c3ff7f32d00be1f28338fb6861dcbaa2a61a78959defa242da634e193.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd7f7f9527150b414ad48e8ae66161d47b8fdb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
