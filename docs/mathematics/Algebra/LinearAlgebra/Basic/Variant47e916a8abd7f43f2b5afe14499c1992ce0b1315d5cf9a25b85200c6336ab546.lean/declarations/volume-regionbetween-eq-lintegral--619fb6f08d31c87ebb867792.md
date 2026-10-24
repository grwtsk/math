# volume_regionBetween_eq_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2a3dbf4238ab555b4413644e3f3fbde8043082a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ed953a1-e7c9-3c38-70a3-74afa4c58cbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46f3587b-a1d0-0598-7468-b623e8f25edf",
  "kind": "theorem",
  "lexical_name": "volume_regionBetween_eq_lintegral",
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
  "slug": "volume-regionbetween-eq-lintegral--619fb6f08d31c87ebb867792",
  "source": {
    "blob": "c2a3dbf4238ab555b4413644e3f3fbde8043082a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 553,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:619fb6f08d31c87ebb867792272de6ce90dac3cfb1486283ab308100cfa1e4e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46f3587b-a1d0-0598-7468-b623e8f25edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_regionBetween_eq_lintegral [SigmaFinite μ] (hf : AEMeasurable f (μ.restrict s))
    (hg : AEMeasurable g (μ.restrict s)) (hs : MeasurableSet s) :
    μ.prod volume (regionBetween f g s) = ∫⁻ y in s, ENNReal.ofReal ((g - f) y) ∂μ := by
  have h₁ :
    (fun y => ENNReal.ofReal ((g - f) y)) =ᵐ[μ.restrict s] fun y =>
      ENNReal.ofReal ((AEMeasurable.mk g hg - AEMeasurable.mk f hf) y) :=
    (hg.ae_eq_mk.sub hf.ae_eq_mk).fun_comp ENNReal.ofReal
  have h₂ :
    (μ.restrict s).prod volume (regionBetween f g s) =
      (μ.restrict s).prod volume
        (regionBetween (AEMeasurable.mk f hf) (AEMeasurable.mk g hg) s) := by
    apply measure_congr
    apply EventuallyEq.rfl.inter
    exact
      ((quasiMeasurePreserving_fst.ae_eq_comp hf.ae_eq_mk).comp₂ _ EventuallyEq.rfl).inter
        (EventuallyEq.rfl.comp₂ _ <| quasiMeasurePreserving_fst.ae_eq_comp hg.ae_eq_mk)
  rw [lintegral_congr_ae h₁, ←
    volume_regionBetween_eq_lintegral' hf.measurable_mk hg.measurable_mk hs]
  convert h₂ using 1
  · rw [Measure.restrict_prod_eq_prod_univ]
    exact (Measure.restrict_eq_self _ (regionBetween_subset f g s)).symm
  · rw [Measure.restrict_prod_eq_prod_univ]
    exact
      (Measure.restrict_eq_self _
          (regionBetween_subset (AEMeasurable.mk f hf) (AEMeasurable.mk g hg) s)).symm
#align volume_region_between_eq_lintegral volume_regionBetween_eq_lintegral

end regionBetween

/-- Consider a real set `s`. If a property is true almost everywhere in `s ∩ (a, b)` for
all `a, b ∈ s`, then it is true almost everywhere in `s`. Formulated with `μ.restrict`.
See also `ae_of_mem_of_ae_of_mem_inter_Ioo`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant47e916a8abd7f43f2b5afe14499c1992ce0b1315d5cf9a25b85200c6336ab546.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2a3dbf4238ab555b4413644e3f3fbde8043082a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
