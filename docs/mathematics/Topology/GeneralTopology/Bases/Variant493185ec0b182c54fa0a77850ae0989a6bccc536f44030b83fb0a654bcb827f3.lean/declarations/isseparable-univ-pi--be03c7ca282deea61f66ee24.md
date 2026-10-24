# IsSeparable.univ_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 542,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6de81a0-0806-687f-5f15-b27233cb12c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fd576df-5c0a-12a2-3d46-524575f19a3e",
  "kind": "theorem",
  "lexical_name": "IsSeparable.univ_pi",
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
  "slug": "isseparable-univ-pi--be03c7ca282deea61f66ee24",
  "source": {
    "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 542,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be03c7ca282deea61f66ee24f9c8cd7fd431dd9bbabeca126eb8c1b283858c0a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fd576df-5c0a-12a2-3d46-524575f19a3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSeparable.univ_pi {ι : Type*} [Countable ι] {X : ι → Type*} {s : ∀ i, Set (X i)}
    [∀ i, TopologicalSpace (X i)] (h : ∀ i, IsSeparable (s i)) :
    IsSeparable (univ.pi s) := by
  classical
  rcases eq_empty_or_nonempty (univ.pi s) with he | ⟨f₀, -⟩
  · rw [he]
    exact countable_empty.isSeparable
  · choose c c_count hc using h
    have := fun i ↦ (c_count i).to_subtype
    set g : (I : Finset ι) × ((i : I) → c i) → (i : ι) → X i := fun ⟨I, f⟩ i ↦
      if hi : i ∈ I then f ⟨i, hi⟩ else f₀ i
    refine ⟨range g, countable_range g, fun f hf ↦ mem_closure_iff.2 fun o ho hfo ↦ ?_⟩
    rcases isOpen_pi_iff.1 ho f hfo with ⟨I, u, huo, hI⟩
    rsuffices ⟨f, hf⟩ : ∃ f : (i : I) → c i, g ⟨I, f⟩ ∈ Set.pi I u
    · exact ⟨g ⟨I, f⟩, hI hf, mem_range_self (f := g) ⟨I, f⟩⟩
    suffices H : ∀ i ∈ I, (u i ∩ c i).Nonempty by
      choose f hfu hfc using H
      refine ⟨fun i ↦ ⟨f i i.2, hfc i i.2⟩, fun i (hi : i ∈ I) ↦ ?_⟩
      simpa only [g, dite_eq_left hi] using hfu i hi
    intro i hi
    exact mem_closure_iff.1 (hc i <| hf _ trivial) _ (huo i hi).1 (huo i hi).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83ef8435af34618046ecb4b3b0b05f85d68e8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
