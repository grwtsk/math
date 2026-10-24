# String.toByteArray_utf8EncodeChar_of_utf8DecodeChar?_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f101176e-b764-1f63-3c1d-d80213b3ea7d",
  "kind": "theorem",
  "lexical_name": "String.toByteArray_utf8EncodeChar_of_utf8DecodeChar?_eq_some",
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
  "slug": "string-tobytearray-utf8encodechar-of-utf8decodechar-eq-some--b766c1e2ce00937def053de9",
  "source": {
    "blob": "3da200bc971a44b65021684a4764c636c429b09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1247,
    "line": 1215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b766c1e2ce00937def053de9e70d44cd32748dd2e3d61571fb9ecfeb2266d201",
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

Occurrence: `result:f101176e-b764-1f63-3c1d-d80213b3ea7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1215–1247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem String.toByteArray_utf8EncodeChar_of_utf8DecodeChar?_eq_some {b : ByteArray} {c : Char} (h : b.utf8DecodeChar? 0 = some c) :
    (String.utf8EncodeChar c).toByteArray = b.extract 0 c.utf8Size := by
  have := utf8Size_le_of_utf8DecodeChar?_eq_some h
  match hc : c.utf8Size, c.utf8Size_pos, c.utf8Size_le_four with
  | 1, _, _ =>
    have := parseFirstByte_eq_done_of_utf8DecodeChar?_eq_some h hc (by omega)
    rw [utf8DecodeChar?_eq_assemble₁ (by omega) this] at h
    rw [ByteArray.extract_add_one (by omega)]
    congr
    rw [← assemble₁_eq_some_iff_utf8EncodeChar_eq]
    exact ⟨this, h⟩
  | 2, _, _ =>
    have := parseFirstByte_eq_oneMore_of_utf8DecodeChar?_eq_some h hc (by omega)
    rw [utf8DecodeChar?_eq_assemble₂ (by omega) this] at h
    rw [ByteArray.extract_add_two (by omega)]
    congr
    rw [← assemble₂_eq_some_iff_utf8EncodeChar_eq]
    exact ⟨this, h⟩
  | 3, _, _ =>
    have := parseFirstByte_eq_twoMore_of_utf8DecodeChar?_eq_some h hc (by omega)
    rw [utf8DecodeChar?_eq_assemble₃ (by omega) this] at h
    rw [ByteArray.extract_add_three (by omega)]
    congr
    rw [← assemble₃_eq_some_iff_utf8EncodeChar_eq]
    exact ⟨this, h⟩
  | 4, _, _ =>
    have := parseFirstByte_eq_threeMore_of_utf8DecodeChar?_eq_some h hc (by omega)
    rw [utf8DecodeChar?_eq_assemble₄ (by omega) this] at h
    rw [ByteArray.extract_add_four (by omega)]
    congr
    rw [← assemble₄_eq_some_iff_utf8EncodeChar_eq]
    exact ⟨this, h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean#L1215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da200bc971a44b65021684a4764c636c429b09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
