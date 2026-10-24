# subset_union_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7684aefe-8c42-c451-d255-9fe812bacb48",
  "kind": "theorem",
  "lexical_name": "subset_union_prime",
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
  "slug": "subset-union-prime--384de15c2ce70b6a402775a6",
  "source": {
    "blob": "98cf31c4dc554e040119c5fea8ecfb3a37c2f9c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1129,
    "line": 1072,
    "path": "GRWTSK/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:384de15c2ce70b6a402775a693c535dd1ff63596f64cf5b00ff7731faada6760",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7684aefe-8c42-c451-d255-9fe812bacb48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1072–1129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_union_prime {R : Type u} [CommRing R] {s : Finset ι} {f : ι → Ideal R} (a b : ι)
    (hp : ∀ i ∈ s, i ≠ a → i ≠ b → IsPrime (f i)) {I : Ideal R} :
    ((I : Set R) ⊆ ⋃ i ∈ (↑s : Set ι), f i) ↔ ∃ i ∈ s, I ≤ f i :=
  suffices ((I : Set R) ⊆ ⋃ i ∈ (↑s : Set ι), f i) → ∃ i, i ∈ s ∧ I ≤ f i by
    have aux := fun h => (bex_def.2 <| this h)
    simp_rw [exists_prop] at aux
    refine ⟨aux, fun ⟨i, his, hi⟩ ↦ Set.Subset.trans hi ?_⟩
    apply Set.subset_biUnion_of_mem (show i ∈ (↑s : Set ι) from his)
  fun h : (I : Set R) ⊆ ⋃ i ∈ (↑s : Set ι), f i => by
  classical
    by_cases has : a ∈ s
    · obtain ⟨t, hat, rfl⟩ : ∃ t, a ∉ t ∧ insert a t = s :=
        ⟨s.erase a, Finset.notMem_erase a s, Finset.insert_erase has⟩
      by_cases hbt : b ∈ t
      · obtain ⟨u, hbu, rfl⟩ : ∃ u, b ∉ u ∧ insert b u = t :=
          ⟨t.erase b, Finset.notMem_erase b t, Finset.insert_erase hbt⟩
        have hp' : ∀ i ∈ u, IsPrime (f i) := by
          intro i hiu
          refine hp i (Finset.mem_insert_of_mem (Finset.mem_insert_of_mem hiu)) ?_ ?_ <;>
              rintro rfl <;>
            solve_by_elim only [Finset.mem_insert_of_mem, *]
        rw [Finset.coe_insert, Finset.coe_insert, Set.biUnion_insert, Set.biUnion_insert, ←
          Set.union_assoc, subset_union_prime' hp'] at h
        rwa [Finset.exists_mem_insert, Finset.exists_mem_insert]
      · have hp' : ∀ j ∈ t, IsPrime (f j) := by
          intro j hj
          refine hp j (Finset.mem_insert_of_mem hj) ?_ ?_ <;> rintro rfl <;>
            solve_by_elim only [Finset.mem_insert_of_mem, *]
        rw [Finset.coe_insert, Set.biUnion_insert, ← Set.union_self (f a : Set R),
          subset_union_prime' hp', ← or_assoc, or_self_iff] at h
        rwa [Finset.exists_mem_insert]
    · by_cases hbs : b ∈ s
      · obtain ⟨t, hbt, rfl⟩ : ∃ t, b ∉ t ∧ insert b t = s :=
          ⟨s.erase b, Finset.notMem_erase b s, Finset.insert_erase hbs⟩
        have hp' : ∀ j ∈ t, IsPrime (f j) := by
          intro j hj
          refine hp j (Finset.mem_insert_of_mem hj) ?_ ?_ <;> rintro rfl <;>
            solve_by_elim only [Finset.mem_insert_of_mem, *]
        rw [Finset.coe_insert, Set.biUnion_insert, ← Set.union_self (f b : Set R),
          subset_union_prime' hp', ← or_assoc, or_self_iff] at h
        rwa [Finset.exists_mem_insert]
      rcases s.eq_empty_or_nonempty with hse | hsne
      · subst hse
        rw [Finset.coe_empty, Set.biUnion_empty, Set.subset_empty_iff] at h
        have : (I : Set R) ≠ ∅ := Set.Nonempty.ne_empty (Set.nonempty_of_mem I.zero_mem)
        exact absurd h this
      · obtain ⟨i, his⟩ := hsne
        obtain ⟨t, _, rfl⟩ : ∃ t, i ∉ t ∧ insert i t = s :=
          ⟨s.erase i, Finset.notMem_erase i s, Finset.insert_erase his⟩
        have hp' : ∀ j ∈ t, IsPrime (f j) := by
          intro j hj
          refine hp j (Finset.mem_insert_of_mem hj) ?_ ?_ <;> rintro rfl <;>
            solve_by_elim only [Finset.mem_insert_of_mem, *]
        rw [Finset.coe_insert, Set.biUnion_insert, ← Set.union_self (f i : Set R),
          subset_union_prime' hp', ← or_assoc, or_self_iff] at h
        rwa [Finset.exists_mem_insert]

/-- Another version of prime avoidance using `Set.Finite` instead of `Finset`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant57f98a1c8229224f08f6f4918c92d5e7fea1f650d3794e228366652790677d0f.lean#L1072).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98cf31c4dc554e040119c5fea8ecfb3a37c2f9c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
