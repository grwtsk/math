# cutoffOne_baseline_tail_iff_residualTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "366a1990c913d2347aa539aeeafa04115a997f12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a9dc332-a2bc-853b-ad97-e371dec361d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cce5aa3-bc84-333b-c5bd-369c5f5a96d0",
  "kind": "theorem",
  "lexical_name": "cutoffOne_baseline_tail_iff_residualTail",
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
  "slug": "cutoffone-baseline-tail-iff-residualtail--462707503e5e998a5eaa9aa3",
  "source": {
    "blob": "366a1990c913d2347aa539aeeafa04115a997f12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 289,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:462707503e5e998a5eaa9aa39cf1016982eccb6eb6348d5b9248e4f24406de83",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cce5aa3-bc84-333b-c5bd-369c5f5a96d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffOne_baseline_tail_iff_residualTail :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) ↔ MertensResidualTailUpperBound := by
  obtain ⟨Cpp, CM, hCpp0, hCM0, hF⟩ := cutoffOneLedgerError_uniform_bound
  let C := Cpp + 11 * CM + samplingInventoryError
  have hC0 : 0 ≤ C := by dsimp [C]; have := samplingInventoryError_nonneg; positivity
  constructor
  · rintro ⟨D, hD0, R, hR1, hD⟩
    refine ⟨D + C, add_nonneg hD0 hC0, R, hR1, ?_⟩
    intro A hA
    have hA1 := hR1.trans hA
    have he := residual_eq_cutoffOne_joint_add_error A hA1
    rw [jointAt_one] at he
    have hb := (abs_le.mp (hF A hA1)).2
    have := hD A hA
    dsimp [C]
    linarith
  · rintro ⟨D, hD0, R, hR1, hD⟩
    refine ⟨D + C, add_nonneg hD0 hC0, R, hR1, ?_⟩
    intro A hA
    have hA1 := hR1.trans hA
    have he := residual_eq_cutoffOne_joint_add_error A hA1
    rw [jointAt_one] at he
    have hb := (abs_le.mp (hF A hA1)).1
    have := hD A hA
    dsimp [C]
    linarith

end
end FormalResearch.RiemannHypothesis.SourceCutoffOneLedger
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `366a1990c913d2347aa539aeeafa04115a997f12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
