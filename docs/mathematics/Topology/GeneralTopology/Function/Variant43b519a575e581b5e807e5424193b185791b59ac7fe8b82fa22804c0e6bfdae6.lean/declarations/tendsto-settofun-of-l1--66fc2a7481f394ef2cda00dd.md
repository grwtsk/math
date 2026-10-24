# tendsto_setToFun_of_L1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:596143b2-5edf-6ed4-f86d-8b562048a087",
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
  "slug": "tendsto-settofun-of-l1--66fc2a7481f394ef2cda00dd",
  "source": {
    "blob": "c5f0e17f995d604b6a8a1ce27317904b0412fcb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 327,
    "path": "GRWTSK/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66fc2a7481f394ef2cda00dd8e9b14b7729553d2eaf7b5a61a1b27acff125ea1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:596143b2-5edf-6ed4-f86d-8b562048a087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setToFun_of_L1 (hT : DominatedFinMeasAdditive μ T C) {ι} (f : α → E)
    (hf : AEStronglyMeasurable f μ) {fs : ι → α → E} {l : Filter ι}
    (hfsi : ∀ᶠ i in l, Integrable (fs i) μ)
    (hfs : Tendsto (fun i => ∫⁻ x, ‖fs i x - f x‖ₑ ∂μ) l (𝓝 0)) :
    Tendsto (fun i => setToFun μ T hT (fs i)) l (𝓝 <| setToFun μ T hT f) := by
  classical
  rcases eq_or_neBot l with rfl | hl
  · simp
  have hfi : Integrable f μ := by
    obtain ⟨i, hi, h'i⟩ : ∃ i, ∫⁻ x, ‖fs i x - f x‖ₑ ∂μ < 1 ∧ Integrable (fs i) μ :=
      (((tendsto_order.1 hfs).2 _ zero_lt_one).and hfsi).exists
    have : Integrable (fs i - f) μ := ⟨h'i.aestronglyMeasurable.sub hf, hi.trans one_lt_top⟩
    convert h'i.sub this
    abel
  let f_lp := hfi.toL1 f
  let F_lp i := if hFi : Integrable (fs i) μ then hFi.toL1 (fs i) else 0
  have tendsto_L1 : Tendsto F_lp l (𝓝 f_lp) := by
    rw [Lp.tendsto_Lp_iff_tendsto_eLpNorm']
    have M n : AEStronglyMeasurable ((F_lp n : α → E) - (f_lp : α → E)) μ :=
      (Lp.aestronglyMeasurable (F_lp n)).sub (Lp.aestronglyMeasurable f_lp)
    simp_rw [eLpNorm_one_eq_lintegral_enorm (M _), Pi.sub_apply]
    refine (tendsto_congr' ?_).mp hfs
    filter_upwards [hfsi] with i hi
    refine lintegral_congr_ae ?_
    filter_upwards [hi.coeFn_toL1, hfi.coeFn_toL1] with x hxi hxf
    simp_rw [F_lp, dite_eq_left hi, hxi, f_lp, hxf]
  suffices Tendsto (fun i => setToFun μ T hT (F_lp i)) l (𝓝 (setToFun μ T hT f)) by
    refine (tendsto_congr' ?_).mp this
    filter_upwards [hfsi] with i hi
    suffices h_ae_eq : F_lp i =ᵐ[μ] fs i from setToFun_congr_ae hT h_ae_eq
    simp_rw [F_lp, dite_eq_left hi]
    exact hi.coeFn_toL1
  rw [setToFun_congr_ae hT hfi.coeFn_toL1.symm]
  exact ((continuous_setToFun hT).tendsto f_lp).comp tendsto_L1

end Function

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f0e17f995d604b6a8a1ce27317904b0412fcb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
