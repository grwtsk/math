# mul_adjp_apply_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f6835dd606cf2b44811bda03edc4644595df1e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3547ef33-9f49-91b1-0b47-b432deaae87b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1848e2b6-f379-bb3f-03db-aab1e5f0ea54",
  "kind": "theorem",
  "lexical_name": "mul_adjp_apply_ne",
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
  "slug": "mul-adjp-apply-ne--a46d5d83f740bde12148b679",
  "source": {
    "blob": "1f6835dd606cf2b44811bda03edc4644595df1e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46d5d83f740bde12148b679fde9d82bbf961f3385b0ace5447b5690fd58e3f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1848e2b6-f379-bb3f-03db-aab1e5f0ea54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_adjp_apply_ne (h : i ≠ j) : (A * adjp 1 A) i j = (A * adjp (-1) A) i j := by
  simp_rw [mul_apply, adjp_apply, mul_sum, sum_sigma']
  let f : (Σ x : n, Perm n) → (Σ x : n, Perm n) := fun ⟨x, σ⟩ ↦ ⟨σ i, σ * swap i j⟩
  let t s : Finset (Σ x : n, Perm n) := univ.sigma fun x ↦ (ofSign s).filter fun σ ↦ σ j = x
  have hf {s} : ∀ p ∈ t s, f (f p) = p := by
    intro ⟨x, σ⟩ hp
    rw [mem_sigma, mem_filter, mem_ofSign] at hp
    simp_rw [f, Perm.mul_apply, swap_apply_left, hp.2.2, mul_swap_mul_self]
  refine sum_bij' (fun p _ ↦ f p) (fun p _ ↦ f p) ?_ ?_ hf hf ?_
  · intro ⟨x, σ⟩ hp
    rw [mem_sigma, mem_filter, mem_ofSign] at hp ⊢
    rw [Perm.mul_apply, sign_mul, hp.2.1, sign_swap h, swap_apply_right]
    exact ⟨mem_univ (σ i), rfl, rfl⟩
  · intro ⟨x, σ⟩ hp
    rw [mem_sigma, mem_filter, mem_ofSign] at hp ⊢
    rw [Perm.mul_apply, sign_mul, hp.2.1, sign_swap h, swap_apply_right]
    exact ⟨mem_univ (σ i), rfl, rfl⟩
  · intro ⟨x, σ⟩ hp
    rw [mem_sigma, mem_filter, mem_ofSign] at hp
    have key : ({j}ᶜ : Finset n) = disjUnion ({i} : Finset n) ({i, j} : Finset n)ᶜ (by simp) := by
      rw [singleton_disjUnion, cons_eq_insert, compl_insert, insert_erase]
      rwa [mem_compl, mem_singleton]
    simp_rw [key, prod_disjUnion, prod_singleton, f, Perm.mul_apply, swap_apply_left, ← mul_assoc]
    rw [mul_comm (A i x) (A i (σ i)), hp.2.2]
    refine congr_arg _ (prod_congr rfl fun x hx ↦ ?_)
    rw [mem_compl, mem_insert, mem_singleton, not_or] at hx
    rw [swap_apply_of_ne_of_ne hx.1 hx.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f6835dd606cf2b44811bda03edc4644595df1e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
