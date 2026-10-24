# union_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ee2149c-557d-c33a-36c7-62a7b9065114",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26c5a664-1cfe-6c45-8993-1d7ea1cb3757",
  "kind": "theorem",
  "lexical_name": "union_right",
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
  "slug": "union-right--a1a552c56c7059bdedb9da26",
  "source": {
    "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a552c56c7059bdedb9da2648acd97b6ac4c720f577e0dcf034f8b2e6392ba9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26c5a664-1cfe-6c45-8993-1d7ea1cb3757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_right [h : IsCyclotomicExtension (S ∪ T) A B] :
    IsCyclotomicExtension T (adjoin A {b : B | ∃ a : ℕ+, a ∈ S ∧ b ^ (a : ℕ) = 1}) B := by
  have : {b : B | ∃ n : ℕ+, n ∈ S ∪ T ∧ b ^ (n : ℕ) = 1} =
      {b : B | ∃ n : ℕ+, n ∈ S ∧ b ^ (n : ℕ) = 1} ∪
        {b : B | ∃ n : ℕ+, n ∈ T ∧ b ^ (n : ℕ) = 1} := by
    refine' le_antisymm _ _
    · rintro x ⟨n, hn₁ | hn₂, hnpow⟩
      · left; exact ⟨n, hn₁, hnpow⟩
      · right; exact ⟨n, hn₂, hnpow⟩
    · rintro x (⟨n, hn⟩ | ⟨n, hn⟩)
      · exact ⟨n, Or.inl hn.1, hn.2⟩
      · exact ⟨n, Or.inr hn.1, hn.2⟩
  refine' ⟨fun hn => ((IsCyclotomicExtension_iff _ A _).1 h).1 (mem_union_right S hn), fun b => _⟩
  replace h := ((IsCyclotomicExtension_iff _ _ _).1 h).2 b
  rwa [this, adjoin_union_eq_adjoin_adjoin, Subalgebra.mem_restrictScalars] at h
#align is_cyclotomic_extension.union_right IsCyclotomicExtension.union_right

/-- If `B` is a cyclotomic extension of `A` given by roots of unity of order in `T` and `S ⊆ T`,
then `adjoin A { b : B | ∃ a : ℕ+, a ∈ S ∧ b ^ (a : ℕ) = 1 }` is a cyclotomic extension of `B`
given by roots of unity of order in `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785a5fef31b7119321077f221c4b335f05f447e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
