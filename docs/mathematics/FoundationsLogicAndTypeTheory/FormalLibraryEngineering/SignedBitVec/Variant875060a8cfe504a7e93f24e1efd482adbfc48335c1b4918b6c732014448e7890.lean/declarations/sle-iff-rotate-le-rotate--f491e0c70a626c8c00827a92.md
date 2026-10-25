# sle_iff_rotate_le_rotate

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
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfe1be67-ef84-efa1-62be-f530ed7cf65e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40bac0a4-2cfb-9cae-5b07-b36d4957f7b6",
  "kind": "theorem",
  "lexical_name": "sle_iff_rotate_le_rotate",
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
  "slug": "sle-iff-rotate-le-rotate--f491e0c70a626c8c00827a92",
  "source": {
    "blob": "f76a64f6ba6aad26ff38c553fee23d9847883768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f491e0c70a626c8c00827a921f4e8b265e912b4a6fb7f4827bab92dbca8ee57f",
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

Occurrence: `result:40bac0a4-2cfb-9cae-5b07-b36d4957f7b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sle_iff_rotate_le_rotate {x y : BitVec n} :
    x.sle y ↔ rotate x ≤ rotate y := by
  match n with
  | 0 => simp [eq_nil x, eq_nil y]
  | n + 1 =>
    simp only [sle_iff_toInt_le, BitVec.toInt, Nat.pow_add, Nat.pow_one, Nat.mul_comm _ 2,
      Nat.zero_lt_succ, Nat.mul_lt_mul_left, Int.natCast_mul, Int.cast_ofNat_Int, Int.natCast_pow,
      rotate, intMinSealed_def, Nat.add_one_sub_one, natCast_eq_ofNat, le_def, toNat_add,
      toNat_ofNat, Nat.add_mod_mod]
    split <;> split
    · simp only [Int.ofNat_le]
      rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
      omega
    · have : (↑y.toNat : Int) - 2 * 2 ^ n < 0 := by
        have := BitVec.toNat_lt_twoPow_of_le (x := y) (Nat.le_refl _)
        simp [Nat.pow_add, Nat.mul_comm _ 2] at this
        simp only [← Int.ofNat_lt, Int.natCast_mul, Int.cast_ofNat_Int, Int.natCast_pow] at this
        omega
      have : ¬ (↑x.toNat ≤ (↑y.toNat : Int) - 2 * 2 ^ n) := by
        apply Int.not_le_of_gt
        calc _ < 0 := this
             _ ≤ _ := by omega
      simp only [this, false_iff, Nat.not_le, gt_iff_lt]
      rw [Nat.mod_eq_mod_iff (x := y.toNat + 2 ^ n) (y := y.toNat - 2 ^ n) (z := 2 * 2 ^ n) |>.mpr]
      · rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
        omega
      · exact ⟨0, 1, by omega⟩
    · have : (↑x.toNat : Int) - 2 * 2 ^ n ≤ ↑y.toNat := by
        have : x.toNat < 2 * 2 ^ n := by omega
        have : (↑x.toNat : Int) < 2 * 2 ^ n := by simpa [← Int.ofNat_lt] using this
        omega
      simp only [this, true_iff, ge_iff_le]
      rw [Nat.mod_eq_mod_iff (x := x.toNat + 2 ^ n) (y := x.toNat - 2 ^ n) (z := 2 * 2 ^ n) |>.mpr]
      · rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
        omega
      · exact ⟨0, 1, by omega⟩
    · simp only [Int.sub_le_sub_right_iff, Int.ofNat_le]
      rw [Nat.mod_eq_mod_iff (x := x.toNat + 2 ^ n) (y := x.toNat - 2 ^ n) (z := 2 * 2 ^ n)
          |>.mpr ⟨0, 1, by omega⟩,
        Nat.mod_eq_mod_iff (x := y.toNat + 2 ^ n) (y := y.toNat - 2 ^ n) (z := 2 * 2 ^ n)
          |>.mpr ⟨0, 1, by omega⟩,
        Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76a64f6ba6aad26ff38c553fee23d9847883768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
