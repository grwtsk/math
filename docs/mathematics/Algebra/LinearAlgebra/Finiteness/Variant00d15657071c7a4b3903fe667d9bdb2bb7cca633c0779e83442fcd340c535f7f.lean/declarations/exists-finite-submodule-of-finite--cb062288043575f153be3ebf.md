# exists_finite_submodule_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd8b401c-7e4a-bf8e-0221-12074457e8bc",
  "kind": "theorem",
  "lexical_name": "exists_finite_submodule_of_finite",
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
  "slug": "exists-finite-submodule-of-finite--cb062288043575f153be3ebf",
  "source": {
    "blob": "a1dc3f35a6ea19b87c2c0e27b6e397972290bccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb062288043575f153be3ebf4658e82f158ab59ea33735710e0a9e2b0e033492",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd8b401c-7e4a-bf8e-0221-12074457e8bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finite_submodule_of_finite (s : Set (M ⊗[R] N)) (hs : s.Finite) :
    ∃ (M' : Submodule R M) (N' : Submodule R N), Module.Finite R M' ∧ Module.Finite R N' ∧
      s ⊆ LinearMap.range (mapIncl M' N') := by
  simp_rw [Module.Finite.iff_fg]
  induction s, hs using Set.Finite.induction_on with
  | empty => exact ⟨_, _, fg_bot, fg_bot, Set.empty_subset _⟩
  | @insert a s _ _ ih =>
  obtain ⟨M', N', hM', hN', h⟩ := ih
  refine TensorProduct.induction_on a ?_ (fun x y ↦ ?_) fun x y hx hy ↦ ?_
  · exact ⟨M', N', hM', hN', Set.insert_subset (zero_mem _) h⟩
  · refine ⟨_, _, hM'.sup (fg_span_singleton x),
      hN'.sup (fg_span_singleton y), Set.insert_subset ?_ fun z hz ↦ ?_⟩
    · exact ⟨⟨x, mem_sup_right (mem_span_singleton_self x)⟩ ⊗ₜ
        ⟨y, mem_sup_right (mem_span_singleton_self y)⟩, rfl⟩
    · exact range_mapIncl_mono le_sup_left le_sup_left (h hz)
  · obtain ⟨M₁', N₁', hM₁', hN₁', h₁⟩ := hx
    obtain ⟨M₂', N₂', hM₂', hN₂', h₂⟩ := hy
    refine ⟨_, _, hM₁'.sup hM₂', hN₁'.sup hN₂', Set.insert_subset (add_mem ?_ ?_) fun z hz ↦ ?_⟩
    · exact range_mapIncl_mono le_sup_left le_sup_left (h₁ (Set.mem_insert x s))
    · exact range_mapIncl_mono le_sup_right le_sup_right (h₂ (Set.mem_insert y s))
    · exact range_mapIncl_mono le_sup_left le_sup_left (h₁ (Set.subset_insert x s hz))

/-- For a finite subset `s` of `M ⊗[R] N`, there exists a finitely generated
submodule `M'` of `M`, such that `s` is contained in the image
of `M' ⊗[R] N` in `M ⊗[R] N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1dc3f35a6ea19b87c2c0e27b6e397972290bccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
