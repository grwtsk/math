# _root_.aestronglyMeasurable_of_tendsto_ae

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
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e29bdc44-cb10-d8be-352c-3c300e1c652a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1998ceed-9f65-e4a1-6fbf-e24785437203",
  "kind": "theorem",
  "lexical_name": "_root_.aestronglyMeasurable_of_tendsto_ae",
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
  "slug": "root-aestronglymeasurable-of-tendsto-ae--a27ca2ddbffb8723338f41a8",
  "source": {
    "blob": "aa574fc0eb4c103f9c7273f5d83aec718c28500e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 621,
    "path": "GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a27ca2ddbffb8723338f41a8406286e0acf0990c9bac3cb8df75f8dad4de15e5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1998ceed-9f65-e4a1-6fbf-e24785437203`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.aestronglyMeasurable_of_tendsto_ae {ι : Type*} [PseudoMetrizableSpace β]
    (u : Filter ι) [NeBot u] [IsCountablyGenerated u] {f : ι → α → β} {g : α → β}
    (hf : ∀ i, AEStronglyMeasurable (f i) μ) (lim : ∀ᵐ x ∂μ, Tendsto (fun n => f n x) u (𝓝 (g x))) :
    AEStronglyMeasurable g μ := by
  borelize β
  refine aestronglyMeasurable_iff_aemeasurable_separable.2 ⟨?_, ?_⟩
  · exact aemeasurable_of_tendsto_metrizable_ae _ (fun n => (hf n).aemeasurable) lim
  · rcases u.exists_seq_tendsto with ⟨v, hv⟩
    have : ∀ n : ℕ, ∃ t : Set β, IsSeparable t ∧ f (v n) ⁻¹' t ∈ ae μ := fun n =>
      (aestronglyMeasurable_iff_aemeasurable_separable.1 (hf (v n))).2
    choose t t_sep ht using this
    refine ⟨closure (⋃ i, t i), .closure <| .iUnion t_sep, ?_⟩
    filter_upwards [ae_all_iff.2 ht, lim] with x hx h'x
    apply mem_closure_of_tendsto (h'x.comp hv)
    filter_upwards with n using mem_iUnion_of_mem n (hx n)

/-- If a sequence of almost everywhere strongly measurable functions converges almost everywhere,
one can select a strongly measurable function as the almost everywhere limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa574fc0eb4c103f9c7273f5d83aec718c28500e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
