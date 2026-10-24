# OrthogonalFamily.summable_iff_norm_sq_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3414bb2e-e022-e547-7c8d-fdd73f5bb3cb",
  "kind": "theorem",
  "lexical_name": "OrthogonalFamily.summable_iff_norm_sq_summable",
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
  "slug": "orthogonalfamily-summable-iff-norm-sq-summable--ca92aa8d1ebd2b758c1ffef6",
  "source": {
    "blob": "ec17f29c8bf18588355ece0ea1cd5e21874d6c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca92aa8d1ebd2b758c1ffef67f58fa967ed33350eeed780b73924567467d74c7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3414bb2e-e022-e547-7c8d-fdd73f5bb3cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthogonalFamily.summable_iff_norm_sq_summable [CompleteSpace E] (f : ∀ i, G i) :
    (Summable fun i => V i (f i)) ↔ Summable fun i => ‖f i‖ ^ 2 := by
  classical
    simp only [summable_iff_cauchySeq_finset, NormedAddCommGroup.cauchySeq_iff, norm_neg_add,
      Real.norm_eq_abs]
    constructor
    · intro hf ε hε
      obtain ⟨a, H⟩ := hf _ (sqrt_pos.mpr hε)
      use a
      intro s₁ hs₁ s₂ hs₂
      rw [← Finset.sum_sdiff_sub_sum_sdiff]
      refine (abs_sub _ _).trans_lt ?_
      simp only [sq_nonneg, implies_true, Finset.abs_sum_of_nonneg]
      have : ((∑ i ∈ s₁ \ s₂, ‖f i‖ ^ 2) + ∑ i ∈ s₂ \ s₁, ‖f i‖ ^ 2) < √ε ^ 2 := by
        rw [← hV.norm_sq_sdiff_sum, sq_lt_sq, abs_of_nonneg (sqrt_nonneg _),
          abs_of_nonneg (norm_nonneg _)]
        exact H s₁ hs₁ s₂ hs₂
      have hη := sq_sqrt (le_of_lt hε)
      linarith
    · intro hf ε hε
      have hε' : 0 < ε ^ 2 / 2 := half_pos (sq_pos_of_pos hε)
      obtain ⟨a, H⟩ := hf _ hε'
      use a
      intro s₁ hs₁ s₂ hs₂
      refine (abs_lt_of_sq_lt_sq' ?_ (le_of_lt hε)).2
      have has : a ≤ s₁ ⊓ s₂ := le_inf hs₁ hs₂
      rw [hV.norm_sq_sdiff_sum]
      have Hs₁ : ∑ x ∈ s₁ \ s₂, ‖f x‖ ^ 2 < ε ^ 2 / 2 := by
        convert! H _ hs₁ _ has
        have : s₁ ⊓ s₂ ⊆ s₁ := Finset.inter_subset_left
        simp [← Finset.sum_sdiff this, Finset.abs_sum_of_nonneg]
      have Hs₂ : ∑ x ∈ s₂ \ s₁, ‖f x‖ ^ 2 < ε ^ 2 / 2 := by
        convert! H _ hs₂ _ has
        have : s₁ ⊓ s₂ ⊆ s₂ := Finset.inter_subset_right
        simp [← Finset.sum_sdiff this, Finset.abs_sum_of_nonneg]
      linarith

end

end OrthogonalFamily_Seminormed

section OrthogonalFamily

variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

variable {ι : Type*}

/-- An orthogonal family forms an independent family of subspaces; that is, any collection of
elements each from a different subspace in the family is linearly independent. In particular, the
pairwise intersections of elements of the family are 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant698baa5c6117ae28f6ae38269d9b1aa36cbc855f36b34e2c6e03509aaaeeaa1b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec17f29c8bf18588355ece0ea1cd5e21874d6c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
