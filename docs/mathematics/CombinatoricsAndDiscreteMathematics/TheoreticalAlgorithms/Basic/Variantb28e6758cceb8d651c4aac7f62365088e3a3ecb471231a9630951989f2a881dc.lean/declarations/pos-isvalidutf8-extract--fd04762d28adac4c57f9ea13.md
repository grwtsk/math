# Pos.isValidUTF8_extract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00843dde-2a22-1985-4e6e-ffdd2364a3f0",
  "kind": "theorem",
  "lexical_name": "Pos.isValidUTF8_extract",
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
  "slug": "pos-isvalidutf8-extract--fd04762d28adac4c57f9ea13",
  "source": {
    "blob": "28761e3d388d0e5800a6d7114de4549892584ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 794,
    "line": 773,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd04762d28adac4c57f9ea135c4c49838b696e5a4b1a01b58233c82858b6f08a",
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

Occurrence: `result:00843dde-2a22-1985-4e6e-ffdd2364a3f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–794.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.isValidUTF8_extract {s : String} (pos₁ pos₂ : s.Pos) :
    (s.toByteArray.extract pos₁.offset.byteIdx pos₂.offset.byteIdx).IsValidUTF8 := by
  by_cases h : pos₁ ≤ pos₂
  · exact (Pos.Raw.isValidUTF8_extract_iff _ _   h pos₂.isValid.le_rawEndPos).2 (Or.inr ⟨pos₁.isValid, pos₂.isValid⟩)
  · rw [ByteArray.extract_eq_empty_iff.2]
    · exact ByteArray.isValidUTF8_empty
    · rw [Nat.min_eq_left]
      · rw [Pos.le_iff, Pos.Raw.le_iff] at h
        omega
      · have := Pos.Raw.le_iff.1 pos₂.isValid.le_rawEndPos
        rwa [size_toByteArray, ← byteIdx_rawEndPos]

/--
Copies a region of a string to a new string.

The region of `s` from `b` (inclusive) to `e` (exclusive) is copied to a newly-allocated `String`.

If `b`'s offset is greater than or equal to that of `e`, then the resulting string is `""`.

If possible, prefer `String.slice`, which avoids the allocation.
-/
@[extern "lean_string_utf8_extract"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28761e3d388d0e5800a6d7114de4549892584ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
