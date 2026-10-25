# mul_adjp_apply_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bc0657a-8a0a-f219-943a-2212e7e2e260",
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
  "slug": "mul-adjp-apply-ne--421b01c7adfe7d25aa41c435",
  "source": {
    "blob": "61b824c91466c5f13157ca4937174082ea059d4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:421b01c7adfe7d25aa41c435118653a25568bf4cf2961a0adc1d3028e53ed1a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bc0657a-8a0a-f219-943a-2212e7e2e260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–138.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b824c91466c5f13157ca4937174082ea059d4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
