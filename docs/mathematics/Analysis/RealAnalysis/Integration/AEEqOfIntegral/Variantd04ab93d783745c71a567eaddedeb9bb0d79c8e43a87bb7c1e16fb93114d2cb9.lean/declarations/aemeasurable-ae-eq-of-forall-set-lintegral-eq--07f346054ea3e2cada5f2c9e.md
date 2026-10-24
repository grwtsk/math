# AeMeasurable.ae_eq_of_forall_set_lintegral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab3b390a490889e5774dd39e424e93e44e54c2f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 606,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a10f49b-e7b9-43fd-5002-3765d80e374d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a45711d1-cd34-aacd-e66b-cbf919a928cb",
  "kind": "theorem",
  "lexical_name": "AeMeasurable.ae_eq_of_forall_set_lintegral_eq",
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
  "slug": "aemeasurable-ae-eq-of-forall-set-lintegral-eq--07f346054ea3e2cada5f2c9e",
  "source": {
    "blob": "ab3b390a490889e5774dd39e424e93e44e54c2f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 606,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07f346054ea3e2cada5f2c9ed1f0b667171ae6c52160a8fac53092c1f969df66",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a45711d1-cd34-aacd-e66b-cbf919a928cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AeMeasurable.ae_eq_of_forall_set_lintegral_eq {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ)
    (hg : AEMeasurable g μ) (hfi : (∫⁻ x, f x ∂μ) ≠ ∞) (hgi : (∫⁻ x, g x ∂μ) ≠ ∞)
    (hfg : ∀ ⦃s⦄, MeasurableSet s → μ s < ∞ → ∫⁻ x in s, f x ∂μ = ∫⁻ x in s, g x ∂μ) :
    f =ᵐ[μ] g := by
  refine'
    ENNReal.eventuallyEq_of_toReal_eventuallyEq (ae_lt_top' hf hfi).ne_of_lt
      (ae_lt_top' hg hgi).ne_of_lt
      (Integrable.ae_eq_of_forall_set_integral_eq _ _
        (integrable_toReal_of_lintegral_ne_top hf hfi)
        (integrable_toReal_of_lintegral_ne_top hg hgi) fun s hs hs' => _)
  rw [integral_eq_lintegral_of_nonneg_ae, integral_eq_lintegral_of_nonneg_ae]
  · congr 1
    rw [lintegral_congr_ae (ofReal_toReal_ae_eq _), lintegral_congr_ae (ofReal_toReal_ae_eq _)]
    · exact hfg hs hs'
    · refine' ae_lt_top' hg.restrict (ne_of_lt (lt_of_le_of_lt _ hgi.lt_top))
      exact @set_lintegral_univ α _ μ g ▸ lintegral_mono_set (Set.subset_univ _)
    · refine' ae_lt_top' hf.restrict (ne_of_lt (lt_of_le_of_lt _ hfi.lt_top))
      exact @set_lintegral_univ α _ μ f ▸ lintegral_mono_set (Set.subset_univ _)
  -- putting the proofs where they are used is extremely slow
  exacts [ae_of_all _ fun x => ENNReal.toReal_nonneg,
    hg.ennreal_toReal.restrict.aestronglyMeasurable, ae_of_all _ fun x => ENNReal.toReal_nonneg,
    hf.ennreal_toReal.restrict.aestronglyMeasurable]
#align measure_theory.ae_measurable.ae_eq_of_forall_set_lintegral_eq MeasureTheory.AeMeasurable.ae_eq_of_forall_set_lintegral_eq

end Lintegral

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3b390a490889e5774dd39e424e93e44e54c2f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
