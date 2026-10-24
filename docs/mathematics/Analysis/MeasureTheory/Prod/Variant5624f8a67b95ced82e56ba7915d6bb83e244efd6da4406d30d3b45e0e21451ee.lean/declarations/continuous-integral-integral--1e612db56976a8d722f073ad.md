# continuous_integral_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2da6e0cd-7a58-cf1c-1893-c567f683fd93",
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
  "slug": "continuous-integral-integral--1e612db56976a8d722f073ad",
  "source": {
    "blob": "ccbd4a15c5845619bac6d506fe64148062840dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 295,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e612db56976a8d722f073ad8259e031ef6a5bd04c81fd7165644d72b5017bf9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2da6e0cd-7a58-cf1c-1893-c567f683fd93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–321.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccbd4a15c5845619bac6d506fe64148062840dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
