# OrthogonalFamily.summable_iff_norm_sq_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6bb8e59ba6929738bdb13de5934cd78d0636b2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbc66e98-9351-1159-a7ff-76342ac0dfa5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd6558c4-2205-5843-622f-59215e986b5d",
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
  "slug": "orthogonalfamily-summable-iff-norm-sq-summable--7385e3d9661a3a44e964899a",
  "source": {
    "blob": "c6bb8e59ba6929738bdb13de5934cd78d0636b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2150,
    "line": 2105,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7385e3d9661a3a44e964899a56256506a090034c80646b576c2e509aa09ab72b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6558c4-2205-5843-622f-59215e986b5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2105–2150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrthogonalFamily.summable_iff_norm_sq_summable [CompleteSpace E] (f : ∀ i, G i) :
    (Summable fun i => V i (f i)) ↔ Summable fun i => ‖f i‖ ^ 2 := by
  classical
    clear dec_ι
    simp only [summable_iff_cauchySeq_finset, NormedAddCommGroup.cauchySeq_iff, Real.norm_eq_abs]
    constructor
    · intro hf ε hε
      obtain ⟨a, H⟩ := hf _ (sqrt_pos.mpr hε)
      use a
      intro s₁ hs₁ s₂ hs₂
      rw [← Finset.sum_sdiff_sub_sum_sdiff]
      refine' (abs_sub _ _).trans_lt _
      have : ∀ i, 0 ≤ ‖f i‖ ^ 2 := fun i : ι => sq_nonneg _
      simp only [Finset.abs_sum_of_nonneg' this]
      have : ((∑ i in s₁ \ s₂, ‖f i‖ ^ 2) + ∑ i in s₂ \ s₁, ‖f i‖ ^ 2) < sqrt ε ^ 2 := by
        rw [← hV.norm_sq_diff_sum, sq_lt_sq, abs_of_nonneg (sqrt_nonneg _),
          abs_of_nonneg (norm_nonneg _)]
        exact H s₁ hs₁ s₂ hs₂
      have hη := sq_sqrt (le_of_lt hε)
      linarith
    · intro hf ε hε
      have hε' : 0 < ε ^ 2 / 2 := half_pos (sq_pos_of_pos hε)
      obtain ⟨a, H⟩ := hf _ hε'
      use a
      intro s₁ hs₁ s₂ hs₂
      refine' (abs_lt_of_sq_lt_sq' _ (le_of_lt hε)).2
      have has : a ≤ s₁ ⊓ s₂ := le_inf hs₁ hs₂
      rw [hV.norm_sq_diff_sum]
      have Hs₁ : ∑ x : ι in s₁ \ s₂, ‖f x‖ ^ 2 < ε ^ 2 / 2 := by
        convert H _ hs₁ _ has
        have : s₁ ⊓ s₂ ⊆ s₁ := Finset.inter_subset_left _ _
        rw [← Finset.sum_sdiff this, add_tsub_cancel_right, Finset.abs_sum_of_nonneg']
        · simp
        · exact fun i => sq_nonneg _
      have Hs₂ : ∑ x : ι in s₂ \ s₁, ‖f x‖ ^ 2 < ε ^ 2 / 2 := by
        convert H _ hs₂ _ has
        have : s₁ ⊓ s₂ ⊆ s₂ := Finset.inter_subset_right _ _
        rw [← Finset.sum_sdiff this, add_tsub_cancel_right, Finset.abs_sum_of_nonneg']
        · simp
        · exact fun i => sq_nonneg _
      linarith
#align orthogonal_family.summable_iff_norm_sq_summable OrthogonalFamily.summable_iff_norm_sq_summable

/-- An orthogonal family forms an independent family of subspaces; that is, any collection of
elements each from a different subspace in the family is linearly independent. In particular, the
pairwise intersections of elements of the family are 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean#L2105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6bb8e59ba6929738bdb13de5934cd78d0636b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
