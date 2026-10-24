# AEMeasurable.ae_eq_of_forall_setLIntegral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e254f8b2-af7a-38a7-e0e2-3669f3a71435",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.ae_eq_of_forall_setLIntegral_eq",
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
  "slug": "aemeasurable-ae-eq-of-forall-setlintegral-eq--95f730aaafa9ec15e8863b92",
  "source": {
    "blob": "6934d8b853b8fed6d63dcc9149696c84e9681bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 155,
    "path": "GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95f730aaafa9ec15e8863b92c6c0f5050abbcd781c9b57e39ede24961be506cd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e254f8b2-af7a-38a7-e0e2-3669f3a71435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEMeasurable.ae_eq_of_forall_setLIntegral_eq {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ)
    (hg : AEMeasurable g μ) (hfi : ∫⁻ x, f x ∂μ ≠ ∞) (hgi : ∫⁻ x, g x ∂μ ≠ ∞)
    (hfg : ∀ ⦃s⦄, MeasurableSet s → μ s < ∞ → ∫⁻ x in s, f x ∂μ = ∫⁻ x in s, g x ∂μ) :
    f =ᵐ[μ] g := by
  have hf' : AEFinStronglyMeasurable f μ :=
    ENNReal.aefinStronglyMeasurable_of_aemeasurable hfi hf
  have hg' : AEFinStronglyMeasurable g μ :=
    ENNReal.aefinStronglyMeasurable_of_aemeasurable hgi hg
  let s := hf'.sigmaFiniteSet
  let t := hg'.sigmaFiniteSet
  suffices f =ᵐ[μ.restrict (s ∪ t)] g by
    refine ae_of_ae_restrict_of_ae_restrict_compl _ this ?_
    simp only [Set.compl_union]
    have h1 : f =ᵐ[μ.restrict sᶜ] 0 := hf'.ae_eq_zero_compl
    have h2 : g =ᵐ[μ.restrict tᶜ] 0 := hg'.ae_eq_zero_compl
    rw [ae_restrict_iff' (hf'.measurableSet.compl.inter hg'.measurableSet.compl)]
    rw [EventuallyEq, ae_restrict_iff' hf'.measurableSet.compl] at h1
    rw [EventuallyEq, ae_restrict_iff' hg'.measurableSet.compl] at h2
    filter_upwards [h1, h2] with x h1 h2 hx
    rw [h1 (Set.inter_subset_left hx), h2 (Set.inter_subset_right hx)]
  have := hf'.sigmaFinite_restrict
  have := hg'.sigmaFinite_restrict
  refine ae_eq_of_forall_setLIntegral_eq_of_sigmaFinite₀ hf.restrict hg.restrict
    fun u hu huμ ↦ ?_
  rw [Measure.restrict_restrict hu]
  rw [Measure.restrict_apply hu] at huμ
  exact hfg (hu.inter (hf'.measurableSet.union hg'.measurableSet)) huμ

section PiSystem

variable {s : Set (Set α)} {f g : α → ℝ≥0∞}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6934d8b853b8fed6d63dcc9149696c84e9681bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
