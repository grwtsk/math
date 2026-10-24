# ByteArray.eq_of_utf8DecodeChar?_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93e32fac-3473-da44-20ef-ef98c718d36c",
  "kind": "theorem",
  "lexical_name": "ByteArray.eq_of_utf8DecodeChar?_eq_some",
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
  "slug": "bytearray-eq-of-utf8decodechar-eq-some--a9603161ea74287b04e12d33",
  "source": {
    "blob": "31be6729ed562a3f596d33deabe3d72ea20cc2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1255,
    "line": 1250,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9603161ea74287b04e12d33a2fee3deeb2a3c48b08b7f3d33856368eef80f19",
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

Occurrence: `result:93e32fac-3473-da44-20ef-ef98c718d36c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1250–1255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem ByteArray.eq_of_utf8DecodeChar?_eq_some {b : ByteArray} {c : Char} (h : utf8DecodeChar? b 0 = some c) :
    b = (String.utf8EncodeChar c).toByteArray ++ b.extract c.utf8Size b.size := by
  rw [String.toByteArray_utf8EncodeChar_of_utf8DecodeChar?_eq_some h,
    ByteArray.extract_append_extract, Nat.zero_min, Nat.max_eq_right (utf8Size_le_of_utf8DecodeChar?_eq_some h),
    ByteArray.extract_zero_size]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Decode/Variant5918a53dda9e731ca6508c9ffff485cee4a665256b83354bb799a2f15dcf0085.lean#L1250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31be6729ed562a3f596d33deabe3d72ea20cc2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
