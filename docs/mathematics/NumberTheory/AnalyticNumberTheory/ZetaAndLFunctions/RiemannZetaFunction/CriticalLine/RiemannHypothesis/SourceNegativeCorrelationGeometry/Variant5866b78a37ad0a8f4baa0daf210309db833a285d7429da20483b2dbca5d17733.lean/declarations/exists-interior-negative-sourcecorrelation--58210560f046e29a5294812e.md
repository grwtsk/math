# exists_interior_negative_sourceCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb10619e4ea858acfd5d33be18bcb90a0ec0bc6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d16612a0-b60d-f22e-dbb4-2a65c590a729",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdc0a5c7-af17-e33f-df9b-42953025f37a",
  "kind": "theorem",
  "lexical_name": "exists_interior_negative_sourceCorrelation",
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
  "slug": "exists-interior-negative-sourcecorrelation--58210560f046e29a5294812e",
  "source": {
    "blob": "eb10619e4ea858acfd5d33be18bcb90a0ec0bc6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNegativeCorrelationGeometry/Variant5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58210560f046e29a5294812e26d38f4a7cd42496ab837fd40dda26b42e0a2443",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNegativeCorrelationGeometry/Variant5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdc0a5c7-af17-e33f-df9b-42953025f37a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_interior_negative_sourceCorrelation {A : ℝ} (hA : 1 ≤ A) :
    ∃ u : ℝ, 0 < u ∧ u < 2*A ∧
      sourceCorrelation explicitSecondDerivative A u < 0 := by
  by_contra! hn
  have hp : 0 < A := by linarith
  have hc : ∀ u ∈ Set.Icc 0 (2*A),
      0 ≤ sourceCorrelation explicitSecondDerivative A u := by
    intro u hu
    rcases eq_or_lt_of_le hu.1 with hz | hz
    · subst u
      rw [actual_correlation_at_zero A hA]
      norm_num
    · rcases eq_or_lt_of_le hu.2 with hl | hl
      · rw [hl, sourceCorrelation_upper_endpoint A hp]
      · exact hn u hz hl
  have hg : ∀ u ∈ Set.Icc 0 (2*A), 0 ≤ criticalPrimeTest A u := by
    intro u hu
    exact mul_nonneg (Real.exp_pos (u/2)).le (hc u hu)
  have hi : 0 ≤ criticalContinuousMoment A :=
    intervalIntegral.integral_nonneg (by linarith) hg
  exact (not_lt_of_ge hi) (criticalContinuousMoment_lt_zero hA)

end FormalResearch.RiemannHypothesis.SourceNegativeCorrelationGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNegativeCorrelationGeometry/Variant5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNegativeCorrelationGeometry/Variant5866b78a37ad0a8f4baa0daf210309db833a285d7429da20483b2dbca5d17733.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb10619e4ea858acfd5d33be18bcb90a0ec0bc6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
