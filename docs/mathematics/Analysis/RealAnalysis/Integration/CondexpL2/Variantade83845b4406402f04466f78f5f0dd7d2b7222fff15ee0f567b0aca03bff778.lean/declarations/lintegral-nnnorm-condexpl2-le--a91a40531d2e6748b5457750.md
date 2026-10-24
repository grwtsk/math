# lintegral_nnnorm_condexpL2_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdb4611be326cf2f44d9627da6bf554c3fe217fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2637e586-df5f-31da-24d7-6fd3aa8ead87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2197f7ad-7e66-05c0-0b97-bef77dd38ad9",
  "kind": "theorem",
  "lexical_name": "lintegral_nnnorm_condexpL2_le",
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
  "slug": "lintegral-nnnorm-condexpl2-le--a91a40531d2e6748b5457750",
  "source": {
    "blob": "cdb4611be326cf2f44d9627da6bf554c3fe217fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a91a40531d2e6748b54577502510b2ca7ae9393edf34b04fb076b95c8702335e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2197f7ad-7e66-05c0-0b97-bef77dd38ad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_nnnorm_condexpL2_le (hs : MeasurableSet[m] s) (hμs : μ s ≠ ∞) (f : Lp ℝ 2 μ) :
    ∫⁻ x in s, ‖(condexpL2 ℝ ℝ hm f : α → ℝ) x‖₊ ∂μ ≤ ∫⁻ x in s, ‖f x‖₊ ∂μ := by
  let h_meas := lpMeas.aeStronglyMeasurable' (condexpL2 ℝ ℝ hm f)
  let g := h_meas.choose
  have hg_meas : StronglyMeasurable[m] g := h_meas.choose_spec.1
  have hg_eq : g =ᵐ[μ] condexpL2 ℝ ℝ hm f := h_meas.choose_spec.2.symm
  have hg_eq_restrict : g =ᵐ[μ.restrict s] condexpL2 ℝ ℝ hm f := ae_restrict_of_ae hg_eq
  have hg_nnnorm_eq : (fun x => (‖g x‖₊ : ℝ≥0∞)) =ᵐ[μ.restrict s] fun x =>
      (‖(condexpL2 ℝ ℝ hm f : α → ℝ) x‖₊ : ℝ≥0∞) := by
    refine' hg_eq_restrict.mono fun x hx => _
    dsimp only
    simp_rw [hx]
  rw [lintegral_congr_ae hg_nnnorm_eq.symm]
  refine'
    lintegral_nnnorm_le_of_forall_fin_meas_integral_eq hm (Lp.stronglyMeasurable f) _ _ _ _ hs hμs
  · exact integrableOn_Lp_of_measure_ne_top f fact_one_le_two_ennreal.elim hμs
  · exact hg_meas
  · rw [IntegrableOn, integrable_congr hg_eq_restrict]
    exact integrableOn_condexpL2_of_measure_ne_top hm hμs f
  · intro t ht hμt
    rw [← integral_condexpL2_eq_of_fin_meas_real f ht hμt.ne]
    exact set_integral_congr_ae (hm t ht) (hg_eq.mono fun x hx _ => hx)
#align measure_theory.lintegral_nnnorm_condexp_L2_le MeasureTheory.lintegral_nnnorm_condexpL2_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdb4611be326cf2f44d9627da6bf554c3fe217fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
