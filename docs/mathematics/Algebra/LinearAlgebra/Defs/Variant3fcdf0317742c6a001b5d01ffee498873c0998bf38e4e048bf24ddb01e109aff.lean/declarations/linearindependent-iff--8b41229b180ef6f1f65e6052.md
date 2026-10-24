# linearIndependent_iffₒₛ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 590,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d49a6e7a-ee19-447b-5a79-26dec34a9b78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43c7bf21-a46f-3ee5-3381-5fd4f7e9ae1e",
  "kind": "theorem",
  "lexical_name": "linearIndependent_iffₒₛ",
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
  "slug": "linearindependent-iff--8b41229b180ef6f1f65e6052",
  "source": {
    "blob": "d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 590,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b41229b180ef6f1f65e605294b8b04ea43d80abe4bebd5cbc4e5164d9bdae32",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43c7bf21-a46f-3ee5-3381-5fd4f7e9ae1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_iffₒₛ :
    LinearIndependent R v ↔
      ∀ (s t : Finset ι) (f : ι → R), Disjoint s t →
        ∑ i ∈ s, f i • v i = ∑ i ∈ t, f i • v i → (∀ i ∈ s, f i = 0) ∧ ∀ i ∈ t, f i = 0 := by
  classical
  let : Sub R := CanonicallyOrderedAdd.toSub
  have : OrderedSub R := CanonicallyOrderedAdd.toOrderedSub
  rw [linearIndependent_iff'ₛ]
  refine ⟨fun h s t f hst heq => ?_, fun h s f g heq => ?_⟩
  · specialize h (s ∪ t) (fun i => if i ∈ s then f i else 0) (fun i => if i ∈ t then f i else 0) ?_
    · simpa
    refine ⟨fun i hi => ?_, fun i hi => ?_⟩
    · simpa [hi, hst.notMem_of_mem_left_finset hi] using h i (Finset.mem_union_left _ hi)
    · simpa [hi, hst.notMem_of_mem_right_finset hi] using (h i (Finset.mem_union_right _ hi)).symm
  · specialize h { i ∈ s | g i ≤ f i } { i ∈ s | f i < g i }
      (fun i => if g i ≤ f i then f i - g i else g i - f i) ?_ ?_
    · simp_rw [Finset.disjoint_left, Finset.mem_filter]
      exact fun i ⟨_, hi⟩ ⟨_, hi'⟩ => hi.not_gt hi'
    · rw [← add_right_cancel_iff
        (a := ∑ i ∈ s with g i ≤ f i, g i • v i + ∑ i ∈ s with f i < g i, f i • v i)]
      conv_lhs => rw [← add_assoc, ← Finset.sum_add_distrib]
      conv_rhs => rw [add_left_comm, ← Finset.sum_add_distrib]
      convert! heq
        <;> simp_rw [← Finset.sum_filter_add_sum_filter_not s (fun i => g i ≤ f i), not_le]
        <;> congr! 2 with i hi
        <;> simp only [Finset.mem_filter] at hi
      · simp [hi.2, ← add_smul, tsub_add_cancel_of_le hi.2]
      · simp [hi.2.not_ge, ← add_smul, tsub_add_cancel_of_le hi.2.le]
    simp only [Finset.mem_filter] at h
    intro i hi
    by_cases hi' : g i ≤ f i
    · apply hi'.antisymm'
      simpa [hi', tsub_eq_zero_iff_le] using h.1 i ⟨hi, hi'⟩
    · apply (not_le.1 hi').le.antisymm
      simpa [hi', tsub_eq_zero_iff_le] using h.2 i ⟨hi, not_le.1 hi'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
