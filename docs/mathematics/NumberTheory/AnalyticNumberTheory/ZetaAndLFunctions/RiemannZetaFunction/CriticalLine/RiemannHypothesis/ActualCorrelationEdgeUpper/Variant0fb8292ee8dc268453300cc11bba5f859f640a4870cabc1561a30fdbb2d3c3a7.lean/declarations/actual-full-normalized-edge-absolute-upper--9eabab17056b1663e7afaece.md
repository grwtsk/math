# actual_full_normalized_edge_absolute_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:348ccb50-971f-d55c-9311-b70c74355081",
  "kind": "theorem",
  "lexical_name": "actual_full_normalized_edge_absolute_upper",
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
  "slug": "actual-full-normalized-edge-absolute-upper--9eabab17056b1663e7afaece",
  "source": {
    "blob": "fef0a00c412ab3250024b93bfab80e8dc959c30c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeUpper/Variant0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eabab17056b1663e7afaece722f3413994297bfefad16baa511c6304a8911a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeUpper/Variant0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:348ccb50-971f-d55c-9311-b70c74355081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_full_normalized_edge_absolute_upper {A s : ℝ} (hA : 1 ≤ A)
    (hs0 : 0 ≤ s) (hsA : s ≤ 2 * A) :
    |v A (A - s)| ≤ 24 * s ^ 2 * (64 + s ^ 2) / (A ^ 4 * Real.sqrt A) := by
  have hpos : 0 < A := by linarith
  have hmem : A - s ∈ Icc (-A) A := by constructor <;> linarith
  have hroot := Real.sqrt_pos.mpr (source_normalization_pos A hA)
  have hb := full_edge_factor_absolute_upper hpos hs0 hsA
  have hD : |dilationTest explicitSecondDerivative A (A - s)| ≤
      (s ^ 2 / (A ^ 4 * Real.sqrt A)) * (4 * (64 + s ^ 2)) := by
    rw [explicit_dilationTest_eq_indicator A hpos, indicator_of_mem hmem,
      exact_source_edge_factorization hpos, abs_mul,
      abs_of_nonneg (by positivity : 0 ≤ s ^ 2 / (A ^ 4 * Real.sqrt A))]
    exact mul_le_mul_of_nonneg_left hb (by positivity)
  have hinv : 1 / Real.sqrt (sourceNormalization A) ≤ 6 :=
    (div_le_iff₀ hroot).mpr (by linarith [fixed_source_normalization_root_lower hA])
  unfold normalizedTest
  rw [abs_div, abs_of_pos hroot, div_eq_mul_inv]
  have hmul := mul_le_mul hD hinv (by positivity) (by positivity)
  calc
    _ ≤ ((s ^ 2 / (A ^ 4 * Real.sqrt A)) * (4 * (64 + s ^ 2))) * 6 := by
      simpa only [one_div] using hmul
    _ = _ := by ring

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationEdgeUpper
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeUpper/Variant0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeUpper/Variant0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fef0a00c412ab3250024b93bfab80e8dc959c30c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
