# exists_subalgebra_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99f93c3d-c6a5-5740-0e8d-c08f347a1dec",
  "kind": "theorem",
  "lexical_name": "exists_subalgebra_of_fg",
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
  "slug": "exists-subalgebra-of-fg--39a30c62e0dde8a71636af8b",
  "source": {
    "blob": "495bef128361bfcb079e92edb9efe2e4706195b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 95,
    "path": "GRWTSK/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39a30c62e0dde8a71636af8bb03aec05dfaf0a8949721478cd765b3ef3c1fb22",
  "verification": {
    "reference": "docs/verification/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99f93c3d-c6a5-5740-0e8d-c08f347a1dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_subalgebra_of_fg (hAC : (⊤ : Subalgebra A C).FG) (hBC : (⊤ : Submodule B C).FG) :
    ∃ B₀ : Subalgebra A B, B₀.FG ∧ (⊤ : Submodule B₀ C).FG := by
  obtain ⟨x, hx⟩ := hAC
  obtain ⟨y, hy⟩ := hBC
  have := hy
  simp_rw [eq_top_iff', mem_span_finset] at this
  choose f _ hf using this
  classical
  let s : Finset B := Finset.image₂ f (x ∪ y * y) y
  have hxy :
    ∀ xi ∈ x, xi ∈ span (Algebra.adjoin A (↑s : Set B)) (↑(insert 1 y : Finset C) : Set C) :=
    fun xi hxi =>
    hf xi ▸
      sum_mem fun yj hyj =>
        smul_mem (span (Algebra.adjoin A (↑s : Set B)) (↑(insert 1 y : Finset C) : Set C))
          ⟨f xi yj, Algebra.subset_adjoin <| mem_image₂_of_mem (mem_union_left _ hxi) hyj⟩
          (subset_span <| mem_insert_of_mem hyj)
  have hyy :
    span (Algebra.adjoin A (↑s : Set B)) (↑(insert 1 y : Finset C) : Set C) *
        span (Algebra.adjoin A (↑s : Set B)) (↑(insert 1 y : Finset C) : Set C) ≤
      span (Algebra.adjoin A (↑s : Set B)) (↑(insert 1 y : Finset C) : Set C) := by
    rw [span_mul_span, span_le, coe_insert]
    rintro _ ⟨yi, rfl | hyi, yj, rfl | hyj, rfl⟩ <;> dsimp
    · rw [mul_one]
      exact subset_span (Set.mem_insert _ _)
    · rw [one_mul]
      exact subset_span (Set.mem_insert_of_mem _ hyj)
    · rw [mul_one]
      exact subset_span (Set.mem_insert_of_mem _ hyi)
    · rw [← hf (yi * yj)]
      exact
        SetLike.mem_coe.2
          (sum_mem fun yk hyk =>
            smul_mem (span (Algebra.adjoin A (↑s : Set B)) (insert 1 ↑y : Set C))
              ⟨f (yi * yj) yk,
                Algebra.subset_adjoin <|
                  mem_image₂_of_mem (mem_union_right _ <| mul_mem_mul hyi hyj) hyk⟩
              (subset_span <| Set.mem_insert_of_mem _ hyk : yk ∈ _))
  refine ⟨Algebra.adjoin A (↑s : Set B), Subalgebra.fg_adjoin_finset _, insert 1 y, ?_⟩
  convert restrictScalars_injective A (Algebra.adjoin A (s : Set B)) C _
  rw [restrictScalars_top, eq_top_iff, ← Algebra.top_toSubmodule, ← hx, Algebra.adjoin_eq_span,
    span_le]
  refine fun r hr =>
    Submonoid.closure_induction (fun c hc => hxy c hc) (subset_span <| mem_insert_self _ _)
      (fun p q _ _ hp hq => hyy <| Submodule.mul_mem_mul hp hq) hr

end Semiring

section Ring

variable [CommRing A] [CommRing B] [CommRing C]
variable [Algebra A B] [Algebra B C] [Algebra A C] [IsScalarTower A B C]

/-- **Artin--Tate lemma**: if A ⊆ B ⊆ C is a chain of subrings of commutative rings, and
A is noetherian, and C is algebra-finite over A, and C is module-finite over B,
then B is algebra-finite over A.

References: Atiyah--Macdonald Proposition 7.8; Altman--Kleiman 16.17. -/
@[stacks 00IS]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `495bef128361bfcb079e92edb9efe2e4706195b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
