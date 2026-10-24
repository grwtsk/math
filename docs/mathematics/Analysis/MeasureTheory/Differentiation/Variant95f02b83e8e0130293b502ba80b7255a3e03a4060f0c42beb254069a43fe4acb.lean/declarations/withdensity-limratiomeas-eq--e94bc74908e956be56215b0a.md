# withDensity_limRatioMeas_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd365ddd-8e4c-610e-9ce7-9aec0d897137",
  "kind": "theorem",
  "lexical_name": "withDensity_limRatioMeas_eq",
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
  "slug": "withdensity-limratiomeas-eq--e94bc74908e956be56215b0a",
  "source": {
    "blob": "cc26e1e64d5bf06020ca5e385d7ee270325dc58b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 673,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e94bc74908e956be56215b0a1e48d71251a576b71bd6bff1565e2b920fdb75c5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd365ddd-8e4c-610e-9ce7-9aec0d897137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensity_limRatioMeas_eq : μ.withDensity (v.limRatioMeas hρ) = ρ := by
  ext1 s hs
  refine' le_antisymm _ _
  · have : Tendsto (fun t : ℝ≥0 =>
        ((t : ℝ≥0∞) ^ 2 * ρ s : ℝ≥0∞)) (𝓝[>] 1) (𝓝 ((1 : ℝ≥0∞) ^ 2 * ρ s)) := by
      refine' ENNReal.Tendsto.mul _ _ tendsto_const_nhds _
      · exact ENNReal.Tendsto.pow (ENNReal.tendsto_coe.2 nhdsWithin_le_nhds)
      · simp only [one_pow, ENNReal.coe_one, true_or_iff, Ne.def, not_false_iff, one_ne_zero]
      · simp only [one_pow, ENNReal.coe_one, Ne.def, or_true_iff, ENNReal.one_ne_top, not_false_iff]
    simp only [one_pow, one_mul, ENNReal.coe_one] at this
    refine' ge_of_tendsto this _
    filter_upwards [self_mem_nhdsWithin] with _ ht
    exact v.withDensity_le_mul hρ hs ht
  · have :
      Tendsto (fun t : ℝ≥0 => (t : ℝ≥0∞) * μ.withDensity (v.limRatioMeas hρ) s) (𝓝[>] 1)
        (𝓝 ((1 : ℝ≥0∞) * μ.withDensity (v.limRatioMeas hρ) s)) := by
      refine' ENNReal.Tendsto.mul_const (ENNReal.tendsto_coe.2 nhdsWithin_le_nhds) _
      simp only [ENNReal.coe_one, true_or_iff, Ne.def, not_false_iff, one_ne_zero]
    simp only [one_mul, ENNReal.coe_one] at this
    refine' ge_of_tendsto this _
    filter_upwards [self_mem_nhdsWithin] with _ ht
    exact v.le_mul_withDensity hρ hs ht
#align vitali_family.with_density_lim_ratio_meas_eq VitaliFamily.withDensity_limRatioMeas_eq

/-- Weak version of the main theorem on differentiation of measures: given a Vitali family `v`
for a locally finite measure `μ`, and another locally finite measure `ρ`, then for `μ`-almost
every `x` the ratio `ρ a / μ a` converges, when `a` shrinks to `x` along the Vitali family,
towards the Radon-Nikodym derivative of `ρ` with respect to `μ`.

This version assumes that `ρ` is absolutely continuous with respect to `μ`. The general version
without this superfluous assumption is `VitaliFamily.ae_tendsto_rnDeriv`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc26e1e64d5bf06020ca5e385d7ee270325dc58b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
