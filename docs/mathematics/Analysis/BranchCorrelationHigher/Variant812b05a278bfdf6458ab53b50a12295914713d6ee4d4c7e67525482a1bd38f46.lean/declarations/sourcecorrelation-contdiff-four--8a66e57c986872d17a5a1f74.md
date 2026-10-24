# sourceCorrelation_contDiff_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cebd0f7c-ccaf-72d2-8078-dd50d8a3c08a",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_contDiff_four",
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
  "slug": "sourcecorrelation-contdiff-four--8a66e57c986872d17a5a1f74",
  "source": {
    "blob": "522b2da6562fc2afa49f5518ddddb0d62e52012c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 390,
    "path": "GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a66e57c986872d17a5a1f74471385c597a0d875f9b99c334df912b9178df169",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cebd0f7c-ccaf-72d2-8078-dd50d8a3c08a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_contDiff_four {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 4 (sourceCorrelation explicitSecondDerivative A) := by
  have hc3 := sourceCorrelation_contDiff_three hA
  have hcd2 : ContDiff ℝ 2 (deriv (sourceCorrelation explicitSecondDerivative A)) := hc3.deriv'
  have hc1 : ContDiff ℝ 1
      (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) := by
    rw [contDiff_one_iff_deriv]
    exact ⟨fun t ↦ (sourceCorrelation_third_deriv_hasDerivAt_integral hA t).2.differentiableAt,
      sourceCorrelation_fourth_deriv_continuous hA⟩
  have hc2 : ContDiff ℝ 2 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
    rw [show (2 : WithTop ℕ∞) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
    exact ⟨hcd2.deriv'.differentiable_one, by norm_num, hc1⟩
  have hc3d : ContDiff ℝ 3 (deriv (sourceCorrelation explicitSecondDerivative A)) := by
    rw [show (3 : WithTop ℕ∞) = 2 + 1 from rfl, contDiff_succ_iff_deriv]
    exact ⟨hcd2.differentiable (by norm_num), by norm_num, hc2⟩
  rw [show (4 : WithTop ℕ∞) = 3 + 1 from rfl, contDiff_succ_iff_deriv]
  exact ⟨hc3.differentiable (by norm_num), by norm_num, hc3d⟩

/-- The fourth derivative is bounded by the actual second spatial derivative energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522b2da6562fc2afa49f5518ddddb0d62e52012c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
