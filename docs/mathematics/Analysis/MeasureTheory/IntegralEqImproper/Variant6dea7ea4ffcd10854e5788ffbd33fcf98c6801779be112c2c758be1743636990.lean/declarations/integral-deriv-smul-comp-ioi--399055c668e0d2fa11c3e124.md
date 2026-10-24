# integral_deriv_smul_comp_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7d9f959-fbf1-d9dc-a80a-94dd739679ea",
  "kind": "theorem",
  "lexical_name": "integral_deriv_smul_comp_Ioi",
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
  "slug": "integral-deriv-smul-comp-ioi--399055c668e0d2fa11c3e124",
  "source": {
    "blob": "a228878c46fab1445c32059592ea0ad71528f2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1125,
    "line": 1098,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:399055c668e0d2fa11c3e124653128ce1a4fbe72fd21a24620fd5c7370f042b1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7d9f959-fbf1-d9dc-a80a-94dd739679ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1098–1125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_deriv_smul_comp_Ioi {f f' : ℝ → ℝ} {g : ℝ → E} {a : ℝ}
    (hf : ContinuousOn f <| Ici a) (hft : Tendsto f atTop atTop)
    (hff' : ∀ x ∈ Ioi a, HasDerivWithinAt f (f' x) (Ioi x) x)
    (hg_cont : ContinuousOn g <| f '' Ioi a) (hg1 : IntegrableOn g <| f '' Ici a)
    (hg2 : IntegrableOn (fun x => f' x • (g ∘ f) x) (Ici a)) :
    (∫ x in Ioi a, f' x • (g ∘ f) x) = ∫ u in Ioi (f a), g u := by
  have eq : ∀ b : ℝ, a < b → (∫ x in a..b, f' x • (g ∘ f) x) = ∫ u in f a..f b, g u := fun b hb ↦ by
    have i1 : Ioo (min a b) (max a b) ⊆ Ioi a := by
      rw [min_eq_left hb.le]
      exact Ioo_subset_Ioi_self
    have i2 : [[a, b]] ⊆ Ici a := by rw [uIcc_of_le hb.le]; exact Icc_subset_Ici_self
    refine
      intervalIntegral.integral_deriv_smul_comp''' (hf.mono i2)
        (fun x hx => hff' x <| mem_of_mem_of_subset hx i1) (hg_cont.mono <| image_mono ?_)
        (hg1.mono_set <| image_mono ?_) (hg2.mono_set i2) <;> assumption
  rw [integrableOn_Ici_iff_integrableOn_Ioi] at hg2
  have t2 := intervalIntegral_tendsto_integral_Ioi _ hg2 tendsto_id
  have : Ioi (f a) ⊆ f '' Ici a :=
    Ioi_subset_Ici_self.trans <|
      IsPreconnected.intermediate_value_Ici isPreconnected_Ici self_mem_Ici
        (le_principal_iff.mpr <| Ici_mem_atTop _) hf hft
  have t1 := (intervalIntegral_tendsto_integral_Ioi _ (hg1.mono_set this) tendsto_id).comp hft
  exact tendsto_nhds_unique_of_eventuallyEq t2 t1 (eventuallyEq_of_mem (Ioi_mem_atTop a) eq)

@[deprecated (since := "2026-03-19")]
alias integral_comp_smul_deriv_Ioi := integral_deriv_smul_comp_Ioi

/-- Change-of-variables formula for `Ioi` integrals of scalar-valued functions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6dea7ea4ffcd10854e5788ffbd33fcf98c6801779be112c2c758be1743636990.lean#L1098).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a228878c46fab1445c32059592ea0ad71528f2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
