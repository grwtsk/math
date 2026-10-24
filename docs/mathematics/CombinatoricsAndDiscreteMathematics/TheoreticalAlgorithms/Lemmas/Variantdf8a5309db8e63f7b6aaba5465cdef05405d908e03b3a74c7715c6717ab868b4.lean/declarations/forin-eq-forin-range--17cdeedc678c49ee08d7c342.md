# forIn'_eq_forIn_range'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "791820c0bb6ccae629967ff9b149721274bdd6a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51fcfd03-2e4d-8811-e1d0-ad2c436e4aeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1be00c0f-6657-5c4b-a9d9-e46ab52cb1d8",
  "kind": "theorem",
  "lexical_name": "forIn'_eq_forIn_range'",
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
  "slug": "forin-eq-forin-range--17cdeedc678c49ee08d7c342",
  "source": {
    "blob": "791820c0bb6ccae629967ff9b149721274bdd6a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17cdeedc678c49ee08d7c34266f30589e2d12c93b71a2fc1b41d92b4fbf83d77",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1be00c0f-6657-5c4b-a9d9-e46ab52cb1d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forIn'_eq_forIn_range' [Monad m] (r : Std.Range)
    (init : β) (f : (a : Nat) → a ∈ r → β → m (ForInStep β)) :
    forIn' r init f =
    forIn
      ((List.range' r.start r.numElems r.step).pmap Subtype.mk fun _ => mem_range'_elems r)
      init (fun ⟨a, h⟩ => f a h) := by
  let ⟨start, stop, step⟩ := r
  let L := List.range' start (numElems ⟨start, stop, step⟩) step
  let f' : { a // start ≤ a ∧ a < stop } → _ := fun ⟨a, h⟩ => f a h
  suffices ∀ H, forIn' [start:stop:step] init f = forIn (L.pmap Subtype.mk H) init f' from this _
  intro H; dsimp only [forIn', Range.forIn']
  if h : start < stop then
    simp [numElems, Nat.not_le.2 h]; split
    · subst step
      suffices ∀ n H init,
          forIn'.loop start stop 0 f n start (Nat.le_refl _) init =
          forIn ((List.range' start n 0).pmap Subtype.mk H) init f' from this _ ..
      intro n; induction n with (intro H init; unfold forIn'.loop; simp [*])
      | succ n ih => simp [ih (List.forall_mem_cons.1 H).2]; rfl
    · next step0 =>
      have hstep := Nat.pos_of_ne_zero step0
      suffices ∀ fuel l i hle H, l ≤ fuel →
          (∀ j, stop ≤ i + step * j ↔ l ≤ j) → ∀ init,
          forIn'.loop start stop step f fuel i hle init =
          List.forIn ((List.range' i l step).pmap Subtype.mk H) init f' by
        refine this _ _ _ _ _
          ((numElems_le_iff hstep).2 (Nat.le_trans ?_ (Nat.le_add_left ..)))
          (fun _ => (numElems_le_iff hstep).symm) _
        conv => lhs; rw [← Nat.one_mul stop]
        exact Nat.mul_le_mul_right stop hstep
      intro fuel; induction fuel with intro l i hle H h1 h2 init
      | zero => simp [forIn'.loop, Nat.le_zero.1 h1]
      | succ fuel ih =>
        cases l with
        | zero => rw [forIn'.loop]; simp [Nat.not_lt.2 <| by simpa using (h2 0).2 (Nat.le_refl _)]
        | succ l =>
          have ih := ih _ _ (Nat.le_trans hle (Nat.le_add_right ..))
            (List.forall_mem_cons.1 H).2 (Nat.le_of_succ_le_succ h1) fun i => by
              rw [Nat.add_right_comm, Nat.add_assoc, ← Nat.mul_succ, h2, Nat.succ_le_succ_iff]
          have := h2 0; simp at this
          rw [forIn'.loop]; simp [List.forIn, this, ih]; rfl
  else
    simp [List.range', h, numElems_stop_le_start ⟨start, stop, step⟩ (Nat.not_lt.1 h)]
    cases stop <;> unfold forIn'.loop <;> simp [List.forIn', h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `791820c0bb6ccae629967ff9b149721274bdd6a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
