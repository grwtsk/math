# Pos.Raw.isValidForSlice_iff_isSome_utf8DecodeChar?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "243a0bd99068f54a0ff51fb4622c3786461bbfbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 920,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c0c7191-2cca-7240-3c8e-c8b0f33e16bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5718f398-4aaa-980a-a4d0-f9565080f821",
  "kind": "theorem",
  "lexical_name": "Pos.Raw.isValidForSlice_iff_isSome_utf8DecodeChar?",
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
  "slug": "pos-raw-isvalidforslice-iff-issome-utf8decodechar--6f32cc080831b11518087efb",
  "source": {
    "blob": "243a0bd99068f54a0ff51fb4622c3786461bbfbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 950,
    "line": 920,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f32cc080831b11518087efb209cc729a29cf7062b7042c2bc25ad684337ef3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5718f398-4aaa-980a-a4d0-f9565080f821`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 920–950.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.Raw.isValidForSlice_iff_isSome_utf8DecodeChar? {s : Slice} {p : Pos.Raw} :
    p.IsValidForSlice s ↔ p = s.rawEndPos ∨ (p < s.rawEndPos ∧ (s.str.toByteArray.utf8DecodeChar? (s.startInclusive.offset.byteIdx + p.byteIdx)).isSome) := by
  refine ⟨?_, ?_⟩
  · rw [isValidForSlice_iff_isSome_utf8DecodeChar?_copy]
    rintro (rfl|h)
    · simp
    · refine Or.inr ⟨?_, ?_⟩
      · have := ByteArray.lt_size_of_isSome_utf8DecodeChar? h
        simpa [Pos.Raw.lt_iff] using this
      · rw [ByteArray.utf8DecodeChar?_eq_utf8DecodeChar?_extract] at h
        rw [Slice.toByteArray_str_eq, ByteArray.append_assoc, ByteArray.utf8DecodeChar?_eq_utf8DecodeChar?_extract]
        simp only [ByteArray.size_append, ByteArray.size_extract, Nat.sub_zero, Nat.le_refl,
          Nat.min_eq_left]
        have h' : s.startInclusive.offset.byteIdx ≤ s.str.toByteArray.size := by
          simpa [le_iff] using s.startInclusive.isValid.le_rawEndPos
        rw [Nat.min_eq_left h', ByteArray.extract_append_size_add' (by simp [size_toByteArray ▸ h']),
          ByteArray.extract_append, Nat.add_sub_cancel_left]
        rw [ByteArray.extract_eq_extract_append_extract s.copy.toByteArray.size]
        · rw [ByteArray.append_assoc]
          apply ByteArray.isSome_utf8DecodeChar?_append h
        · have := ByteArray.lt_size_of_isSome_utf8DecodeChar? h
          simp only [size_toByteArray, Slice.utf8ByteSize_copy, ByteArray.size_extract, Nat.le_refl,
            Nat.min_eq_left] at this
          simp only [size_toByteArray, Slice.utf8ByteSize_copy, ge_iff_le]
          omega
        · simp
  · rw [isValidForSlice_iff_isUTF8FirstByte]
    rintro (rfl|⟨h₁, h₂⟩)
    · simp
    · exact Or.inr ⟨h₁, ByteArray.isUTF8FirstByte_of_isSome_utf8DecodeChar? h₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante42f494b424f6cb5257b921f94709578f5a9581c9eecdc9c42f5036c4da3e0b5.lean#L920).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243a0bd99068f54a0ff51fb4622c3786461bbfbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
