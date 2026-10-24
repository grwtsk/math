# Pos.Raw.isValidForSlice_iff_isSome_utf8DecodeChar?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61f94fbf-4edf-8776-d287-6951561ad5cd",
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
  "slug": "pos-raw-isvalidforslice-iff-issome-utf8decodechar--fb76ad5b86f20088e930b602",
  "source": {
    "blob": "28761e3d388d0e5800a6d7114de4549892584ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 958,
    "line": 928,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb76ad5b86f20088e930b6027137e8ec41df0f6f74858f934fd50b9e3d32a88f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61f94fbf-4edf-8776-d287-6951561ad5cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 928–958.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean#L928).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28761e3d388d0e5800a6d7114de4549892584ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
