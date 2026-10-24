# continuous_integral_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a11edce1155ee73b04ed856f70353e9c9c7b81f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec2cd69c-be6b-db4d-e4a3-53fe22205dbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70813098-2102-b1f9-5fe9-2a642c261443",
  "kind": "theorem",
  "lexical_name": "continuous_integral_integral",
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
  "slug": "continuous-integral-integral--953bbf08059e9c9361478483",
  "source": {
    "blob": "9a11edce1155ee73b04ed856f70353e9c9c7b81f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 287,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:953bbf08059e9c93614784836bf5634e183c4eae0258d47f4ea7e581d928b074",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70813098-2102-b1f9-5fe9-2a642c261443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_integral_integral {B : G →L[ℝ] F →L[ℝ] H} {C : H →L[ℝ] E →L[ℝ] I}
    [SFinite ν.variation] [SFinite μ.variation] :
    Continuous fun f : X × Y →₁[μ.variation.prod ν.variation] G ↦
      ∫ᵛ x, (∫ᵛ y, f (x, y) ∂[B; ν]) ∂[C; μ] := by
  apply continuous_iff_continuousAt.2 (fun g ↦ ?_)
  apply tendsto_integral_of_L1
  · exact (Integrable.integral_vectorMeasure_prod_left (L1.integrable_coeFn g)).aestronglyMeasurable
  · filter_upwards with h
    exact Integrable.integral_vectorMeasure_prod_left (L1.integrable_coeFn h)
  simp_rw [← lintegral_fn_integral_sub _ (L1.integrable_coeFn _) (L1.integrable_coeFn g)]
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds _ (fun i ↦ zero_le) _
    (h := fun i ↦ ∫⁻ x, ‖B‖ₑ * ∫⁻ y,
      ‖i (x, y) - g (x, y)‖ₑ ∂ν.variation ∂μ.variation); swap
  · exact fun i ↦ lintegral_mono fun x ↦ enorm_integral_le_lintegral_enorm
  have A (i : X × Y →₁[μ.variation.prod ν.variation] G) : Measurable fun z ↦ ‖i z - g z‖ₑ :=
    ((Lp.stronglyMeasurable i).sub (Lp.stronglyMeasurable g)).enorm
  simp_rw [lintegral_const_mul' ‖B‖ₑ _ (by simp),
    ← lintegral_prod _ (A _).aemeasurable, ← L1.ofReal_norm_sub_eq_lintegral, ofReal_norm]
  suffices Tendsto (fun i ↦ ‖B‖ₑ * ‖i - g‖ₑ) (𝓝 g) (𝓝 (‖B‖ₑ * 0)) by simpa
  apply ENNReal.Tendsto.const_mul _ (by simp)
  rw [← tendsto_iff_enorm_sub_tendsto_zero]
  exact tendsto_id

/-- **Fubini's Theorem**: For integrable functions on `X × Y`,
the vector measure integral of `f` for the product vector measure is equal to the iterated vector
measure integral. We express this with respect to general pairing functions, with a compatibility
condition saying that the compositions coincide up to reordering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a11edce1155ee73b04ed856f70353e9c9c7b81f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
