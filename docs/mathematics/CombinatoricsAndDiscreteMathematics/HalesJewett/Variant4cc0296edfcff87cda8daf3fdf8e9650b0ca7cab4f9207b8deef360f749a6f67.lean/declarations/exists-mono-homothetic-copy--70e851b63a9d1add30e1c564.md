# exists_mono_homothetic_copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af5bdd5a4f3889634fabd26415570b3e6a1db8d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 459,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41fc6fc0-0f20-1d32-ea72-7592dabc5fd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec9d34bb-166b-79d2-0c24-1b8e54e2f043",
  "kind": "theorem",
  "lexical_name": "exists_mono_homothetic_copy",
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
  "slug": "exists-mono-homothetic-copy--70e851b63a9d1add30e1c564",
  "source": {
    "blob": "af5bdd5a4f3889634fabd26415570b3e6a1db8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 459,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e851b63a9d1add30e1c564fd1b1ca39ad648d62e6b7e10bb2ab4687dbfe02d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec9d34bb-166b-79d2-0c24-1b8e54e2f043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mono_homothetic_copy {M κ : Type*} [AddCommMonoid M] (S : Finset M) [Finite κ]
    (C : M → κ) : ∃ a > 0, ∃ (b : M) (c : κ), ∀ s ∈ S, C (a • s + b) = c := by
  classical
  obtain ⟨ι, _inst, hι⟩ := Line.exists_mono_in_high_dimension S κ
  specialize hι fun v => C <| ∑ i, v i
  obtain ⟨l, c, hl⟩ := hι
  set s : Finset ι := {i | l.idxFun i = none} with hs
  refine ⟨#s, Finset.card_pos.mpr ⟨l.proper.choose, ?_⟩, ∑ i ∈ sᶜ, ((l.idxFun i).map ?_).getD 0,
    c, ?_⟩
  · rw [hs, Finset.mem_filter]
    exact ⟨Finset.mem_univ _, l.proper.choose_spec⟩
  · exact fun m => m
  intro x xs
  rw [← hl ⟨x, xs⟩]
  clear hl; congr
  rw [← Finset.sum_add_sum_compl s]
  congr 1
  · rw [← Finset.sum_const]
    apply Finset.sum_congr rfl
    intro i hi
    rw [hs, Finset.mem_filter] at hi
    rw [l.apply_none _ _ hi.right, Subtype.coe_mk]
  · apply Finset.sum_congr rfl
    intro i hi
    rw [hs, Finset.compl_filter, Finset.mem_filter] at hi
    obtain ⟨y, hy⟩ := Option.ne_none_iff_exists.mp hi.right
    simp [← hy, Option.map_some, Option.getD]

namespace Subspace

/-- The **multidimensional Hales-Jewett theorem**, aka **extended Hales-Jewett theorem**: For any
finite types `η`, `α` and `κ`, there exists a finite type `ι` such that whenever the hypercube
`ι → α` is `κ`-colored, there is a monochromatic combinatorial subspace of dimension `η`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant4cc0296edfcff87cda8daf3fdf8e9650b0ca7cab4f9207b8deef360f749a6f67.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5bdd5a4f3889634fabd26415570b3e6a1db8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
