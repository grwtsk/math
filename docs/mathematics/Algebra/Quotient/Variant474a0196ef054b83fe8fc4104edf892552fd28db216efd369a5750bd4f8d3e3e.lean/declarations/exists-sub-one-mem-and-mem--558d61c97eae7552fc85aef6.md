# exists_sub_one_mem_and_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7186ebc3-eed6-56d9-6377-d9fef8c09f39",
  "kind": "theorem",
  "lexical_name": "exists_sub_one_mem_and_mem",
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
  "slug": "exists-sub-one-mem-and-mem--558d61c97eae7552fc85aef6",
  "source": {
    "blob": "619506e8ca5f79eb54d81c4542f7c92587cc90c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 404,
    "path": "GRWTSK/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:558d61c97eae7552fc85aef64da6057dec78deb2abddb7ac5f2e112448c40195",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7186ebc3-eed6-56d9-6377-d9fef8c09f39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sub_one_mem_and_mem (s : Finset ι) {f : ι → Ideal R}
    (hf : ∀ i ∈ s, ∀ j ∈ s, i ≠ j → f i ⊔ f j = ⊤) (i : ι) (his : i ∈ s) :
    ∃ r : R, r - 1 ∈ f i ∧ ∀ j ∈ s, j ≠ i → r ∈ f j := by
  have : ∀ j ∈ s, j ≠ i → ∃ r : R, ∃ _ : r - 1 ∈ f i, r ∈ f j := by
    intro j hjs hji
    specialize hf i his j hjs hji.symm
    rw [eq_top_iff_one, Submodule.mem_sup] at hf
    rcases hf with ⟨r, hri, s, hsj, hrs⟩
    refine' ⟨1 - r, _, _⟩
    · rw [sub_right_comm, sub_self, zero_sub]
      exact (f i).neg_mem hri
    · rw [← hrs, add_sub_cancel']
      exact hsj
  classical
    have : ∃ g : ι → R, (∀ j, g j - 1 ∈ f i) ∧ ∀ j ∈ s, j ≠ i → g j ∈ f j := by
      choose g hg1 hg2 using this
      refine' ⟨fun j => if H : j ∈ s ∧ j ≠ i then g j H.1 H.2 else 1, fun j => _, fun j => _⟩
      · dsimp only
        split_ifs with h
        · apply hg1
        rw [sub_self]
        exact (f i).zero_mem
      · intro hjs hji
        dsimp only
        rw [dif_pos]
        · apply hg2
        exact ⟨hjs, hji⟩
    rcases this with ⟨g, hgi, hgj⟩
    use ∏ x in s.erase i, g x
    constructor
    · rw [← Ideal.Quotient.mk_eq_mk_iff_sub_mem, map_one, map_prod]
      apply Finset.prod_eq_one
      intros
      rw [← RingHom.map_one, Ideal.Quotient.mk_eq_mk_iff_sub_mem]
      apply hgi
    · intro j hjs hji
      rw [← Quotient.eq_zero_iff_mem, map_prod]
      refine' Finset.prod_eq_zero (Finset.mem_erase_of_ne_of_mem hji hjs) _
      rw [Quotient.eq_zero_iff_mem]
      exact hgj j hjs hji
#align ideal.exists_sub_one_mem_and_mem Ideal.exists_sub_one_mem_and_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `619506e8ca5f79eb54d81c4542f7c92587cc90c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
