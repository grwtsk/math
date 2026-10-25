# toInt_eq_ofNat_toNat_rotate_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f76a64f6ba6aad26ff38c553fee23d9847883768",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:646b7b0e-eef6-6355-09f7-c0ac6f0eaf55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4aa22817-6f8e-500c-06ae-f7af2476fc23",
  "kind": "theorem",
  "lexical_name": "toInt_eq_ofNat_toNat_rotate_sub",
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
  "slug": "toint-eq-ofnat-tonat-rotate-sub--915825c49904b4e2a3507709",
  "source": {
    "blob": "f76a64f6ba6aad26ff38c553fee23d9847883768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:915825c49904b4e2a35077096ddc89c436c69c689f75921e3ca61422d3dd9d90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aa22817-6f8e-500c-06ae-f7af2476fc23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInt_eq_ofNat_toNat_rotate_sub {x : BitVec n} (h : n > 0) :
    x.toInt = (↑(rotate x).toNat : Int) - ↑(intMinSealed n).toNat := by
  match n with
  | 0 => omega
  | n + 1 =>
    simp only [BitVec.toInt, Int.natCast_pow, Int.cast_ofNat_Int, rotate, intMinSealed_def,
      Nat.add_one_sub_one, natCast_eq_ofNat, toNat_add, toNat_ofNat, Nat.add_mod_mod,
      Int.natCast_emod, Int.natCast_add]
    rw [Int.emod_eq_of_lt (a := 2 ^ n)]; rotate_left
    · exact Int.le_of_lt (Int.pow_pos (by omega))
    · rw [Int.pow_add, Int.pow_succ, Int.pow_zero, Int.one_mul, Int.mul_comm, Int.two_mul]
      exact Int.lt_add_of_pos_right _ (Int.pow_pos (by omega))
    have : (2 : Int) ^ n > 0 := Int.pow_pos (by omega)
    split <;> rename_i h
    · rw [Nat.pow_add, Nat.pow_one, Nat.mul_comm _ 2, Nat.mul_lt_mul_left (by omega),
        ← Int.ofNat_lt, Int.natCast_pow, Int.cast_ofNat_Int] at h
      rw [Int.emod_eq_of_lt (by omega) (by omega)]
      omega
    · rw [Nat.pow_add, Nat.pow_one, Nat.mul_comm _ 2, Nat.mul_lt_mul_left (by omega),
        ← Int.ofNat_lt, Int.natCast_pow, Int.cast_ofNat_Int] at h
      simp only [Int.pow_add, Int.reducePow, Int.mul_comm _ 2, Int.two_mul, ← Int.sub_sub,
        Int.sub_left_inj]
      rw [eq_comm, Int.emod_eq_iff (by omega)]
      refine ⟨by omega, ?_, ?_⟩
      · have := BitVec.toNat_lt_twoPow_of_le (x := x) (Nat.le_refl _)
        rw [Int.ofNat_natAbs_of_nonneg (by omega)]
        simp only [Nat.pow_add, Nat.pow_one, ← Int.ofNat_lt, Int.natCast_mul, Int.natCast_pow,
          Int.cast_ofNat_Int] at this
        omega
      · conv => rhs; rw [← Int.sub_sub, Int.sub_sub (b := 2 ^ n), Int.add_comm, ← Int.sub_sub]
        exact ⟨-1, by omega⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76a64f6ba6aad26ff38c553fee23d9847883768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
