# exists_stronglyMeasurable_range_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa574fc0eb4c103f9c7273f5d83aec718c28500e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 656,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfa7d025-8d15-ae05-cf29-099a01f4e966",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4085ff6d-655e-951f-6928-460980a58d7a",
  "kind": "lemma",
  "lexical_name": "exists_stronglyMeasurable_range_subset",
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
  "slug": "exists-stronglymeasurable-range-subset--c75ab93d3d9b6ca5b21a1378",
  "source": {
    "blob": "aa574fc0eb4c103f9c7273f5d83aec718c28500e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 656,
    "path": "GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c75ab93d3d9b6ca5b21a1378cc80c1ab568c399de19ee71ad6aad57d1a667068",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4085ff6d-655e-951f-6928-460980a58d7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_stronglyMeasurable_range_subset {α β : Type*}
    [TopologicalSpace β] [PseudoMetrizableSpace β] [mb : MeasurableSpace β] [BorelSpace β]
    [m : MeasurableSpace α] {μ : Measure α} {f : α → β} (hf : AEStronglyMeasurable f μ)
    {s : Set β} (hs : MeasurableSet s) (h_nonempty : s.Nonempty) (h_mem : ∀ᵐ x ∂μ, f x ∈ s) :
    ∃ g : α → β, StronglyMeasurable g ∧ (∀ x, g x ∈ s) ∧ f =ᵐ[μ] g := by
  obtain ⟨f', hf', hff'⟩ := hf
  classical
  refine ⟨(f' ⁻¹' s).piecewise f' (fun _ ↦ h_nonempty.some), ?meas, ?subset, ?ae_eq⟩
  case meas => exact hf'.piecewise (hf'.measurable hs) stronglyMeasurable_const
  case subset =>
    rw [← Set.range_subset_iff]
    simpa [Set.range_piecewise] using fun _ _ ↦ h_nonempty.some_mem
  case ae_eq =>
    apply hff'.trans
    filter_upwards [h_mem, hff'] with x hx hx'
    exact Eq.symm <| (f' ⁻¹' s).piecewise_eq_of_mem f' _ (by simpa [hx'] using hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa574fc0eb4c103f9c7273f5d83aec718c28500e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
