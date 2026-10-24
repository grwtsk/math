# nodup_permutations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98a80b1b3dc2fe5450987c1541af810adea43ea5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 480,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9aae13cf42b00379d2f390690b5c7a7f9053550479f6ac99d81693e7669985f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d975412-8eb7-2d33-607e-8d16d92c3dd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32dbcbb5-0c4d-f1ee-4209-286bde6318d9",
  "kind": "theorem",
  "lexical_name": "nodup_permutations",
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
  "slug": "nodup-permutations--553304d1574caf0ef1083de1",
  "source": {
    "blob": "98a80b1b3dc2fe5450987c1541af810adea43ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 480,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant9aae13cf42b00379d2f390690b5c7a7f9053550479f6ac99d81693e7669985f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:553304d1574caf0ef1083de183f82211f647804238bb4590518c4b798f24a60d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant9aae13cf42b00379d2f390690b5c7a7f9053550479f6ac99d81693e7669985f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32dbcbb5-0c4d-f1ee-4209-286bde6318d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_permutations (s : List α) (hs : Nodup s) : Nodup s.permutations := by
  rw [(permutations_perm_permutations' s).nodup_iff]
  induction hs with
  | nil => simp
  | @cons x l h h' IH =>
    rw [permutations']
    rw [nodup_flatMap]
    constructor
    · intro ys hy
      rw [mem_permutations'] at hy
      rw [nodup_permutations'Aux_iff, hy.mem_iff]
      exact fun H => h x H rfl
    · refine IH.pairwise_of_forall_ne fun as ha bs hb H => ?_
      rw [Function.onFun, disjoint_iff_ne]
      rintro a ha' b hb' rfl
      obtain ⟨⟨n, hn⟩, hn'⟩ := get_of_mem ha'
      obtain ⟨⟨m, hm⟩, hm'⟩ := get_of_mem hb'
      rw [mem_permutations'] at ha hb
      have hl : as.length = bs.length := (ha.trans hb.symm).length_eq
      simp only [Nat.lt_succ_iff, length_permutations'Aux] at hn hm
      rw [get_permutations'Aux] at hn' hm'
      have hx : (as.insertIdx n x)[m]'(by
          rwa [length_insertIdx_of_le_length hn, Nat.lt_succ_iff, hl]) = x := by
        simp [hn', ← hm']
      have hx' : (bs.insertIdx m x)[n]'(by
          rwa [length_insertIdx_of_le_length hm, Nat.lt_succ_iff, ← hl]) = x := by
        simp [hm', ← hn']
      rcases lt_trichotomy n m with (ht | ht | ht)
      · suffices x ∈ bs by exact h x (hb.subset this) rfl
        rw [← hx', getElem_insertIdx_of_lt ht]
        exact getElem_mem _
      · simp only [ht] at hm' hn'
        rw [← hm'] at hn'
        exact H (insertIdx_injective _ _ hn')
      · suffices x ∈ as by exact h x (ha.subset this) rfl
        rw [← hx, getElem_insertIdx_of_lt ht]
        exact getElem_mem _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant9aae13cf42b00379d2f390690b5c7a7f9053550479f6ac99d81693e7669985f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Permutation/Variant9aae13cf42b00379d2f390690b5c7a7f9053550479f6ac99d81693e7669985f5.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a80b1b3dc2fe5450987c1541af810adea43ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
