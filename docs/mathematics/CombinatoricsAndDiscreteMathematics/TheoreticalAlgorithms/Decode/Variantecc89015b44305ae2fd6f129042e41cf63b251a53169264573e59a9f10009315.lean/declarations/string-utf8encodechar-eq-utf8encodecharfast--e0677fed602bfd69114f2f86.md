# String.utf8EncodeChar_eq_utf8EncodeCharFast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3b7b7fe-2ceb-8f42-a56f-0385ceae4520",
  "kind": "theorem",
  "lexical_name": "String.utf8EncodeChar_eq_utf8EncodeCharFast",
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
  "slug": "string-utf8encodechar-eq-utf8encodecharfast--e0677fed602bfd69114f2f86",
  "source": {
    "blob": "3da200bc971a44b65021684a4764c636c429b09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0677fed602bfd69114f2f860c44ec324c408bded02d736fcf49093ee79d600c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3b7b7fe-2ceb-8f42-a56f-0385ceae4520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem String.utf8EncodeChar_eq_utf8EncodeCharFast : @utf8EncodeChar = @utf8EncodeCharFast := by
  funext c
  simp only [utf8EncodeChar, utf8EncodeCharFast, UInt8.ofNat_uInt32ToNat, UInt8.ofNat_add,
    UInt8.reduceOfNat, UInt32.le_iff_toNat_le, UInt32.reduceToNat]
  split
  · rfl
  · split
    · simp only [List.cons.injEq, ← UInt8.toNat_inj, UInt8.toNat_add, UInt8.toNat_ofNat',
        Nat.reducePow, UInt8.reduceToNat, Nat.mod_add_mod, UInt8.toNat_or, UInt8.toNat_and,
        UInt32.toNat_toUInt8, UInt32.toNat_shiftRight, UInt32.reduceToNat, Nat.reduceMod, and_true]
      refine ⟨?_, ?_⟩
      · rw [Nat.mod_eq_of_lt (by omega), Nat.add_two_pow_eq_or_of_lt 5 (by omega) 6,
          Nat.and_two_pow_sub_one_eq_mod _ 5, Nat.shiftRight_eq_div_pow,
          Nat.mod_eq_of_lt (b := 256) (by omega)]
      · rw [Nat.mod_eq_of_lt (by omega), Nat.add_two_pow_eq_or_of_lt 6 (by omega) 2,
          Nat.and_two_pow_sub_one_eq_mod _ 6, Nat.mod_mod_of_dvd _ (by decide)]
    · split
      · simp only [List.cons.injEq, ← UInt8.toNat_inj, UInt8.toNat_add, UInt8.toNat_ofNat',
          Nat.reducePow, UInt8.reduceToNat, Nat.mod_add_mod, UInt8.toNat_or, UInt8.toNat_and,
          UInt32.toNat_toUInt8, UInt32.toNat_shiftRight, UInt32.reduceToNat, Nat.reduceMod, and_true]
        refine ⟨?_, ?_, ?_⟩
        · rw [Nat.mod_eq_of_lt (by omega), Nat.add_two_pow_eq_or_of_lt 4 (by omega) 14,
            Nat.and_two_pow_sub_one_eq_mod _ 4, Nat.shiftRight_eq_div_pow,
            Nat.mod_eq_of_lt (b := 256) (by omega)]
        · rw [Nat.mod_eq_of_lt (by omega), Nat.add_two_pow_eq_or_of_lt 6 (by omega) 2,
            Nat.and_two_pow_sub_one_eq_mod _ 6, Nat.shiftRight_eq_div_pow,
            Nat.mod_mod_of_dvd (c.val.toNat / 2 ^ 6) (by decide)]
        · rw [Nat.mod_eq_of_lt (by omega), Nat.add_two_pow_eq_or_of_lt 6 (by omega) 2,
            Nat.and_two_pow_sub_one_eq_mod _ 6, Nat.mod_mod_of_dvd c.val.toNat (by decide)]
      · simp only [List.cons.injEq, ← UInt8.toNat_inj, UInt8.toNat_add, UInt8.toNat_ofNat',
          Nat.reducePow, UInt8.reduceToNat, Nat.mod_add_mod, UInt8.toNat_or, UInt8.toNat_and,
          UInt32.toNat_toUInt8, UInt32.toNat_shiftRight, UInt32.reduceToNat, Nat.reduceMod, and_true]
        refine ⟨?_, ?_, ?_, ?_⟩
        · rw [Nat.mod_eq_of_lt (by omega), Nat.add_two_pow_eq_or_of_lt 3 (by omega) 30,
            Nat.and_two_pow_sub_one_eq_mod _ 3, Nat.shiftRight_eq_div_pow,
            Nat.mod_mod_of_dvd _ (by decide)]
        · rw [Nat.mod_eq_of_lt (by omega), Nat.add_two_pow_eq_or_of_lt 6 (by omega) 2,
            Nat.and_two_pow_sub_one_eq_mod _ 6, Nat.shiftRight_eq_div_pow,
            Nat.mod_mod_of_dvd (c.val.toNat / 2 ^ 12) (by decide)]
        · rw [Nat.mod_eq_of_lt (by omega), Nat.add_two_pow_eq_or_of_lt 6 (by omega) 2,
            Nat.and_two_pow_sub_one_eq_mod _ 6, Nat.shiftRight_eq_div_pow,
            Nat.mod_mod_of_dvd (c.val.toNat / 2 ^ 6) (by decide)]
        · rw [Nat.mod_eq_of_lt (by omega), Nat.add_two_pow_eq_or_of_lt 6 (by omega) 2,
            Nat.and_two_pow_sub_one_eq_mod _ 6, Nat.mod_mod_of_dvd c.val.toNat (by decide)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da200bc971a44b65021684a4764c636c429b09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
