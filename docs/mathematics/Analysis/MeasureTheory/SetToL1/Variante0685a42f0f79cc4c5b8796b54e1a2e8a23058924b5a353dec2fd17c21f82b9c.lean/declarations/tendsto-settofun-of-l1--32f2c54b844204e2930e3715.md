# tendsto_setToFun_of_L1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1514,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b128ebf-2d11-676c-d4a6-fde02f6af8dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fa5e4e3-15ff-8260-d184-374f00c22e56",
  "kind": "theorem",
  "lexical_name": "tendsto_setToFun_of_L1",
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
  "slug": "tendsto-settofun-of-l1--32f2c54b844204e2930e3715",
  "source": {
    "blob": "1b7c05bdb9d0e7092b58d232427abb73b2122a2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1538,
    "line": 1514,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32f2c54b844204e2930e3715926eca1c0f01fe8d82c34b22669ff122829928d4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fa5e4e3-15ff-8260-d184-374f00c22e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1514–1538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setToFun_of_L1 (hT : DominatedFinMeasAdditive μ T C) {ι} (f : α → E)
    (hfi : Integrable f μ) {fs : ι → α → E} {l : Filter ι} (hfsi : ∀ᶠ i in l, Integrable (fs i) μ)
    (hfs : Tendsto (fun i => ∫⁻ x, ‖fs i x - f x‖₊ ∂μ) l (𝓝 0)) :
    Tendsto (fun i => setToFun μ T hT (fs i)) l (𝓝 <| setToFun μ T hT f) := by
  classical
    let f_lp := hfi.toL1 f
    let F_lp i := if hFi : Integrable (fs i) μ then hFi.toL1 (fs i) else 0
    have tendsto_L1 : Tendsto F_lp l (𝓝 f_lp) := by
      rw [Lp.tendsto_Lp_iff_tendsto_ℒp']
      simp_rw [snorm_one_eq_lintegral_nnnorm, Pi.sub_apply]
      refine' (tendsto_congr' _).mp hfs
      filter_upwards [hfsi]with i hi
      refine' lintegral_congr_ae _
      filter_upwards [hi.coeFn_toL1, hfi.coeFn_toL1] with x hxi hxf
      simp_rw [dif_pos hi, hxi, hxf]
    suffices Tendsto (fun i => setToFun μ T hT (F_lp i)) l (𝓝 (setToFun μ T hT f)) by
      refine' (tendsto_congr' _).mp this
      filter_upwards [hfsi] with i hi
      suffices h_ae_eq : F_lp i =ᵐ[μ] fs i; exact setToFun_congr_ae hT h_ae_eq
      simp_rw [dif_pos hi]
      exact hi.coeFn_toL1
    rw [setToFun_congr_ae hT hfi.coeFn_toL1.symm]
    exact ((continuous_setToFun hT).tendsto f_lp).comp tendsto_L1
#align measure_theory.tendsto_set_to_fun_of_L1 MeasureTheory.tendsto_setToFun_of_L1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variante0685a42f0f79cc4c5b8796b54e1a2e8a23058924b5a353dec2fd17c21f82b9c.lean#L1514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b7c05bdb9d0e7092b58d232427abb73b2122a2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
