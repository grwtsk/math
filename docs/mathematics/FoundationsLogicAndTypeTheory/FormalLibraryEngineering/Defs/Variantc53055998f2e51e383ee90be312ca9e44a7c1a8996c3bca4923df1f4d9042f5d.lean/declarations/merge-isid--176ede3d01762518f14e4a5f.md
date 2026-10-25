# merge_isId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a539548b1509925d0417f5dbd8cf08e51988f07a91d662d4e9627b9fc8962f8",
  "kind": "instance",
  "lexical_name": "merge_isId",
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
  "slug": "merge-isid--176ede3d01762518f14e4a5f",
  "source": {
    "blob": "2d4f32d8eec4d35d8a700b6f4376034f98a2b5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:176ede3d01762518f14e4a5fa7cea670d8f843cb51981b8e83c177ef9abb0f56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a539548b1509925d0417f5dbd8cf08e51988f07a91d662d4e9627b9fc8962f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance merge_isId (f : α → α → α) : Std.LawfulIdentity (merge f) none where
  left_id a := by cases a <;> simp [merge]
  right_id a := by cases a <;> simp [merge]

@[deprecated (since := "2025-04-04")] alias liftOrGet_isCommutative :=
  merge_isCommutative
@[deprecated (since := "2025-04-04")] alias liftOrGet_isAssociative :=
  merge_isAssociative
@[deprecated (since := "2025-04-04")] alias liftOrGet_isIdempotent :=
  merge_isIdempotent
@[deprecated (since := "2025-04-04")] alias liftOrGet_isId := merge_isId

end Option
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4f32d8eec4d35d8a700b6f4376034f98a2b5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
