# exists_mem_exists_mem_inf'_card_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71c5c72130fccb832a2b429099aefe2e48bd4067",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d48edf9-033c-c77a-ba2a-2122a766d788",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f525e01d-a64d-493e-aaad-40b5a3367331",
  "kind": "lemma",
  "lexical_name": "exists_mem_exists_mem_inf'_card_lt",
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
  "slug": "exists-mem-exists-mem-inf-card-lt--84f20e68c1fb5df0cf56604b",
  "source": {
    "blob": "71c5c72130fccb832a2b429099aefe2e48bd4067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 306,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84f20e68c1fb5df0cf56604b9c778bbcf9f0a0ab4434ac48e2be30e70def2133",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f525e01d-a64d-493e-aaad-40b5a3367331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mem_exists_mem_inf'_card_lt [DecidableEq α] [Fintype α] {f : α → Finset β}
    (h₁ : s.Nonempty) (h₂ : ∀ j ∈ s, 0 < #(f j)) (h₃ : #(s.biUnion f) < #s) :
    ∃ a ∈ s, ∃ x ∈ f a, (s.inf' h₁ fun j ↦ #(f j)) < #{j | j ∈ s ∧ x ∈ f j} := by
  set k := s.inf' h₁ (fun j ↦ #(f j)) with hk
  contrapose! h₃
  suffices #s • k ≤ #(s.biUnion f) • k by simp_all
  simp only [← Finset.sum_const]
  calc ∑ j ∈ s, k
    _ ≤ ∑ j ∈ s, #(f j) := by gcongr with i hi; exact inf'_le _ hi
    _ = ∑ x ∈ s.biUnion f, #{j | j ∈ s ∧ x ∈ f j} := by rw [sum_card_eq_sum_biUnion_card]
    _ ≤ ∑ x ∈ s.biUnion f, k := by gcongr; grind

end Finset

namespace Fintype

open Finset

variable [Fintype α] [Fintype β] (f : α → β) {w : α → M} {b : M} {n : ℕ}

section

variable [AddCommMonoid M] [LinearOrder M] [IsOrderedCancelAddMonoid M]

/-!
### The pigeonhole principles on `Fintypes`s, pigeons counted by weight

In this section we specialize theorems from the previous section to the special case of functions
between `Fintype`s and `s = univ`, `t = univ`. In this case the assumption `∀ x ∈ s, f x ∈ t` always
holds, so we have four theorems instead of eight. -/


/-- The pigeonhole principle for finitely many pigeons of different weights, strict inequality
version: there is a pigeonhole with the total weight of pigeons in it greater than `b` provided that
the total number of pigeonholes times `b` is less than the total weight of all pigeons. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c5c72130fccb832a2b429099aefe2e48bd4067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
