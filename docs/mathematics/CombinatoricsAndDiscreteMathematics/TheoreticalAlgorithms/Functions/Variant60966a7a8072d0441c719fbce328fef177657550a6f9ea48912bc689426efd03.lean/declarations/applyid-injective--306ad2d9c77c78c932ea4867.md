# applyId_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36046a297dc7d6c498c9c3b851fb473f7714c06b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02a64cf1-bbd3-5de2-28d3-a90124ef003b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffa7d1c4-e737-3491-f38c-74a5720fd08f",
  "kind": "theorem",
  "lexical_name": "applyId_injective",
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
  "slug": "applyid-injective--306ad2d9c77c78c932ea4867",
  "source": {
    "blob": "36046a297dc7d6c498c9c3b851fb473f7714c06b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 250,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:306ad2d9c77c78c932ea486737f99276d2e5e02d9c53b1bdc592bdc079224ce3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffa7d1c4-e737-3491-f38c-74a5720fd08f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyId_injective [DecidableEq α] {xs ys : List α} (h₀ : List.Nodup xs) (h₁ : xs ~ ys) :
    Injective.{u + 1, u + 1} (List.applyId (xs.zip ys)) := by
  intro x y h
  by_cases hx : x ∈ xs <;> by_cases hy : y ∈ xs
  · rw [List.mem_iff_getElem?] at hx hy
    obtain ⟨i, hx⟩ := hx
    obtain ⟨j, hy⟩ := hy
    suffices some x = some y by injection this
    have h₂ := h₁.length_eq
    rw [List.applyId_zip_eq h₀ h₂ _ _ _ hx] at h
    rw [← hx, ← hy]; congr
    apply List.getElem?_inj _ (h₁.nodup_iff.1 h₀)
    · symm; rw [h]
      rw [← List.applyId_zip_eq] <;> assumption
    · rw [← h₁.length_eq]
      rw [List.getElem?_eq_some_iff] at hx
      obtain ⟨hx, hx'⟩ := hx
      exact hx
  · rw [← applyId_mem_iff h₀ h₁] at hx hy
    rw [h] at hx
    contradiction
  · rw [← applyId_mem_iff h₀ h₁] at hx hy
    rw [h] at hx
    contradiction
  · rwa [List.applyId_eq_self, List.applyId_eq_self] at h <;> assumption

open TotalFunction (List.toFinmap')

open SampleableExt

/-- Remove a slice of length `m` at index `n` in a list and a permutation, maintaining the property
that it is a permutation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36046a297dc7d6c498c9c3b851fb473f7714c06b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
