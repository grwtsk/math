# isUTF8FirstByte_getElem_utf8EncodeChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:106da8f5-f76a-7c8c-4ef6-a34e53c40b70",
  "kind": "theorem",
  "lexical_name": "isUTF8FirstByte_getElem_utf8EncodeChar",
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
  "slug": "isutf8firstbyte-getelem-utf8encodechar--2124101818f53ca7ca6e2fcd",
  "source": {
    "blob": "3da200bc971a44b65021684a4764c636c429b09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1450,
    "line": 1429,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2124101818f53ca7ca6e2fcd4ab6608787cf8c0b2b99a5019db5950bc0e95e3f",
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

Occurrence: `result:106da8f5-f76a-7c8c-4ef6-a34e53c40b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1429–1450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem isUTF8FirstByte_getElem_utf8EncodeChar {c : Char} {i : Nat} {hi : i < (String.utf8EncodeChar c).length} :
    (String.utf8EncodeChar c)[i].IsUTF8FirstByte ↔ i = 0 := by
  obtain (rfl|hi₀) := Nat.eq_zero_or_pos i
  · simp only [isUTF8FirstByte_iff_parseFirstByte_ne_invalid, iff_true]
    match h : c.utf8Size, c.utf8Size_pos, c.utf8Size_le_four with
    | 1, _, _ => simp [parseFirstByte_utf8EncodeChar_eq_done h]
    | 2, _, _ => simp [parseFirstByte_utf8EncodeChar_eq_oneMore h]
    | 3, _, _ => simp [parseFirstByte_utf8EncodeChar_eq_twoMore h]
    | 4, _, _ => simp [parseFirstByte_utf8EncodeChar_eq_threeMore h]
  · simp only [isUTF8FirstByte_iff_parseFirstByte_ne_invalid, ne_eq, Nat.ne_of_lt' hi₀, iff_false,
      Classical.not_not]
    apply parseFirstByte_eq_invalid_of_isInvalidContinuationByte_eq_false
    simp only [String.length_utf8EncodeChar] at hi
    match h : c.utf8Size, c.utf8Size_pos, c.utf8Size_le_four, i, hi₀, hi with
    | 1, _, _, 1, _, _ => contradiction
    | 2, _, _, 1, _, _ => simp [isInvalidContinuationByte_getElem_utf8EncodeChar_one_of_utf8Size_eq_two h]
    | 3, _, _, 1, _, _ => simp [isInvalidContinuationByte_getElem_utf8EncodeChar_one_of_utf8Size_eq_three h]
    | 3, _, _, 2, _, _ => simp [isInvalidContinuationByte_getElem_utf8EncodeChar_two_of_utf8Size_eq_three h]
    | 4, _, _, 1, _, _ => simp [isInvalidContinuationByte_getElem_utf8EncodeChar_one_of_utf8Size_eq_four h]
    | 4, _, _, 2, _, _ => simp [isInvalidContinuationByte_getElem_utf8EncodeChar_two_of_utf8Size_eq_four h]
    | 4, _, _, 3, _, _ => simp [isInvalidContinuationByte_getElem_utf8EncodeChar_three_of_utf8Size_eq_four h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variantecc89015b44305ae2fd6f129042e41cf63b251a53169264573e59a9f10009315.lean#L1429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da200bc971a44b65021684a4764c636c429b09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
