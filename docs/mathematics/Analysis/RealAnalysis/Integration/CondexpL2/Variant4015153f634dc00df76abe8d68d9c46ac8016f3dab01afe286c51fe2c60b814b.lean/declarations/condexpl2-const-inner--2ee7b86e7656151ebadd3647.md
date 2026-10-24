# condexpL2_const_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7c87a26-8b5c-b99b-e05d-9b542f4c2856",
  "kind": "theorem",
  "lexical_name": "condexpL2_const_inner",
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
  "slug": "condexpl2-const-inner--2ee7b86e7656151ebadd3647",
  "source": {
    "blob": "93c814ed467e1eb8811ab1a1422a6fe989ad66de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ee7b86e7656151ebadd36474fc9af824034d1048cd8b01efc7616bffde01eb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7c87a26-8b5c-b99b-e05d-9b542f4c2856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condexpL2_const_inner (hm : m ≤ m0) (f : Lp E 2 μ) (c : E) :
    condexpL2 𝕜 𝕜 hm (((Lp.memℒp f).const_inner c).toLp fun a => ⟪c, f a⟫) =ᵐ[μ]
    fun a => ⟪c, (condexpL2 E 𝕜 hm f : α → E) a⟫ := by
  rw [lpMeas_coe]
  have h_mem_Lp : Memℒp (fun a => ⟪c, (condexpL2 E 𝕜 hm f : α → E) a⟫) 2 μ := by
    refine' Memℒp.const_inner _ _; rw [lpMeas_coe]; exact Lp.memℒp _
  have h_eq : h_mem_Lp.toLp _ =ᵐ[μ] fun a => ⟪c, (condexpL2 E 𝕜 hm f : α → E) a⟫ :=
    h_mem_Lp.coeFn_toLp
  refine' EventuallyEq.trans _ h_eq
  refine' Lp.ae_eq_of_forall_set_integral_eq' 𝕜 hm _ _ two_ne_zero ENNReal.coe_ne_top
    (fun s _ hμs => integrableOn_condexpL2_of_measure_ne_top hm hμs.ne _) _ _ _ _
  · intro s _ hμs
    rw [IntegrableOn, integrable_congr (ae_restrict_of_ae h_eq)]
    exact (integrableOn_condexpL2_of_measure_ne_top hm hμs.ne _).const_inner _
  · intro s hs hμs
    rw [← lpMeas_coe, integral_condexpL2_eq_of_fin_meas_real _ hs hμs.ne,
      integral_congr_ae (ae_restrict_of_ae h_eq), lpMeas_coe, ←
      L2.inner_indicatorConstLp_eq_set_integral_inner 𝕜 (↑(condexpL2 E 𝕜 hm f)) (hm s hs) c hμs.ne,
      ← inner_condexpL2_left_eq_right, condexpL2_indicator_of_measurable _ hs,
      L2.inner_indicatorConstLp_eq_set_integral_inner 𝕜 f (hm s hs) c hμs.ne,
      set_integral_congr_ae (hm s hs)
        ((Memℒp.coeFn_toLp ((Lp.memℒp f).const_inner c)).mono fun x hx _ => hx)]
  · rw [← lpMeas_coe]; exact lpMeas.aeStronglyMeasurable' _
  · refine' AEStronglyMeasurable'.congr _ h_eq.symm
    exact (lpMeas.aeStronglyMeasurable' _).const_inner _
#align measure_theory.condexp_L2_const_inner MeasureTheory.condexpL2_const_inner

/-- `condexpL2` verifies the equality of integrals defining the conditional expectation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c814ed467e1eb8811ab1a1422a6fe989ad66de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
