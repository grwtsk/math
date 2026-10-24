# exists_mem_doublyStochastic_eq_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13ae47ed2f9920fbbea178c36e9ba01803c8a78e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6abe3fef-43f7-b180-e058-fa8e8673004c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8525785c-1185-d964-c616-326b5b6fded2",
  "kind": "lemma",
  "lexical_name": "exists_mem_doublyStochastic_eq_smul_iff",
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
  "slug": "exists-mem-doublystochastic-eq-smul-iff--50c1da8d89b81537e569c45a",
  "source": {
    "blob": "13ae47ed2f9920fbbea178c36e9ba01803c8a78e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 118,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variant3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c1da8d89b81537e569c45a099ada1f226ab2e15adacb2f1a774d4fdb799b63",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/DoublyStochastic/Variant3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8525785c-1185-d964-c616-326b5b6fded2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mem_doublyStochastic_eq_smul_iff {M : Matrix n n R} {s : R} (hs : 0 ≤ s) :
    (∃ M' ∈ doublyStochastic R n, M = s • M') ↔
      (∀ i j, 0 ≤ M i j) ∧ (∀ i, ∑ j, M i j = s) ∧ (∀ j, ∑ i, M i j = s) := by
  classical
  constructor
  case mp =>
    rintro ⟨M', hM', rfl⟩
    rw [mem_doublyStochastic_iff_sum] at hM'
    simp only [smul_apply, smul_eq_mul, ← mul_sum]
    exact ⟨fun i j => mul_nonneg hs (hM'.1 _ _), by simp [hM']⟩
  rcases eq_or_lt_of_le hs with rfl | hs
  case inl =>
    simp only [zero_smul, exists_and_right, and_imp]
    intro h₁ h₂ _
    refine ⟨⟨1, Submonoid.one_mem _⟩, ?_⟩
    ext i j
    specialize h₂ i
    rw [sum_eq_zero_iff_of_nonneg (by simp [h₁ i])] at h₂
    exact h₂ _ (by simp)
  rintro ⟨hM₁, hM₂, hM₃⟩
  exact ⟨s⁻¹ • M, by simp [mem_doublyStochastic_iff_sum, ← mul_sum, hs.ne', inv_mul_cancel₀, *]⟩

end LinearOrderedSemifield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DoublyStochastic/Variant3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variant3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ae47ed2f9920fbbea178c36e9ba01803c8a78e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
