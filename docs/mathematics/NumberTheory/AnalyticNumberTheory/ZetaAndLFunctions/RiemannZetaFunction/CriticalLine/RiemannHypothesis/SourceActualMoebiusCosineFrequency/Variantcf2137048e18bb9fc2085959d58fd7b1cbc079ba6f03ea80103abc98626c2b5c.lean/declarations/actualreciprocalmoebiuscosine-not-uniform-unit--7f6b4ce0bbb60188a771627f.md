# actualReciprocalMoebiusCosine_not_uniform_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2959824f-29bb-3f43-2fd1-c5f9d9df4367",
  "kind": "theorem",
  "lexical_name": "actualReciprocalMoebiusCosine_not_uniform_unit",
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
  "slug": "actualreciprocalmoebiuscosine-not-uniform-unit--7f6b4ce0bbb60188a771627f",
  "source": {
    "blob": "2631bea24f1e413820796dbb83313c1c095be044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMoebiusCosineFrequency/Variantcf2137048e18bb9fc2085959d58fd7b1cbc079ba6f03ea80103abc98626c2b5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f6b4ce0bbb60188a771627fb5074c87369020dc77e697faceebb008a94e7bd9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMoebiusCosineFrequency/Variantcf2137048e18bb9fc2085959d58fd7b1cbc079ba6f03ea80103abc98626c2b5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2959824f-29bb-3f43-2fd1-c5f9d9df4367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReciprocalMoebiusCosine_not_uniform_unit :
    ¬ ∀ (N : ℕ) (tau : ℝ), |actualReciprocalMoebiusCosine N tau| ≤ 1 := by
  intro h
  have hh := h 2 (Real.pi / Real.log 2)
  rw [actualReciprocalMoebiusCosine_two_pi] at hh
  norm_num at hh

end
end FormalResearch.RiemannHypothesis.SourceActualMoebiusCosineFrequency
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMoebiusCosineFrequency/Variantcf2137048e18bb9fc2085959d58fd7b1cbc079ba6f03ea80103abc98626c2b5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMoebiusCosineFrequency/Variantcf2137048e18bb9fc2085959d58fd7b1cbc079ba6f03ea80103abc98626c2b5c.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2631bea24f1e413820796dbb83313c1c095be044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
