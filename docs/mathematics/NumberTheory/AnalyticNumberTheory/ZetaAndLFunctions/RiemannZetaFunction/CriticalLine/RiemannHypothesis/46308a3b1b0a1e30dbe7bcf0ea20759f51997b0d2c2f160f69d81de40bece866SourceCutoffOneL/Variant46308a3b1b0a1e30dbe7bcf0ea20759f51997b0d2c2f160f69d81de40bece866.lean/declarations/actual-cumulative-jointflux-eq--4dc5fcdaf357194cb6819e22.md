# actual_cumulative_jointFlux_eq

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
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c164d81b-1b23-2482-e7ca-746154489eda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49bc099e-ca8d-aa9e-30d7-8ece074666f2",
  "kind": "theorem",
  "lexical_name": "actual_cumulative_jointFlux_eq",
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
  "slug": "actual-cumulative-jointflux-eq--4dc5fcdaf357194cb6819e22",
  "source": {
    "blob": "366a1990c913d2347aa539aeeafa04115a997f12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 266,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dc5fcdaf357194cb6819e22e3f895910862625b2d4397858da56b9b284cff4f",
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

Occurrence: `result:49bc099e-ca8d-aa9e-30d7-8ece074666f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cumulative_jointFlux_eq (A : ℝ) (hA : 1 ≤ A) :
    (∑ j ∈ Finset.Ico 1 (vaughanCutoff A), jointFlux A j (sourceKernelCutoff A)) =
      cutoffOneLedgerError A - (betaMainLedger A + independentMainTerm A) := by
  have h1 := residual_eq_cutoffOne_joint_add_error A hA
  rw [jointAt_one] at h1
  have ha := actual_residual_decomposition A hA
  rw [actual_joint_eq_baseline_add_flux A hA] at ha
  linarith

/-- The whole signed cumulative flux is bounded; individual absolute event costs are absent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `366a1990c913d2347aa539aeeafa04115a997f12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
