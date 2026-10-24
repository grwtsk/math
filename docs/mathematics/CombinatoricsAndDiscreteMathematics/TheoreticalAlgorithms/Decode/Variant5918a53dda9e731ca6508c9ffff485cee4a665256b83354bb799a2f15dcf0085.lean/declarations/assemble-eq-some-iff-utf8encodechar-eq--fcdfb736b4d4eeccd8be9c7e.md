# assemble₂_eq_some_iff_utf8EncodeChar_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31be6729ed562a3f596d33deabe3d72ea20cc2ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 629,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce895a61-c8b6-3b93-4fdd-fbc832466178",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cab08cfa-379d-264b-1a70-2b92ecc1b668",
  "kind": "theorem",
  "lexical_name": "assemble₂_eq_some_iff_utf8EncodeChar_eq",
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
  "slug": "assemble-eq-some-iff-utf8encodechar-eq--fcdfb736b4d4eeccd8be9c7e",
  "source": {
    "blob": "31be6729ed562a3f596d33deabe3d72ea20cc2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 629,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcdfb736b4d4eeccd8be9c7e8624e34f4ad4b70f52c1dd8dd75262cf5b754883",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cab08cfa-379d-264b-1a70-2b92ecc1b668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem assemble₂_eq_some_iff_utf8EncodeChar_eq {x y : UInt8} {c : Char} :
    parseFirstByte x = .oneMore ∧ assemble₂ x y = some c ↔ String.utf8EncodeChar c = [x, y] := by
  refine ⟨fun ⟨h₁, h₂⟩ => ?_, ?_⟩
  · have hc := utf8Size_assemble₂ h₂
    rw [(String.utf8EncodeChar c).eq_getElem_of_length_eq_two (by simp [hc])]
    simp only [List.cons.injEq, and_true, UInt8.eq_iff_toBitVec_eq]
    refine ⟨?_, ?_⟩
    · rw [String.toBitVec_getElem_utf8EncodeChar_zero_of_utf8Size_eq_two hc,
        toBitVec_val_assemble₂ _ h₂, BitVec.extractLsb'_setWidth_of_le (by decide),
        BitVec.extractLsb'_append_eq_left]
      conv => rhs; rw [toBitVec_eq_of_parseFirstByte_eq_oneMore h₁]
    · rw [String.toBitVec_getElem_utf8EncodeChar_one_of_utf8Size_eq_two hc,
        toBitVec_val_assemble₂ _ h₂]
      rw [BitVec.extractLsb'_setWidth_of_le (by decide)]
      conv => rhs; rw [toBitVec_eq_of_isInvalidContinuationByte_eq_false (isInvalidContinuationByte_eq_false_of_assemble₂_eq_some h₂)]
      rw [BitVec.extractLsb'_append_eq_right]
  · intro h
    have hc : c.utf8Size = 2 := String.length_utf8EncodeChar _ ▸ congrArg List.length h
    have h₀ : (String.utf8EncodeChar c).length = 2 := congrArg List.length h
    obtain ⟨rfl, rfl⟩ : x = (String.utf8EncodeChar c)[0] ∧ y = (String.utf8EncodeChar c)[1] := by simp [h]
    refine ⟨parseFirstByte_utf8EncodeChar_eq_oneMore hc, ?_⟩
    apply assemble₂_eq_some_of_toBitVec
    · apply isInvalidContinuationByte_getElem_utf8EncodeChar_one_of_utf8Size_eq_two hc
    · rw [Char.utf8Size_eq_two_iff] at hc
      exact hc.1
    · rw [String.toBitVec_getElem_utf8EncodeChar_zero_of_utf8Size_eq_two hc,
        String.toBitVec_getElem_utf8EncodeChar_one_of_utf8Size_eq_two hc,
        BitVec.setWidth_append_eq_right, BitVec.setWidth_append_eq_right,
        BitVec.extractLsb'_append_extractLsb'_eq_extractLsb' (by simp),
        ← BitVec.setWidth_eq_extractLsb' (by simp),
        BitVec.setWidth_setWidth_eq_self]
      simpa [BitVec.lt_def, UInt32.le_iff_toNat_le] using Nat.lt_succ_iff.2 (Char.utf8Size_eq_two_iff.1 hc).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31be6729ed562a3f596d33deabe3d72ea20cc2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
