# actual_sourceCorrelation_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b2074f85a703b5b34b5cdc0f90767aad32e9fea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 637,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e91cf817-67e9-8e7f-6a13-dcd4e5344bef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbb0f989-ae3e-92a3-b53e-cb52abfdcc07",
  "kind": "theorem",
  "lexical_name": "actual_sourceCorrelation_negative",
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
  "slug": "actual-sourcecorrelation-negative--f4d0eb850b01bd2bfc14f4f4",
  "source": {
    "blob": "6b2074f85a703b5b34b5cdc0f90767aad32e9fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 637,
    "path": "GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variantcb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d0eb850b01bd2bfc14f4f4d977326d503875585f598b1b32d8d642f202791b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/07SourceCutoffFlux/Variantcb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbb0f989-ae3e-92a3-b53e-cb52abfdcc07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sourceCorrelation_negative {A : ℝ} (hA : 1 ≤ A) :
    ∃ s : ℝ, sourceCorrelation Realization.explicitSecondDerivative A s < 0 := by
  by_contra h
  push Not at h
  have hp : 0 < A := by linarith
  let f : ℝ → ℝ := fun s ↦ Real.exp ((1 / 2 : ℝ) * s) *
    sourceCorrelation Realization.explicitSecondDerivative A s
  have hf : Continuous f := by
    exact (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (CorrelationRegularity.sourceCorrelation_contDiff A hp).continuous
  have hc : HasCompactSupport f :=
    (CorrelationRegularity.sourceCorrelation_hasCompactSupport A hp).mul_left
  have hf0 : f 0 ≠ 0 := by
    simp [f, EstimateCorrelation.actual_correlation_at_zero A hA]
  have hpos : 0 < ∫ s, f s := hf.integral_pos_of_hasCompactSupport_nonneg_nonzero hc
    (fun s ↦ mul_nonneg (Real.exp_pos _).le (h s)) hf0
  change 0 < ∫ s, Real.exp ((1 / 2 : ℝ) * s) *
    sourceCorrelation Realization.explicitSecondDerivative A s at hpos
  rw [CorrelationMoment.full_correlation_moment_zero A hA] at hpos
  exact (lt_irrefl (0 : ℝ)) hpos

/-- Evenness and support locate a genuine negative continuous-shift fixture inside (0,2A). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/07SourceCutoffFlux/Variantcb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/07SourceCutoffFlux/Variantcb9b6b36e244e259a625cd9ca972aa9d18769a2d93d57e5f86da572ea22419bd.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2074f85a703b5b34b5cdc0f90767aad32e9fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
