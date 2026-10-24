# memcmpSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c58c99e2b1ba090e9eaeafd05163bae3dfc6ad8778a0d8978f27f935bf4b4712",
  "kind": "def",
  "lexical_name": "memcmpSlice",
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
  "slug": "memcmpslice--5ad09e4ccbf329ca6bd23b42",
  "source": {
    "blob": "875959034908211184fa011d3f48f8d7c73a940e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 333,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ad09e4ccbf329ca6bd23b42e5ab1851a76ec6d09402a21190b094b600b57473",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c58c99e2b1ba090e9eaeafd05163bae3dfc6ad8778a0d8978f27f935bf4b4712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def memcmpSlice (lhs rhs : Slice) (lstart : String.Pos.Raw) (rstart : String.Pos.Raw)
    (len : String.Pos.Raw) (h1 : len.offsetBy lstart ≤ lhs.rawEndPos)
    (h2 : len.offsetBy rstart ≤ rhs.rawEndPos) : Bool :=
  memcmpStr
    lhs.str
    rhs.str
    (lstart.offsetBy lhs.startInclusive.offset)
    (rstart.offsetBy rhs.startInclusive.offset)
    len
    (by
      have := lhs.startInclusive_le_endExclusive
      have := lhs.endExclusive.isValid.le_utf8ByteSize
      simp [String.Pos.le_iff, Pos.Raw.le_iff, Slice.utf8ByteSize_eq,
        -String.Pos.byteIdx_offset_le_utf8ByteSize] at *
      omega)
    (by
      have := rhs.startInclusive_le_endExclusive
      have := rhs.endExclusive.isValid.le_utf8ByteSize
      simp [String.Pos.le_iff, Pos.Raw.le_iff, Slice.utf8ByteSize_eq,
        -String.Pos.byteIdx_offset_le_utf8ByteSize] at *
      omega)

end Internal

/--
Provides simple pattern matching capabilities from the end of a {name}`Slice`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `875959034908211184fa011d3f48f8d7c73a940e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
