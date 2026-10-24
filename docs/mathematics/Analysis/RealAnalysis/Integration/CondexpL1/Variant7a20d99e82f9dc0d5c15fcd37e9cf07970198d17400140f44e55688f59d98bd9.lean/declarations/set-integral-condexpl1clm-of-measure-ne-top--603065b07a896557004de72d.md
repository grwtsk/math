# set_integral_condexpL1Clm_of_measure_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef567ff2-ae4f-434e-7be3-d88a77feea8d",
  "kind": "theorem",
  "lexical_name": "set_integral_condexpL1Clm_of_measure_ne_top",
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
  "slug": "set-integral-condexpl1clm-of-measure-ne-top--603065b07a896557004de72d",
  "source": {
    "blob": "5b60ab07be3708195f1e012bc688de60f74db63b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 412,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:603065b07a896557004de72d08afce9cbcaf2366b474be5cd4cbe46ec9605e30",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef567ff2-ae4f-434e-7be3-d88a77feea8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_integral_condexpL1Clm_of_measure_ne_top (f : α →₁[μ] F') (hs : MeasurableSet[m] s)
    (hμs : μ s ≠ ∞) : ∫ x in s, condexpL1Clm F' hm μ f x ∂μ = ∫ x in s, f x ∂μ := by
  refine' @Lp.induction _ _ _ _ _ _ _ ENNReal.one_ne_top
    (fun f : α →₁[μ] F' => ∫ x in s, condexpL1Clm F' hm μ f x ∂μ = ∫ x in s, f x ∂μ) _ _
    (isClosed_eq _ _) f
  · intro x t ht hμt
    simp_rw [condexpL1Clm_indicatorConst ht hμt.ne x]
    rw [Lp.simpleFunc.coe_indicatorConst, set_integral_indicatorConstLp (hm _ hs)]
    exact set_integral_condexpInd hs ht hμs hμt.ne x
  · intro f g hf_Lp hg_Lp _ hf hg
    simp_rw [(condexpL1Clm F' hm μ).map_add]
    rw [set_integral_congr_ae (hm s hs) ((Lp.coeFn_add (condexpL1Clm F' hm μ (hf_Lp.toLp f))
      (condexpL1Clm F' hm μ (hg_Lp.toLp g))).mono fun x hx _ => hx)]
    rw [set_integral_congr_ae (hm s hs)
      ((Lp.coeFn_add (hf_Lp.toLp f) (hg_Lp.toLp g)).mono fun x hx _ => hx)]
    simp_rw [Pi.add_apply]
    rw [integral_add (L1.integrable_coeFn _).integrableOn (L1.integrable_coeFn _).integrableOn,
      integral_add (L1.integrable_coeFn _).integrableOn (L1.integrable_coeFn _).integrableOn, hf,
      hg]
  · exact (continuous_set_integral s).comp (condexpL1Clm F' hm μ).continuous
  · exact continuous_set_integral s
#align measure_theory.set_integral_condexp_L1_clm_of_measure_ne_top MeasureTheory.set_integral_condexpL1Clm_of_measure_ne_top

/-- The integral of the conditional expectation `condexpL1Clm` over an `m`-measurable set is equal
to the integral of `f` on that set. See also `set_integral_condexp`, the similar statement for
`condexp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variant7a20d99e82f9dc0d5c15fcd37e9cf07970198d17400140f44e55688f59d98bd9.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b60ab07be3708195f1e012bc688de60f74db63b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
