# mergeSort_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0522f499-b0b6-af4b-1bf6-4f1dbc50902b",
  "kind": "theorem",
  "lexical_name": "mergeSort_cons",
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
  "slug": "mergesort-cons--488ce7050f60f3ae1d78882c",
  "source": {
    "blob": "6ae38e54bd2327f75d0c0965004f99f49600065d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 377,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488ce7050f60f3ae1d78882ce61e1f366f4aba8d4903305ab4879876f931f737",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0522f499-b0b6-af4b-1bf6-4f1dbc50902b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mergeSort_cons {le : α → α → Bool}
    (trans : ∀ (a b c : α), le a b → le b c → le a c)
    (total : ∀ (a b : α), le a b || le b a)
    (a : α) (l : List α) :
    ∃ l₁ l₂, mergeSort (a :: l) le = l₁ ++ a :: l₂ ∧ mergeSort l le = l₁ ++ l₂ ∧
      ∀ b, b ∈ l₁ → !le a b := by
  rw [← mergeSort_zipIdx]
  rw [zipIdx_cons]
  have nd : Nodup ((a :: l).zipIdx.map (·.2)) := by rw [zipIdx_map_snd]; exact nodup_range' _
  have m₁ : (a, 0) ∈ mergeSort ((a :: l).zipIdx) (zipIdxLE le) :=
    mem_mergeSort.mpr mem_cons_self
  obtain ⟨l₁, l₂, h⟩ := append_of_mem m₁
  have s := pairwise_mergeSort (zipIdxLE_trans trans) (zipIdxLE_total total) ((a :: l).zipIdx)
  rw [h] at s
  have p := mergeSort_perm ((a :: l).zipIdx) (zipIdxLE le)
  rw [h] at p
  refine ⟨l₁.map (·.1), l₂.map (·.1), ?_, ?_, ?_⟩
  · simpa using congrArg (·.map (·.1)) h
  · rw [← mergeSort_zipIdx.go 1, ← map_append]
    congr 1
    have q : mergeSort (l.zipIdx 1) (zipIdxLE le) ~ l₁ ++ l₂ :=
      (mergeSort_perm (l.zipIdx 1) (zipIdxLE le)).trans
        (p.symm.trans perm_middle).cons_inv
    apply Perm.eq_of_pairwise (le := zipIdxLE le)
    · rintro ⟨a, i⟩ ⟨b, j⟩ ha hb
      simp only [mem_mergeSort] at ha
      simp only [← q.mem_iff, mem_mergeSort] at hb
      simp only [zipIdxLE]
      simp only [Bool.if_false_right, Bool.and_eq_true, Prod.mk.injEq, and_imp]
      intro ab h ba h'
      simp only [Bool.decide_eq_true] at ba
      replace h : i ≤ j := by simpa [ab, ba] using h
      replace h' : j ≤ i := by simpa [ab, ba] using h'
      cases Nat.le_antisymm h h'
      constructor
      · have := mem_zipIdx ha
        have := mem_zipIdx hb
        simp_all
      · rfl
    · exact pairwise_mergeSort (zipIdxLE_trans trans) (zipIdxLE_total total) ..
    · exact s.sublist ((sublist_cons_self (a, 0) l₂).append_left l₁)
    · exact q
  · intro b m
    simp only [mem_map, Prod.exists] at m
    obtain ⟨j, _, m, rfl⟩ := m
    replace p := p.map (·.2)
    have nd' := nd.perm p.symm
    rw [map_append] at nd'
    have j0 := nd'.rel_of_mem_append
      (mem_map_of_mem m) (mem_map_of_mem mem_cons_self)
    simp only [ne_eq] at j0
    have r := s.rel_of_mem_append m mem_cons_self
    simp_all [zipIdxLE]

/--
Another statement of stability of merge sort.
If `c` is a sorted sublist of `l`,
then `c` is still a sublist of `mergeSort le l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ae38e54bd2327f75d0c0965004f99f49600065d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
