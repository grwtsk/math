# set_lintegral_nnnorm_condexpIndSMul_le

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
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b1eb47d-6b56-f9a4-4717-a5feb79a6feb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:462e6920-5dd3-e7c8-fa1e-bb6f5107075c",
  "kind": "theorem",
  "lexical_name": "set_lintegral_nnnorm_condexpIndSMul_le",
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
  "slug": "set-lintegral-nnnorm-condexpindsmul-le--40e296b9107588abc30329c4",
  "source": {
    "blob": "cdb4611be326cf2f44d9627da6bf554c3fe217fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 425,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40e296b9107588abc30329c4ab9ff4b12469b2b905b6351a07b3f17a55667929",
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

Occurrence: `result:462e6920-5dd3-e7c8-fa1e-bb6f5107075c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_lintegral_nnnorm_condexpIndSMul_le (hm : m ≤ m0) (hs : MeasurableSet s) (hμs : μ s ≠ ∞)
    (x : G) {t : Set α} (ht : MeasurableSet[m] t) (hμt : μ t ≠ ∞) :
    (∫⁻ a in t, ‖condexpIndSMul hm hs hμs x a‖₊ ∂μ) ≤ μ (s ∩ t) * ‖x‖₊ :=
  calc
    ∫⁻ a in t, ‖condexpIndSMul hm hs hμs x a‖₊ ∂μ =
        ∫⁻ a in t, ‖(condexpL2 ℝ ℝ hm (indicatorConstLp 2 hs hμs 1) : α → ℝ) a • x‖₊ ∂μ :=
      set_lintegral_congr_fun (hm t ht)
        ((condexpIndSMul_ae_eq_smul hm hs hμs x).mono fun a ha _ => by rw [ha])
    _ = (∫⁻ a in t, ‖(condexpL2 ℝ ℝ hm (indicatorConstLp 2 hs hμs 1) : α → ℝ) a‖₊ ∂μ) * ‖x‖₊ := by
      simp_rw [nnnorm_smul, ENNReal.coe_mul]
      rw [lintegral_mul_const, lpMeas_coe]
      exact (Lp.stronglyMeasurable _).ennnorm
    _ ≤ μ (s ∩ t) * ‖x‖₊ :=
      mul_le_mul_right' (lintegral_nnnorm_condexpL2_indicator_le_real hs hμs ht hμt) _
#align measure_theory.set_lintegral_nnnorm_condexp_ind_smul_le MeasureTheory.set_lintegral_nnnorm_condexpIndSMul_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdb4611be326cf2f44d9627da6bf554c3fe217fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
