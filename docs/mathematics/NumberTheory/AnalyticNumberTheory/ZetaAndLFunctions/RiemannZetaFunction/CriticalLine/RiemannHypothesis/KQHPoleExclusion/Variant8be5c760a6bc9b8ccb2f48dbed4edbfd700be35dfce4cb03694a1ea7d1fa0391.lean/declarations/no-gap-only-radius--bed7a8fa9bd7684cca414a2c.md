# no_gap_only_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de0b3cbf-d395-3c6f-60bd-148a336b2675",
  "kind": "theorem",
  "lexical_name": "no_gap_only_radius",
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
  "slug": "no-gap-only-radius--bed7a8fa9bd7684cca414a2c",
  "source": {
    "blob": "bd10ac13e6e788c512782ab06d530a452b265848",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bed7a8fa9bd7684cca414a2c81fcc8d2494b6c2c4fad668c7645d7d3a9cfd9ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de0b3cbf-d395-3c6f-60bd-148a336b2675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_gap_only_radius {r : ℝ} (hr : 0 < r) :
    ∃ w : ℝ, 0 < w ∧ w < 1 ∧ w < r ∧ twoAtomTransform w (w : ℂ) = 0 := by
  refine ⟨min r 1 / 2, ?_, ?_, ?_, ?_⟩
  · exact div_pos (lt_min hr (by norm_num)) (by norm_num)
  · have hm := min_le_right r 1
    linarith
  · have hm := min_le_left r 1
    linarith
  · apply twoAtomTransform_zero
    · exact div_pos (lt_min hr (by norm_num)) (by norm_num)
    · have hm := min_le_right r 1
      linarith

end FormalResearch.RiemannHypothesis.KQHPoleExclusion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd10ac13e6e788c512782ab06d530a452b265848` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
