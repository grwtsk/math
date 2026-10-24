# _root_.GRWTSK.Analysis.RealAnalysis.Integration.CondDistribApplyOfNeZero.Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea92a796-f0dd-abcc-f407-58ce2a37917a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.CondDistribApplyOfNeZero.Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prodMk",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-conddistribapplyofnezero-v--df08fd68cf95acbe7b737680",
  "source": {
    "blob": "8a664e4cf9b584979ed5a9fccfc68508a3faa2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 314,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df08fd68cf95acbe7b73768075c3df106fa6d7f4dfdd08ab89421426c8e450aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea92a796-f0dd-abcc-f407-58ce2a37917a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.CondDistribApplyOfNeZero.Variant628d183ff9d6d35fb04b360724b9fd6993a7bf95b8c0be5be08e0f55e62b5f24.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prodMk {Ω F} {mΩ : MeasurableSpace Ω}
    (X : Ω → β) {μ : Measure Ω} [TopologicalSpace F] {f : Ω → F} (hf : AEStronglyMeasurable f μ) :
    AEStronglyMeasurable (fun x : β × Ω => f x.2) (μ.map fun ω => (X ω, ω)) := by
  refine ⟨fun x => hf.mk f x.2, hf.stronglyMeasurable_mk.comp_measurable measurable_snd, ?_⟩
  suffices h : Measure.QuasiMeasurePreserving Prod.snd (μ.map fun ω ↦ (X ω, ω)) μ from
    Measure.QuasiMeasurePreserving.ae_eq h hf.ae_eq_mk
  refine ⟨measurable_snd, Measure.AbsolutelyContinuous.mk fun s hs hμs => ?_⟩
  rw [Measure.map_apply _ hs]
  swap; · exact measurable_snd
  by_cases hX : AEMeasurable X μ
  · rw [Measure.map_apply_of_aemeasurable]
    · rw [← univ_prod, mk_preimage_prod, preimage_univ, univ_inter, preimage_id']
      exact hμs
    · exact hX.prodMk aemeasurable_id
    · exact measurable_snd hs
  · rw [Measure.map_of_not_aemeasurable]
    · simp
    · contrapose! hX; exact measurable_fst.comp_aemeasurable hX

@[deprecated (since := "2025-03-05")]
alias _root_.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_mk :=
  MeasureTheory.AEStronglyMeasurable.comp_snd_map_prodMk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondDistrib/Variant8c26bd155239e752a5584d542806209b8bc785a874a61d00b1e9dca75b325caf.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a664e4cf9b584979ed5a9fccfc68508a3faa2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
