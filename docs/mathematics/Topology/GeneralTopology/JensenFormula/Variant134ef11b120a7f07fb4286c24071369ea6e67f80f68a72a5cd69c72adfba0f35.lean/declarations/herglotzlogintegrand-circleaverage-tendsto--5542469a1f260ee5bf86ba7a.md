# herglotzLogIntegrand_circleAverage_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dd78e234df51703431c913f5bc6081233542e97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bc435bd-f0f4-4a42-e14f-c98610275464",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12f3a279-061c-2039-4718-b4740d0577a8",
  "kind": "theorem",
  "lexical_name": "herglotzLogIntegrand_circleAverage_tendsto",
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
  "slug": "herglotzlogintegrand-circleaverage-tendsto--5542469a1f260ee5bf86ba7a",
  "source": {
    "blob": "3dd78e234df51703431c913f5bc6081233542e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5542469a1f260ee5bf86ba7afcd7e9fdf1a66a19d23f236ea89aa8cfbe66cc15",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12f3a279-061c-2039-4718-b4740d0577a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem herglotzLogIntegrand_circleAverage_tendsto {ρ w : ℂ} {R : ℝ} (hR : 0 < R)
    (hρ : ‖ρ‖ = R) (hw : ‖w‖ < R) {r : ℕ → ℝ} (hr_lt : ∀ n, r n < R)
    (hr_tendsto : Tendsto r atTop (nhds R)) :
    Tendsto (fun n ↦ circleAverage (herglotzLogIntegrand w ρ) 0 (r n)) atTop
      (nhds (circleAverage (herglotzLogIntegrand w ρ) 0 R)) := by
  -- Apply the dominated convergence theorem.
  let bound := fun θ ↦ ((R + ‖w‖) / ((R + ‖w‖) / 2 - ‖w‖)) * (|log (2 * R)|
    + |log (sqrt ((R + ‖w‖) / 2 / R))| + |log ‖circleMap 0 R θ - ρ‖|)
  apply Filter.Tendsto.smul tendsto_const_nhds _
  apply intervalIntegral.tendsto_integral_filter_of_dominated_convergence bound
  · -- The herglotzLogIntegrand is AEStronglyMeasurable
    filter_upwards [hr_tendsto.eventually (lt_mem_nhds hw)] with n hn
    exact continuous_herglotzLogIntegrand_circle hρ (hr_lt n) hn |>.aestronglyMeasurable
  · -- Pointwise boundedness outside a null set
    filter_upwards [hr_tendsto.eventually (le_mem_nhds (by linarith : (R + ‖w‖) / 2 < R))] with n hn
    have h_bound {θ : ℝ} :
        ‖herglotzLogIntegrand w ρ (circleMap 0 (r n) θ)‖ ≤ bound θ ∨ ‖circleMap 0 R θ - ρ‖ = 0 := by
      refine Classical.or_iff_not_imp_right.mpr fun h ↦ ?_
      apply norm_herglotzLogIntegrand_circleMap_le hR hρ (by positivity) (by linarith) hn
        (hr_lt n).le
      simpa using! h
    apply measure_mono_null (t := {θ | ‖circleMap 0 R θ - ρ‖ = 0}) (by grind)
    simpa [sub_eq_zero] using!
      (countable_singleton ρ).preimage_circleMap 0 (hR.ne') |>.measure_zero _
  · -- IntervalIntegrable bound volume 0 (2 * π)
    apply (IntervalIntegrable.add (by simp) (by simp)).add ?_ |>.const_mul
    exact .abs <| MeromorphicOn.circleIntegrable_log_norm (f := fun z ↦ z - ρ) (by fun_prop)
  · -- Pointwise convergence outside a null set
    have h_measure_zero : volume {θ : ℝ | circleMap 0 R θ = w ∨ circleMap 0 R θ = ρ} = 0 :=
      countable_singleton w |>.preimage_circleMap 0 (hR.ne') |>.union
        ((countable_singleton ρ).preimage_circleMap 0 (hR.ne')) |>.measure_zero _
    filter_upwards [measure_eq_zero_iff_ae_notMem.mp h_measure_zero] with θ hθ _
    apply (continuousAt_herglotzLogIntegrand (by tauto) (by tauto)).tendsto.comp
    exact tendsto_const_nhds.add <|
      (Complex.continuous_ofReal.continuousAt.tendsto.comp hr_tendsto).mul tendsto_const_nhds

-- Auxiliary lemma for `circleAverage_re_herglotzRieszKernel_mul_log`. Statement in case where the
-- center equals zero.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd78e234df51703431c913f5bc6081233542e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
