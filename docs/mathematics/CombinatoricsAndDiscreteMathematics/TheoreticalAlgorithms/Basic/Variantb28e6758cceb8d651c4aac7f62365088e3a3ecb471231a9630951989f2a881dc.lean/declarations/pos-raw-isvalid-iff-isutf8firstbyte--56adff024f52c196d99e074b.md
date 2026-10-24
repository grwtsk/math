# Pos.Raw.isValid_iff_isUTF8FirstByte

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2414929-7daa-af91-f276-888928dd3a01",
  "kind": "theorem",
  "lexical_name": "Pos.Raw.isValid_iff_isUTF8FirstByte",
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
  "slug": "pos-raw-isvalid-iff-isutf8firstbyte--56adff024f52c196d99e074b",
  "source": {
    "blob": "28761e3d388d0e5800a6d7114de4549892584ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 628,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56adff024f52c196d99e074b2f9ec7cba848fdfdb84522d9d37d36180c1b90e1",
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

Occurrence: `result:b2414929-7daa-af91-f276-888928dd3a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.Raw.isValid_iff_isUTF8FirstByte {s : String} {p : Pos.Raw} :
    p.IsValid s ↔ p = s.rawEndPos ∨ ∃ (h : p < s.rawEndPos), (s.getUTF8Byte p h).IsUTF8FirstByte := by
  induction s using push_induction with
  | empty => simp [Pos.Raw.lt_iff]
  | push s c ih =>
    rw [isValid_push, ih]
    refine ⟨?_, ?_⟩
    · rintro ((rfl|⟨h, hb⟩)|h)
      · refine Or.inr ⟨by simp [Pos.Raw.lt_iff, Char.utf8Size_pos], ?_⟩
        simp only [getUTF8Byte, toByteArray_push, byteIdx_rawEndPos]
        rw [ByteArray.getElem_append_right (by simp)]
        simp [List.isUTF8FirstByte_getElem_utf8Encode_singleton]
      · refine Or.inr ⟨by simp [lt_iff] at h ⊢; omega, ?_⟩
        simp only [getUTF8Byte, toByteArray_push]
        rwa [ByteArray.getElem_append_left, ← getUTF8Byte]
      · exact Or.inl (by simpa [rawEndPos_push])
    · rintro (h|⟨h, hb⟩)
      · exact Or.inr (by simpa [rawEndPos_push] using h)
      · simp only [getUTF8Byte, toByteArray_push] at hb
        by_cases h' : p < s.rawEndPos
        · refine Or.inl (Or.inr ⟨h', ?_⟩)
          rwa [ByteArray.getElem_append_left h', ← getUTF8Byte] at hb
        · refine Or.inl (Or.inl ?_)
          rw [ByteArray.getElem_append_right (by simp [lt_iff] at h' ⊢; omega)] at hb
          simp only [size_toByteArray, List.isUTF8FirstByte_getElem_utf8Encode_singleton] at hb
          ext
          simp only [lt_iff, byteIdx_rawEndPos, Nat.not_lt] at ⊢ h'
          omega

/--
Returns `true` if `p` is a valid UTF-8 position in the string `s`.

This means that `p ≤ s.rawEndPos` and `p` lies on a UTF-8 character boundary. At runtime, this
operation takes constant time.

Examples:
 * `String.Pos.isValid "abc" ⟨0⟩ = true`
 * `String.Pos.isValid "abc" ⟨1⟩ = true`
 * `String.Pos.isValid "abc" ⟨3⟩ = true`
 * `String.Pos.isValid "abc" ⟨4⟩ = false`
 * `String.Pos.isValid "𝒫(A)" ⟨0⟩ = true`
 * `String.Pos.isValid "𝒫(A)" ⟨1⟩ = false`
 * `String.Pos.isValid "𝒫(A)" ⟨2⟩ = false`
 * `String.Pos.isValid "𝒫(A)" ⟨3⟩ = false`
 * `String.Pos.isValid "𝒫(A)" ⟨4⟩ = true`
-/
@[extern "lean_string_is_valid_pos", expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28761e3d388d0e5800a6d7114de4549892584ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
