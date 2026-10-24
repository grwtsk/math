# Prime.deficient_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21733b171675c515ae4a0e09fe2130639458c809",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c72da1a8-a88a-fc93-bfd4-bc240e511d31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71ded6f7-4c0f-2b8b-34c6-08d42ccf9f7a",
  "kind": "theorem",
  "lexical_name": "Prime.deficient_pow",
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
  "slug": "prime-deficient-pow--f43af75468b006d8fe1b2236",
  "source": {
    "blob": "21733b171675c515ae4a0e09fe2130639458c809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 139,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f43af75468b006d8fe1b2236c07c79c7dd571302792f8068804db1ae74b73d54",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71ded6f7-4c0f-2b8b-34c6-08d42ccf9f7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.deficient_pow (h : Prime n) : Deficient (n ^ m) := by
  rcases Nat.eq_zero_or_pos m with (rfl | _)
  · simpa using deficient_one
  · have h1 : (n ^ m).properDivisors = image (n ^ ·) (range m) := by
      apply subset_antisymm <;> intro a
      · simp only [mem_properDivisors, mem_image, mem_range, dvd_prime_pow h]
        rintro ⟨⟨t, ht, rfl⟩, ha'⟩
        exact ⟨t, lt_of_le_of_ne ht (fun ht' ↦ lt_irrefl _ (ht' ▸ ha')), rfl⟩
      · simp only [mem_image, mem_range, mem_properDivisors, forall_exists_index, and_imp]
        intro x hx hy
        constructor
        · rw [← hy, dvd_prime_pow h]
          exact ⟨x, Nat.le_of_succ_le hx, rfl⟩
        · rw [← hy]
          exact (Nat.pow_lt_pow_iff_right (Prime.two_le h)).mpr hx
    have h2 : ∑ i ∈ image (fun x => n ^ x) (range m), i = ∑ i ∈ range m, n^i := by
      rw [Finset.sum_image]
      rintro x _ y _
      apply pow_injective_of_not_isUnit h.not_isUnit <| Prime.ne_zero h
    rw [Deficient, h1, h2]
    calc
      ∑ i ∈ range m, n ^ i
        = (n ^ m - 1) / (n - 1) := (Nat.geomSum_eq (Prime.two_le h) _)
      _ ≤ (n ^ m - 1) := Nat.div_le_self (n ^ m - 1) (n - 1)
      _ < n ^ m := sub_lt (pow_pos (Prime.pos h) m) (Nat.one_pos)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21733b171675c515ae4a0e09fe2130639458c809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
