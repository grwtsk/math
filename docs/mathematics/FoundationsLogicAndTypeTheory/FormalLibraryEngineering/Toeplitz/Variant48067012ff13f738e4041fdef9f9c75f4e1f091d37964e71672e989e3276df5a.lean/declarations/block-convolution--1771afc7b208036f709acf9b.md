# block_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "deb51776fafd3f5f4f9044be909e298cdfd025a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f223fcd-cc5d-269c-2df4-aea1ffb6a525",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5602daae-5d40-d921-8671-6c4803c62cc6",
  "kind": "theorem",
  "lexical_name": "block_convolution",
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
  "slug": "block-convolution--1771afc7b208036f709acf9b",
  "source": {
    "blob": "deb51776fafd3f5f4f9044be909e298cdfd025a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1771afc7b208036f709acf9b26af0b858d56d229a24f941363cea394a71b42c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5602daae-5d40-d921-8671-6c4803c62cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem block_convolution (a b : ℕ → ℝ) (N : ℕ) :
    block (convolution a b) N = block a N * block b N := by
  ext i j
  rw [Matrix.mul_apply]
  by_cases hij : i.val ≤ j.val
  · have ht : (∑ l : Fin N, block a N i l * block b N l j) =
        ∑ l ∈ (Finset.univ.filter (fun l : Fin N => i.val ≤ l.val ∧ l.val ≤ j.val)),
          block a N i l * block b N l j := by
      symm
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro l _ hl
      have hn : ¬ (i.val ≤ l.val ∧ l.val ≤ j.val) := by simpa using hl
      by_cases h1 : i.val ≤ l.val <;> by_cases h2 : l.val ≤ j.val <;>
        simp_all [block, entry]
    rw [ht]
    simp only [block, entry, if_pos hij, convolution]
    symm
    apply Finset.sum_bij (fun l hl =>
      (⟨l.val - i.val, by
        have hh := (Finset.mem_filter.mp hl).2
        omega⟩ : Fin (j.val - i.val + 1)))
    · intro l hl
      exact Finset.mem_univ _
    · intro l hl m hm he
      have hli := (Finset.mem_filter.mp hl).2.1
      have hmi := (Finset.mem_filter.mp hm).2.1
      apply Fin.ext
      have hv := congrArg Fin.val he
      dsimp at hv
      omega
    · intro t _
      let l : Fin N := ⟨i.val + t.val, by have ht := t.isLt; have hj := j.isLt; omega⟩
      refine ⟨l, ?_, ?_⟩
      · simp only [Finset.mem_filter, Finset.mem_univ, true_and]
        dsimp [l]
        have ht := t.isLt
        omega
      · apply Fin.ext
        dsimp [l]
        omega
    · intro l hl
      have hh := (Finset.mem_filter.mp hl).2
      simp only [if_pos hh.1, if_pos hh.2]
      congr 1
      congr 1
      omega
  · change (if i.val ≤ j.val then convolution a b (j.val - i.val) else 0) = _
    rw [if_neg hij]
    symm
    apply Finset.sum_eq_zero
    intro l _
    by_cases h1 : i.val ≤ l.val
    · have h2 : ¬ l.val ≤ j.val := fun h2 => hij (h1.trans h2)
      simp only [block, entry, if_neg h2, mul_zero]
    · simp only [block, entry, if_neg h1, zero_mul]

/-- Bounded-order PF is closed under finite coefficient convolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toeplitz/Variant48067012ff13f738e4041fdef9f9c75f4e1f091d37964e71672e989e3276df5a.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deb51776fafd3f5f4f9044be909e298cdfd025a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
