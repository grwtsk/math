# toInt_shiftLeftZeroExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1954,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc01bda8-7633-7512-2c2a-dcc76cc93d0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b02b59a7-0880-cd9d-1869-b5bde2d7a9cc",
  "kind": "theorem",
  "lexical_name": "toInt_shiftLeftZeroExtend",
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
  "slug": "toint-shiftleftzeroextend--aa752030c0d2d60fc811b829",
  "source": {
    "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1991,
    "line": 1954,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa752030c0d2d60fc811b829c4368fa60a83bb798546a64c201377101d926d9b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b02b59a7-0880-cd9d-1869-b5bde2d7a9cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1954–1991.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInt_shiftLeftZeroExtend {x : BitVec w} :
    (shiftLeftZeroExtend x n).toInt = x.toInt * 2 ^ n := by
  rw [shiftLeftZeroExtend_eq]
  rcases w with _|w
  · simp [of_length_zero]
  · rcases n with _|n
    · simp
    · have := Nat.pow_pos (a := 2) (n := n + 1) (by omega)
      have : x.toNat <<< (n + 1) < 2 ^ (w + 1 + (n + 1)) := by
        rw [Nat.shiftLeft_eq, Nat.pow_add (a := 2) (m := w + 1) (n := n + 1), Nat.mul_lt_mul_right (by omega)]
        omega
      simp only [toInt_shiftLeft, toNat_setWidth, Nat.lt_add_right_iff_pos,
        Nat.zero_lt_succ, toNat_mod_cancel_of_lt, Int.bmod_def]
      by_cases hmsb : x.msb
      · have hge := toNat_ge_of_msb_true hmsb
        simp only [Nat.add_one_sub_one, ge_iff_le] at hge
        rw [Int.emod_eq_of_lt (by norm_cast; rw [Nat.shiftLeft_eq]; omega) (by omega)]
        rw_mod_cast [← Nat.add_assoc]
        rw [show (2 ^ (w + 1 + n + 1) + 1) / 2 = 2 ^ (w + 1 + n) by omega, Int.natCast_pow,
          Int.cast_ofNat_Int, Nat.shiftLeft_eq, Nat.add_assoc, Nat.pow_add (a := 2) (m := w) (n := 1 + n),
          Nat.add_comm 1 n]
        simp only [Nat.mul_lt_mul_right (by omega), show ¬x.toNat < 2 ^ w by omega, reduceIte,
          Int.natCast_mul, Int.natCast_pow, Int.cast_ofNat_Int, toInt_eq_toNat_cond,
          show ¬2 * x.toNat < 2 ^ (w + 1) by simp [Nat.pow_add, Nat.mul_comm (2 ^ w) 2, hge]]
        norm_cast
        simp [Int.natCast_mul, Int.natCast_pow, Int.cast_ofNat_Int, Int.sub_mul,
          show w + (n + 1) + 1 = (w + 1) + (n + 1) by omega, Nat.pow_add]
      · simp only [Bool.not_eq_true] at hmsb
        have hle := toNat_lt_of_msb_false (x := x) hmsb
        simp only [Nat.add_one_sub_one] at hle
        rw [Int.emod_eq_of_lt (by norm_cast; rw [Nat.shiftLeft_eq]; omega) (by omega)]
        rw_mod_cast [← Nat.add_assoc]
        rw [show (2 ^ (w + 1 + n + 1) + 1) / 2 = 2 ^ (w + 1 + n) by omega, Int.natCast_pow,
          Int.cast_ofNat_Int, Nat.shiftLeft_eq, Nat.add_assoc,  Nat.pow_add (a := 2) (m := w) (n := 1 + n), Nat.add_comm 1 n]
        simp [Nat.mul_lt_mul_right (b := x.toNat) (c := 2 ^ w) (a := 2 ^ (n + 1)) (by omega), hle,
          reduceIte, Int.natCast_mul, Int.natCast_pow, Int.cast_ofNat_Int, toInt_eq_toNat_of_msb hmsb]

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean#L1954).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05610358a70a3b8d66b81c396a7fc44a13f11d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
