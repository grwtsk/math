# Slice.Pos.utf8Encode_get_eq_extract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:376b955d-50a0-1810-b9ba-6a741db66888",
  "kind": "theorem",
  "lexical_name": "Slice.Pos.utf8Encode_get_eq_extract",
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
  "slug": "slice-pos-utf8encode-get-eq-extract--8e6d8db25a0ebed4e23a3672",
  "source": {
    "blob": "28761e3d388d0e5800a6d7114de4549892584ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1181,
    "line": 1174,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e6d8db25a0ebed4e23a3672be9cab35feb4a1e6dcf060032c6b505e6e2821f6",
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

Occurrence: `result:376b955d-50a0-1810-b9ba-6a741db66888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1174–1181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Slice.Pos.utf8Encode_get_eq_extract {s : Slice} (pos : s.Pos) (h : pos ≠ s.endPos) :
    List.utf8Encode [pos.get h] = s.str.toByteArray.extract (s.startInclusive.offset.byteIdx + pos.offset.byteIdx)
      (s.startInclusive.offset.byteIdx + pos.offset.byteIdx + (pos.get h).utf8Size) := by
  rw [get_eq_utf8DecodeChar pos h, List.utf8Encode_singleton, ByteArray.utf8EncodeChar_utf8DecodeChar]

/-- Returns the byte at the given position in the string, or `none` if the position is the end
position. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean#L1174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28761e3d388d0e5800a6d7114de4549892584ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
