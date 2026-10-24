# paper_eq3_eq5_off_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60f98f76ca23c341bb414c078924844019b84c61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:981c9a34-692d-95d3-b5ad-143c3f79b8a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72065a43-248c-7431-44ae-f4c6ea4d4192",
  "kind": "theorem",
  "lexical_name": "paper_eq3_eq5_off_diag",
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
  "slug": "paper-eq3-eq5-off-diag--09e9fc235bbb5d638a533126",
  "source": {
    "blob": "60f98f76ca23c341bb414c078924844019b84c61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 235,
    "path": "GRWTSK/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09e9fc235bbb5d638a53312698c921bfdcdd5da432e48a26e9f6c43a57c79672",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72065a43-248c-7431-44ae-f4c6ea4d4192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paper_eq3_eq5_off_diag (i j : Fin n) :
    ∑ k ∈ Finset.Ioi i, ∑ α ∈ S p i, bminor A i k α * A k j =
      ∑ α' ∈ S (p + 1) i, ∑ t : Fin (p + 1), bminor A i (α' t) (t.removeNth α') * A (α' t) j := by
  rw [Finset.sum_comm, ← Finset.sum_product', ← Finset.sum_product']
  -- The right-hand summand is the left-hand summand composed with the deletion map
  --
  --   d (α, t) := (t.removeNth α, α t).
  --
  -- This map is injective, and every left-hand summand outside its image is zero,
  -- so `sum_of_injOn` applies.
  symm
  refine Finset.sum_of_injOn (fun ⟨α, k⟩ ↦ ⟨k.removeNth α, α k⟩) ?_ ?_ ?_ ?_
  · simp only [Set.InjOn, Finset.coe_product, Finset.coe_univ, Set.mem_prod, Set.mem_univ,
      and_true, Finset.mem_coe, Prod.mk.injEq, and_imp, Prod.forall, mem_S_iff, Fin.strictMono_cons]
    intros α k hi hiα α' k' hj hiα' hremove hvalue
    suffices hrange : Set.range α = Set.range α' by
      rw [hiα.range_inj_of_wellFoundedLT hiα'] at hrange
      subst α'
      exact ⟨rfl, hiα.injective hvalue⟩
    calc
      _ = Set.insert (α k) (Set.range (k.removeNth α)) := by
        rw [← Fin.range_insertNth, Fin.insertNth_self_removeNth]
      _ = Set.insert (α' k') (Set.range (k'.removeNth α')) := by
        rw [hvalue, hremove]
      _ = Set.range α' := by
        rw [← Fin.range_insertNth, Fin.insertNth_self_removeNth]
  · rintro ⟨α, t⟩ hα
    simp only [Finset.coe_product, Finset.coe_univ, Set.mem_prod, Set.mem_univ, and_true,
      Finset.mem_coe, Finset.coe_Ioi, Set.mem_Ioi, mem_S_iff, Fin.strictMono_cons] at hα ⊢
    obtain ⟨hbound, hmono⟩ := hα
    exact ⟨⟨fun q => hbound (t.succAbove q), hmono.removeNth t⟩, hbound t⟩
  · rintro ⟨α, k⟩ htarget hnotmem
    simp only [Finset.mem_product, Finset.mem_Ioi] at htarget
    obtain ⟨hα, hk⟩ := htarget
    by_cases hoccurs : k ∈ Set.range α
    · -- The border column `k` is repeated among the columns indexed by `α` and
      -- so the bordered minor is 0.
      rw [bminor_eq_zero_of_mem_range A α i hoccurs, zero_mul]
    · contrapose hnotmem
      obtain ⟨t, ht⟩ := exists_insertNth_mem_S hα hk hoccurs
      exact ⟨(t.insertNth k α, t), by simpa, by simp⟩
  · simp

/-! ## Bird's Equation (1) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f98f76ca23c341bb414c078924844019b84c61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
