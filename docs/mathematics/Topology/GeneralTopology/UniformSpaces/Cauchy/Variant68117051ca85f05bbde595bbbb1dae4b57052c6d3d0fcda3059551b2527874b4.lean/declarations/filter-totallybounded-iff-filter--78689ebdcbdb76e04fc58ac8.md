# Filter.totallyBounded_iff_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 684,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad4ec4e4-716a-1ff3-c557-c2801e98fedf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:666b525c-72cc-d8da-5080-1ec3056d8a6d",
  "kind": "theorem",
  "lexical_name": "Filter.totallyBounded_iff_filter",
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
  "slug": "filter-totallybounded-iff-filter--78689ebdcbdb76e04fc58ac8",
  "source": {
    "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 705,
    "line": 684,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78689ebdcbdb76e04fc58ac88625857f7c7d69da73cee31fb7f657dac38d4736",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:666b525c-72cc-d8da-5080-1ec3056d8a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–705.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Filter.totallyBounded_iff_filter {g : Filter α} :
    g.TotallyBounded ↔ ∀ f, NeBot f → f ≤ g → ∃ c ≤ f, Cauchy c := by
  constructor
  · exact fun H f hf hfs => ⟨Ultrafilter.of f, Ultrafilter.of_le f,
      (Ultrafilter.of f).cauchy_of_totallyBounded' (H.mono ((Ultrafilter.of_le f).trans hfs))⟩
  · intro H d hd
    contrapose! H with hd_cover
    set f := ⨅ t : Finset α, g ⊓ 𝓟 (d.preimage t)ᶜ
    have hb : Antitone fun t : Finset α ↦ g ⊓ 𝓟 (d.preimage t)ᶜ :=
      fun s t (h : s ⊆ t) => by beta_reduce; gcongr
    have : Filter.NeBot f :=
      (Filter.iInf_neBot_iff_of_directed' <| hb.directed_ge).mpr fun t =>
        Filter.notMem_iff_inf_principal_compl.mp <| hd_cover t t.finite_toSet
    have : f ≤ g := iInf_le_of_le ∅ (by simp)
    refine ⟨f, ‹_›, ‹_›, fun c hcf hc => ?_⟩
    rcases mem_prod_same_iff.1 (hc.2 hd) with ⟨m, hm, hmd⟩
    rcases hc.1.nonempty_of_mem hm with ⟨y, hym⟩
    have : {x | (x, y) ∈ d}ᶜ ∈ c := by
      simpa [SetRel.preimage] using hcf.trans <| (iInf_le _ {y}).trans inf_le_right
    rcases hc.1.nonempty_of_mem (inter_mem hm this) with ⟨z, hzm, hyz⟩
    exact hyz (hmd ⟨hzm, hym⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86640c96b74c3a4161ecae8151f0cdec46f6d64c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
