# diagonal_mass_sub_abs_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:587db1a3-c566-ca4b-7b26-26783a31c5b2",
  "kind": "theorem",
  "lexical_name": "diagonal_mass_sub_abs_tendsto_zero",
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
  "slug": "diagonal-mass-sub-abs-tendsto-zero--c307853365176d3ee48f9b68",
  "source": {
    "blob": "f618687c6299fd59b222b94050d514ad1c0d373a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 175,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantb2882e4a01f10c86e28a5da64f93648f8f7dea223304a51c9ffe982bcedab473.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c307853365176d3ee48f9b68f97508d8c6301837fdb95b3f531e6fb7945ad16f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantb2882e4a01f10c86e28a5da64f93648f8f7dea223304a51c9ffe982bcedab473.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:587db1a3-c566-ca4b-7b26-26783a31c5b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_mass_sub_abs_tendsto_zero :
    Tendsto (fun α : ℝ => |sourceMass α - truncatedMass (diagonalCutoff α) α|)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := by
  apply squeeze_zero' (Filter.Eventually.of_forall (fun _ => abs_nonneg _))
  · filter_upwards [self_mem_nhdsWithin] with α hα
    exact diagonal_mass_sub_abs_le α hα
  · have h : Tendsto (fun α : ℝ => 2 * kernelMass * derivativeBudget * α)
        (𝓝[>] (0 : ℝ)) (𝓝 (2 * kernelMass * derivativeBudget * 0)) :=
      tendsto_const_nhds.mul (tendsto_id.mono_left nhdsWithin_le_nhds)
    simpa only [mul_zero] using h

/-- The signed approximation error also vanishes along the same prescribed joint cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantb2882e4a01f10c86e28a5da64f93648f8f7dea223304a51c9ffe982bcedab473.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantb2882e4a01f10c86e28a5da64f93648f8f7dea223304a51c9ffe982bcedab473.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f618687c6299fd59b222b94050d514ad1c0d373a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
