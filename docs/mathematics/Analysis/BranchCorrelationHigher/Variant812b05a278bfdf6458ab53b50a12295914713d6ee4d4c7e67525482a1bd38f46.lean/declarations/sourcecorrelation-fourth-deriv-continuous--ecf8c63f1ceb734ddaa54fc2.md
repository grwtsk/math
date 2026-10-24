# sourceCorrelation_fourth_deriv_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab425ea1-6c77-c0a7-29d6-37f177b975e8",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_fourth_deriv_continuous",
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
  "slug": "sourcecorrelation-fourth-deriv-continuous--ecf8c63f1ceb734ddaa54fc2",
  "source": {
    "blob": "522b2da6562fc2afa49f5518ddddb0d62e52012c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 362,
    "path": "GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecf8c63f1ceb734ddaa54fc227a556fa3997927838c94672248df5af041da0f8",
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

Occurrence: `result:ab425ea1-6c77-c0a7-29d6-37f177b975e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_fourth_deriv_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))))) := by
  have he : deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) =
      fun t ↦ ∫ x : ℝ, secondRepresentative A x * secondRepresentative A (x - t) :=
    funext (sourceCorrelation_fourth_deriv_eq_integral hA)
  rw [he, continuous_iff_continuousAt]
  intro t
  obtain ⟨B, _, hB⟩ := secondRepresentative_bounded A
  have hc : Continuous (normalizedSecondInterior A) := by
    change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
    dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
    fun_prop
  have hm : StronglyMeasurable (secondRepresentative A) :=
    hc.stronglyMeasurable.indicator measurableSet_Icc
  apply continuousAt_of_dominated (bound := fun x ↦ |secondRepresentative A x| * B)
  · exact Eventually.of_forall fun s ↦ hm.aestronglyMeasurable.mul
      ((hm.comp_measurable (measurable_id.sub_const s)).aestronglyMeasurable)
  · filter_upwards [] with s
    filter_upwards [] with x
    rw [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul_of_nonneg_left (hB (x - s)) (abs_nonneg _)
  · exact (secondRepresentative_integrable A).abs.mul_const B
  · filter_upwards [volume.ae_ne (-A + t), volume.ae_ne (A + t)] with x hl hr
    have hp := secondRepresentative_continuousAt_off_endpoints hA (x := x - t)
      (by intro h; apply hl; linarith) (by intro h; apply hr; linarith)
    exact continuousAt_const.mul (hp.comp (by fun_prop))

/-- The unchanged source correlation is globally C⁴; no global C² source premise is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCorrelationHigher/Variant812b05a278bfdf6458ab53b50a12295914713d6ee4d4c7e67525482a1bd38f46.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522b2da6562fc2afa49f5518ddddb0d62e52012c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
