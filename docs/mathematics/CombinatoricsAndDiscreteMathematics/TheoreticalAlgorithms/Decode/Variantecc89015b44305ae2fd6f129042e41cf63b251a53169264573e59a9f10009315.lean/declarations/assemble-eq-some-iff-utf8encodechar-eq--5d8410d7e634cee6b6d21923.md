# assemble₃_eq_some_iff_utf8EncodeChar_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c02dd517-7e18-2efe-022b-b582ee76b716",
  "kind": "theorem",
  "lexical_name": "assemble₃_eq_some_iff_utf8EncodeChar_eq",
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
  "slug": "assemble-eq-some-iff-utf8encodechar-eq--5d8410d7e634cee6b6d21923",
  "source": {
    "blob": "3da200bc971a44b65021684a4764c636c429b09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 827,
    "line": 789,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d8410d7e634cee6b6d219236fcf07901875dc1a1b56cd225da51d244aa2b768",
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

Occurrence: `result:c02dd517-7e18-2efe-022b-b582ee76b716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–827.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem assemble₃_eq_some_iff_utf8EncodeChar_eq {w x y : UInt8} {c : Char} :
    parseFirstByte w = .twoMore ∧ assemble₃ w x y = some c ↔ String.utf8EncodeChar c = [w, x, y] := by
  refine ⟨fun ⟨h₁, h₂⟩ => ?_, ?_⟩
  · have hc := utf8Size_assemble₃ h₂
    rw [(String.utf8EncodeChar c).eq_getElem_of_length_eq_three (by simp [hc])]
    simp only [List.cons.injEq, UInt8.eq_iff_toBitVec_eq, and_true]
    refine ⟨?_, ?_, ?_⟩
    · rw [String.toBitVec_getElem_utf8EncodeChar_zero_of_utf8Size_eq_three hc,
        toBitVec_val_assemble₃ _ h₂, BitVec.extractLsb'_setWidth_of_le (by decide),
        BitVec.append_assoc, BitVec.cast_eq, BitVec.extractLsb'_append_eq_left,
        ← toBitVec_eq_of_parseFirstByte_eq_twoMore h₁]
    · rw [String.toBitVec_getElem_utf8EncodeChar_one_of_utf8Size_eq_three hc,
        toBitVec_val_assemble₃ _ h₂, BitVec.extractLsb'_setWidth_of_le (by decide),
        BitVec.extractLsb'_append_eq_of_le (by decide), BitVec.extractLsb'_append_eq_right,
        ← toBitVec_eq_of_isInvalidContinuationByte_eq_false (isInvalidContinuationByte_eq_false_of_assemble₃_eq_some_left h₂)]
    · rw [String.toBitVec_getElem_utf8EncodeChar_two_of_utf8Size_eq_three hc,
        toBitVec_val_assemble₃ _ h₂, BitVec.extractLsb'_setWidth_of_le (by decide),
        BitVec.extractLsb'_append_eq_right,
        ← toBitVec_eq_of_isInvalidContinuationByte_eq_false (isInvalidContinuationByte_eq_false_of_assemble₃_eq_some_right h₂)]
  · intro h
    have h₀ : (String.utf8EncodeChar c).length = 3 := congrArg List.length h
    have hc : c.utf8Size = 3 := String.length_utf8EncodeChar _ ▸ h₀
    obtain ⟨rfl, rfl, rfl⟩ : w = (String.utf8EncodeChar c)[0] ∧ x = (String.utf8EncodeChar c)[1] ∧
      y = (String.utf8EncodeChar c)[2] := by simp [h]
    refine ⟨parseFirstByte_utf8EncodeChar_eq_twoMore hc, ?_⟩
    apply assemble₃_eq_some_of_toBitVec
    · apply isInvalidContinuationByte_getElem_utf8EncodeChar_one_of_utf8Size_eq_three hc
    · apply isInvalidContinuationByte_getElem_utf8EncodeChar_two_of_utf8Size_eq_three hc
    · simp [Char.utf8Size_eq_three_iff, UInt32.lt_iff_toNat_lt] at hc
      exact UInt32.le_iff_toNat_le.2 (by simp; omega)
    · rw [String.toBitVec_getElem_utf8EncodeChar_zero_of_utf8Size_eq_three hc,
        String.toBitVec_getElem_utf8EncodeChar_one_of_utf8Size_eq_three hc,
        String.toBitVec_getElem_utf8EncodeChar_two_of_utf8Size_eq_three hc,
        BitVec.setWidth_append_eq_right, BitVec.setWidth_append_eq_right, BitVec.setWidth_append_eq_right,
        BitVec.extractLsb'_append_extractLsb'_eq_extractLsb' (by simp),
        BitVec.extractLsb'_append_extractLsb'_eq_extractLsb' (by simp),
        ← BitVec.setWidth_eq_extractLsb' (by simp), BitVec.setWidth_setWidth_eq_self]
      simpa [BitVec.lt_def, UInt32.le_iff_toNat_le] using Nat.lt_succ_iff.2 (Char.utf8Size_eq_three_iff.1 hc).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da200bc971a44b65021684a4764c636c429b09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
