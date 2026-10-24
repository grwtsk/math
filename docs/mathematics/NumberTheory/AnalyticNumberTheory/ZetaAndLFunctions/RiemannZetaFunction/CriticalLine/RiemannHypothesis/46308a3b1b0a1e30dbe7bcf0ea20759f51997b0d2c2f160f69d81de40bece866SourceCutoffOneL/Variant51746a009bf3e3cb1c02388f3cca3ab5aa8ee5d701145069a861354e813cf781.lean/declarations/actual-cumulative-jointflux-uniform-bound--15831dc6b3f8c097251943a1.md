# actual_cumulative_jointFlux_uniform_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38b786de-c88f-226c-d57c-a165f77095c7",
  "kind": "theorem",
  "lexical_name": "actual_cumulative_jointFlux_uniform_bound",
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
  "slug": "actual-cumulative-jointflux-uniform-bound--15831dc6b3f8c097251943a1",
  "source": {
    "blob": "d972258c3aaa17990f9a83b5855d7952550e7364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 284,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15831dc6b3f8c097251943a1ebef1c95a9c4df35869692a8a9f781d406fae24f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38b786de-c88f-226c-d57c-a165f77095c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cumulative_jointFlux_uniform_bound :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |∑ j ∈ Finset.Ico 1 (vaughanCutoff A), jointFlux A j (sourceKernelCutoff A)| ≤ C := by
  obtain ⟨Cpp, CM, hCpp0, hCM0, h1⟩ := cutoffOneLedgerError_uniform_bound
  obtain ⟨CF, hCF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨Cpp + 11 * CM + samplingInventoryError + CF, by
    have := samplingInventoryError_nonneg
    positivity, ?_⟩
  intro A hA
  rw [actual_cumulative_jointFlux_eq A hA]
  exact (abs_sub _ _).trans (add_le_add (h1 A hA) (hF A hA))

/-- The exact open baseline upper target is equivalent to the original residual-tail target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d972258c3aaa17990f9a83b5855d7952550e7364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
