# stronglyMeasurable_deriv_with_param

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55b6eb62-2838-6979-7636-3c17cc85eea8",
  "kind": "theorem",
  "lexical_name": "stronglyMeasurable_deriv_with_param",
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
  "slug": "stronglymeasurable-deriv-with-param--5c71f423519b2be640e13936",
  "source": {
    "blob": "ce9cb930538ae370bc57e7e93aada8057e5ba0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 952,
    "line": 932,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c71f423519b2be640e139368f314d1538e810f04b9c91bcc80a9d62d8732c1c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55b6eb62-2838-6979-7636-3c17cc85eea8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 932–952.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stronglyMeasurable_deriv_with_param [LocallyCompactSpace 𝕜] [MeasurableSpace 𝕜]
    [OpensMeasurableSpace 𝕜] [h : SecondCountableTopologyEither α F]
    {f : α → 𝕜 → F} (hf : Continuous f.uncurry) :
    StronglyMeasurable (fun (p : α × 𝕜) ↦ deriv (f p.1) p.2) := by
  borelize F
  rcases h.out with hα | hF
  · have : ProperSpace 𝕜 := .of_locallyCompactSpace 𝕜
    apply stronglyMeasurable_iff_measurable_separable.2 ⟨measurable_deriv_with_param hf, ?_⟩
    have : range (fun (p : α × 𝕜) ↦ deriv (f p.1) p.2)
        ⊆ closure (Submodule.span 𝕜 (range f.uncurry)) := by
      rintro - ⟨p, rfl⟩
      have A : deriv (f p.1) p.2 ∈ closure (Submodule.span 𝕜 (range (f p.1))) := by
        rw [← image_univ]
        apply range_deriv_subset_closure_span_image _ dense_univ (mem_range_self _)
      have B : range (f p.1) ⊆ range (f.uncurry) := by
        rintro - ⟨x, rfl⟩
        exact mem_range_self (p.1, x)
      exact closure_mono (Submodule.span_mono B) A
    exact (isSeparable_range hf).span.closure.mono this
  · exact (measurable_deriv_with_param hf).stronglyMeasurable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean#L932).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9cb930538ae370bc57e7e93aada8057e5ba0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
