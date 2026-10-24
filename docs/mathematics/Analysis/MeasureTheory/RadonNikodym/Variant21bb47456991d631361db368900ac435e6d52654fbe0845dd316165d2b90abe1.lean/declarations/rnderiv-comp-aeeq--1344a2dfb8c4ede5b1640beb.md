# rnDeriv_comp_aeEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddf74400-868e-3586-e5f0-2a7cfa6f98c2",
  "kind": "theorem",
  "lexical_name": "rnDeriv_comp_aeEq",
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
  "slug": "rnderiv-comp-aeeq--1344a2dfb8c4ede5b1640beb",
  "source": {
    "blob": "0cbe0fec610acac5fe6a771ff2c7041c34f3beaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 76,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant21bb47456991d631361db368900ac435e6d52654fbe0845dd316165d2b90abe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1344a2dfb8c4ede5b1640beb5ec05477538cad576143978d3c55b249defd1317",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variant21bb47456991d631361db368900ac435e6d52654fbe0845dd316165d2b90abe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddf74400-868e-3586-e5f0-2a7cfa6f98c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rnDeriv_comp_aeEq [IsFiniteMeasure ν] {f : X → X}
    (hfμ : MeasurePreserving f μ μ) (hfν : MeasurePreserving f ν ν) :
    μ.rnDeriv ν ∘ f =ᵐ[ν] μ.rnDeriv ν := by
  wlog hμν : μ ≪ ν generalizing μ
  · specialize this (hfμ.withDensity_rnDeriv hfν) (withDensity_absolutelyContinuous _ _)
    refine .trans (.trans ?_ this) (rnDeriv_withDensity ν (measurable_rnDeriv μ ν))
    apply hfν.quasiMeasurePreserving.ae_eq_comp
    exact (rnDeriv_withDensity ν (measurable_rnDeriv μ ν)).symm
  refine .of_forall_eventually_lt_iff fun c ↦ ?_
  set s := {a | μ.rnDeriv ν a < c}
  have hsm : MeasurableSet s := measurable_rnDeriv _ _ measurableSet_Iio
  have hμ_diff : μ (f ⁻¹' s \ s) = μ (s \ f ⁻¹' s) :=
    measure_diff_symm (hfμ.measurable hsm).nullMeasurableSet hsm.nullMeasurableSet
      (hfμ.measure_preimage hsm.nullMeasurableSet) (measure_ne_top _ _)
  have hν_diff : ν (f ⁻¹' s \ s) = ν (s \ f ⁻¹' s) :=
    measure_diff_symm (hfν.measurable hsm).nullMeasurableSet hsm.nullMeasurableSet
      (hfν.measure_preimage hsm.nullMeasurableSet) (measure_ne_top _ _)
  suffices f ⁻¹' s =ᵐ[ν] s from this.mem_iff
  suffices ν (f ⁻¹' s \ s) = 0 from (ae_le_set.mpr this).antisymm (ae_le_set.mpr <| hν_diff ▸ this)
  contrapose! hμ_diff with h₀
  apply ne_of_gt
  calc
    μ (s \ f ⁻¹' s) = ∫⁻ a in s \ f ⁻¹' s, μ.rnDeriv ν a ∂ν := (setLIntegral_rnDeriv hμν _).symm
    _ < ∫⁻ _ in s \ f ⁻¹' s, c ∂ν := by
      apply setLIntegral_strict_mono (hsm.diff (hfμ.measurable hsm)) (hν_diff ▸ h₀) measurable_const
      · rw [setLIntegral_rnDeriv hμν]
        apply measure_ne_top
      · exact .of_forall fun x hx ↦ hx.1
    _ = ∫⁻ _ in f ⁻¹' s \ s, c ∂ν := by simp [hν_diff]
    _ ≤ ∫⁻ a in f ⁻¹' s \ s, μ.rnDeriv ν a ∂ν :=
      setLIntegral_mono (by fun_prop) (fun x hx ↦ not_lt.mp hx.2)
    _ = μ (f ⁻¹' s \ s) := setLIntegral_rnDeriv hμν _

end MeasureTheory.MeasurePreserving
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variant21bb47456991d631361db368900ac435e6d52654fbe0845dd316165d2b90abe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant21bb47456991d631361db368900ac435e6d52654fbe0845dd316165d2b90abe1.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cbe0fec610acac5fe6a771ff2c7041c34f3beaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
