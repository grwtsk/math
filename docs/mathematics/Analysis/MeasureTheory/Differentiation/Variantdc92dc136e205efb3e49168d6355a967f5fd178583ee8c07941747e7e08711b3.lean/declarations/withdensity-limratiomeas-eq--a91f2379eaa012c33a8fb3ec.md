# withDensity_limRatioMeas_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90591bce-522f-dc40-a241-9a31dbfa645c",
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
  "slug": "withdensity-limratiomeas-eq--a91f2379eaa012c33a8fb3ec",
  "source": {
    "blob": "08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 651,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a91f2379eaa012c33a8fb3ecc05d844c02aa5029f912273ef0b0140a4ffacbbb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90591bce-522f-dc40-a241-9a31dbfa645c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–681.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensity_limRatioMeas_eq : μ.withDensity (v.limRatioMeas hρ) = ρ := by
  ext1 s hs
  refine le_antisymm ?_ ?_
  · have : Tendsto (fun t : ℝ≥0 =>
        ((t : ℝ≥0∞) ^ 2 * ρ s : ℝ≥0∞)) (𝓝[>] 1) (𝓝 ((1 : ℝ≥0∞) ^ 2 * ρ s)) := by
      refine ENNReal.Tendsto.mul ?_ ?_ tendsto_const_nhds ?_
      · exact ENNReal.Tendsto.pow (ENNReal.tendsto_coe.2 nhdsWithin_le_nhds)
      · simp only [one_pow, ENNReal.coe_one, true_or, Ne, not_false_iff, one_ne_zero]
      · simp only [one_pow, ENNReal.coe_one, Ne, or_true, ENNReal.one_ne_top, not_false_iff]
    simp only [one_pow, one_mul, ENNReal.coe_one] at this
    refine ge_of_tendsto this ?_
    filter_upwards [self_mem_nhdsWithin] with _ ht
    exact v.withDensity_le_mul hρ hs ht
  · have :
      Tendsto (fun t : ℝ≥0 => (t : ℝ≥0∞) * μ.withDensity (v.limRatioMeas hρ) s) (𝓝[>] 1)
        (𝓝 ((1 : ℝ≥0∞) * μ.withDensity (v.limRatioMeas hρ) s)) := by
      refine ENNReal.Tendsto.mul_const (ENNReal.tendsto_coe.2 nhdsWithin_le_nhds) ?_
      simp only [ENNReal.coe_one, true_or, Ne, not_false_iff, one_ne_zero]
    simp only [one_mul, ENNReal.coe_one] at this
    refine ge_of_tendsto this ?_
    filter_upwards [self_mem_nhdsWithin] with _ ht
    exact v.le_mul_withDensity hρ hs ht

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
