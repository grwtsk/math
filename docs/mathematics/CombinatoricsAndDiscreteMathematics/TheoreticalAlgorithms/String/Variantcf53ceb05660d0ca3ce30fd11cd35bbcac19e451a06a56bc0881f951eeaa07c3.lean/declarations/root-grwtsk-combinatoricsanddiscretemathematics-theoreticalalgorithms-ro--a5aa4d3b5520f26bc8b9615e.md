# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootStringSlicePatternForwardSliceSearcher.Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.String.Slice.Pattern.ForwardSliceSearcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9e3ce2b00ed3c718e315f217945c9728799adbb20dbceb8dd85643b47964e03",
  "kind": "inductive",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootStringSlicePatternForwardSliceSearcher.Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.String.Slice.Pattern.ForwardSliceSearcher",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-ro--a5aa4d3b5520f26bc8b9615e",
  "source": {
    "blob": "3523ed6ccc84fefc5c60123b36f02364023cc522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5aa4d3b5520f26bc8b9615e87e5fd8d231dec7fd359439dff94105361835356",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9e3ce2b00ed3c718e315f217945c9728799adbb20dbceb8dd85643b47964e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootStringSlicePatternForwardSliceSearcher.Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.String.Slice.Pattern.ForwardSliceSearcher (s : Slice) where
  | emptyBefore (pos : s.Pos)
  | emptyAt (pos : s.Pos) (h : pos ≠ s.endPos)
  | proper (needle : Slice) (table : Vector Nat needle.utf8ByteSize) (ht : table = buildTable needle)
      (stackPos : String.Pos.Raw) (needlePos : String.Pos.Raw) (hn : needlePos < needle.rawEndPos)
  | atEnd
deriving Inhabited

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3523ed6ccc84fefc5c60123b36f02364023cc522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
