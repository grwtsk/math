# root_sub_root_mem_of_mem_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:180ad299-ac54-fed0-28af-193cdb45bf40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6a26daf-ac98-8915-4c54-0f58d9177fa0",
  "kind": "lemma",
  "lexical_name": "root_sub_root_mem_of_mem_of_mem",
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
  "slug": "root-sub-root-mem-of-mem-of-mem--cfe62305eb74552e59eb6a6a",
  "source": {
    "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 402,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfe62305eb74552e59eb6a6a67817a9d9e7e9d86ef95b141f3576eef518537bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6a26daf-ac98-8915-4c54-0f58d9177fa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma root_sub_root_mem_of_mem_of_mem (hk : α k + α i - α j ∈ Φ)
    (hkj : k ≠ j) (hk' : α k + α i ∈ Φ) :
    α k - α j ∈ Φ := by
  rcases lt_or_le 0 (P.pairingIn ℤ j k) with hm | hm
  · rw [← neg_mem_range_root_iff, neg_sub]
    exact P.root_sub_root_mem_of_pairingIn_pos hm hkj.symm
  obtain ⟨l, hl⟩ := hk
  have hli : l ≠ i := by
    rintro rfl
    rw [add_comm, add_sub_assoc, left_eq_add, sub_eq_zero, P.root.injective.eq_iff] at hl
    exact hkj hl
  suffices 0 < P.pairingIn ℤ l i by
    convert P.root_sub_root_mem_of_pairingIn_pos this hli using 1
    rw [hl]
    module
  have hkl : l ≠ k := by rintro rfl; exact hij <| by simpa [add_sub_assoc, sub_eq_zero] using hl
  replace hkl : P.pairingIn ℤ l k ≤ 0 := by
    suffices α l - α k ∉ Φ by contrapose! this; exact P.root_sub_root_mem_of_pairingIn_pos this hkl
    replace hl : α l - α k = α i - α j := by rw [hl]; module
    rw [hl]
    exact b.sub_notMem_range_root hi hj
  have hki : P.pairingIn ℤ i k ≤ -2 := by
    suffices P.pairingIn ℤ l k = 2 + P.pairingIn ℤ i k - P.pairingIn ℤ j k by linarith
    apply algebraMap_injective ℤ R
    simp only [algebraMap_pairingIn, map_sub, map_add, map_ofNat]
    simpa using (P.coroot' k : M →ₗ[R] R).congr_arg hl
  replace hki : P.pairingIn ℤ k i = -1 := by
    replace hk' : α i ≠ - α k := by
      rw [← sub_ne_zero, sub_neg_eq_add, add_comm]
      intro contra
      rw [contra] at hk'
      exact P.ne_zero _ hk'.choose_spec
    have aux (h : P.pairingIn ℤ i k = -2) : ¬P.pairingIn ℤ k i = -2 := by
      have := P.reflexive_left
      contrapose! hk'; exact (P.pairingIn_neg_two_neg_two_iff ℤ i k).mp ⟨h, hk'⟩
    have := P.pairingIn_pairingIn_mem_set_of_isCrystallographic i k
    aesop -- #24551 (this should be faster)
  replace hki : P.pairing k i = -1 := by rw [← P.algebraMap_pairingIn ℤ, hki]; simp
  have : P.pairingIn ℤ l i = 1 - P.pairingIn ℤ j i := by
    apply algebraMap_injective ℤ R
    simp only [algebraMap_pairingIn, map_sub, map_one, algebraMap_pairingIn]
    convert (P.coroot' i : M →ₗ[R] R).congr_arg hl using 1
    simp only [PerfectPairing.flip_apply_apply, map_sub, map_add, LinearMap.sub_apply,
      LinearMap.add_apply, root_coroot_eq_pairing, hki, pairing_same]
    ring
  replace hij := pairingIn_le_zero_of_ne b hij.symm hj hi
  omega

/-- This is Lemma 2.5 (b) from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a436583ef69ee61f87fc7e9c264c8eec5d88e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
