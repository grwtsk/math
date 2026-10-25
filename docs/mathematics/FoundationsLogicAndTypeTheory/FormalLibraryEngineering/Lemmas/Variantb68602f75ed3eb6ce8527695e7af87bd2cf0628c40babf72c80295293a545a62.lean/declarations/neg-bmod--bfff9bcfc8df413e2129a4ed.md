# neg_bmod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16ebb630e4fed7809bcfdbf55fb7e74173327aa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2840,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a1e31d8-5513-f50c-be85-b0abe20b3716",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b18efb2-fc6f-d05f-fd93-aab52765a8ef",
  "kind": "theorem",
  "lexical_name": "neg_bmod",
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
  "slug": "neg-bmod--bfff9bcfc8df413e2129a4ed",
  "source": {
    "blob": "16ebb630e4fed7809bcfdbf55fb7e74173327aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2877,
    "line": 2840,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfff9bcfc8df413e2129a4eded82f31281cb6184d9d4c06a1deb2c61f8fb68e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b18efb2-fc6f-d05f-fd93-aab52765a8ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2840–2877.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_bmod {a : Int} {b : Nat} :
    (-a).bmod b = if (b : Int) ∣ 2 * a then a.bmod b else -(a.bmod b) := by
  refine (Nat.eq_zero_or_pos b).elim (by rintro rfl; split <;> simp_all <;> omega) (fun hb => ?_)
  split <;> rename_i h
  · rw [bmod_eq_bmod_iff_bmod_sub_eq_zero, ← dvd_iff_bmod_eq_zero]
    simpa [(by omega : -a - a = -2 * a), Int.neg_mul] using h
  · refine (bmod_eq_iff hb).2 ⟨?_, ?_, ?_⟩
    · simp only [Int.neg_le_neg_iff]
      have := bmod_le (x := a) hb
      omega
    · apply Int.neg_lt_of_neg_lt
      rw [bmod_def]
      split <;> rename_i h'
      · exact Int.lt_of_lt_of_le (by omega) (Int.emod_nonneg _ (by omega))
      · simp only [Int.not_lt] at h'
        apply Int.lt_sub_left_of_add_lt
        obtain ⟨c, (rfl|rfl)⟩ : ∃ c, b = 2 * c ∨ b = 2 * c + 1 := ⟨b / 2, by omega⟩
        · simp only [Int.natCast_mul, cast_ofNat_Int]
          rw [Int.mul_add_ediv_left _ _ (by omega), Int.ediv_eq_zero_of_lt (by omega) (by omega)]
          simp only [Int.add_zero, ← Int.sub_eq_add_neg]
          rw [(by omega : ∀ (i : Int), 2 * i - i = i)]
          refine Decidable.by_contra  (fun hc => h ?_)
          simp only [gt_iff_lt, Nat.zero_lt_succ, Nat.mul_pos_iff_of_pos_left, Int.natCast_mul,
            cast_ofNat_Int, Int.not_lt] at *
          rw [Int.mul_dvd_mul_iff_left (by omega)]
          have := mul_ediv_add_emod a (2 * c)
          rw [(by omega : a % (2 * c) = c)] at this
          rw [← this]
          apply Int.dvd_add _ (by simp)
          rw [Int.mul_comm 2, Int.mul_assoc]
          apply Int.dvd_mul_right
        · omega
    · simp only [Int.sub_neg, Int.add_comm, ← Int.sub_eq_add_neg]
      rw [dvd_iff_bmod_eq_zero]
      simp

-- There seems to be no good statement for `natAbs_bmod`.

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean#L2840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ebb630e4fed7809bcfdbf55fb7e74173327aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
