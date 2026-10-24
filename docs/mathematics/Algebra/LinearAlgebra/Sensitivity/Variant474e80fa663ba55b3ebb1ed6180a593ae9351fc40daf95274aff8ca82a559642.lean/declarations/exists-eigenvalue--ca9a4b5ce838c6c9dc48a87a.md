# exists_eigenvalue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d177afc506c6c8876a9bec99dbb44972619eda1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20bd859e-e287-eff9-6fee-ce22f363de7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1975de4-6165-1989-36dc-08407947f5d6",
  "kind": "theorem",
  "lexical_name": "exists_eigenvalue",
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
  "slug": "exists-eigenvalue--ca9a4b5ce838c6c9dc48a87a",
  "source": {
    "blob": "8d177afc506c6c8876a9bec99dbb44972619eda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 377,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca9a4b5ce838c6c9dc48a87a05397b66d82c775f6d32e965b92780ff5b1a4737",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variant474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1975de4-6165-1989-36dc-08407947f5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eigenvalue (H : Set (Q m.succ)) (hH : Card H ≥ 2 ^ m + 1) :
    ∃ y ∈ Span (e '' H) ⊓ range (g m), y ≠ 0 := by
  let W := Span (e '' H)
  let img := range (g m)
  suffices 0 < dim (W ⊓ img) by
    exact mod_cast exists_mem_ne_zero_of_rank_pos this
  have dim_le : dim (W ⊔ img) ≤ 2 ^ (m + 1 : Cardinal) := by
    convert! ← Submodule.rank_le (W ⊔ img)
    rw [← Nat.cast_succ]
    apply dim_V
  have dim_add : dim (W ⊔ img) + dim (W ⊓ img) = dim W + 2 ^ m := by
    convert! ← Submodule.rank_sup_add_rank_inf_eq W img
    rw [rank_range_of_injective (g m) g_injective]
    apply dim_V
  have dimW : dim W = card H := by
    have li : LinearIndependent ℝ (H.domRestrict e) := by
      convert! (dualBases_e_ε m.succ).basis.linearIndependent.comp _ Subtype.val_injective
      rw [(dualBases_e_ε _).coe_basis]
      rfl
    have hdW := rank_span li
    rw [Set.range_domRestrict] at hdW
    convert! hdW
    rw [← (dualBases_e_ε _).coe_basis, Cardinal.mk_image_eq (dualBases_e_ε _).basis.injective,
      Cardinal.mk_fintype]
  rw [← finrank_eq_rank ℝ] at dim_le dim_add dimW ⊢
  rw [← finrank_eq_rank ℝ, ← finrank_eq_rank ℝ] at dim_add
  norm_cast at dim_le dim_add dimW ⊢
  rw [pow_succ'] at dim_le
  rw [Set.toFinset_card] at hH
  linarith

open scoped Classical in
/-- **Huang sensitivity theorem** also known as the **Huang degree theorem** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variant474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d177afc506c6c8876a9bec99dbb44972619eda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
