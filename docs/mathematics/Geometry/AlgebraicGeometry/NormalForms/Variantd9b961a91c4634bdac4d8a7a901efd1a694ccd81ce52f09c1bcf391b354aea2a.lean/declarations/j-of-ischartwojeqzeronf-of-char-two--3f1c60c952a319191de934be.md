# j_of_isCharTwoJEqZeroNF_of_char_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07054e09ffb71b29a619f0db2b929ec5ec65532a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 626,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c017f357-96f5-267a-bcb3-da1c55ea69d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1aadc082-d233-22f5-3620-fc3129d3e35f",
  "kind": "theorem",
  "lexical_name": "j_of_isCharTwoJEqZeroNF_of_char_two",
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
  "slug": "j-of-ischartwojeqzeronf-of-char-two--3f1c60c952a319191de934be",
  "source": {
    "blob": "07054e09ffb71b29a619f0db2b929ec5ec65532a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 626,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f1c60c952a319191de934be9497dd2b8c8902a367ddefc0c9c90bf6a3f10365",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1aadc082-d233-22f5-3620-fc3129d3e35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem j_of_isCharTwoJEqZeroNF_of_char_two [CharP F 2] : W.j = 0 := by
  rw [j, c₄_of_isCharTwoJEqZeroNF_of_char_two]; simp

end Quantity

/-! ## Normal forms of characteristic = 2 -/

/-- A `WeierstrassCurve` is in normal form of characteristic = 2, if it is
`Y² + XY = X³ + a₂X² + a₆` (`WeierstrassCurve.IsCharTwoJNeZeroNF`) or
`Y² + a₃Y = X³ + a₄X + a₆` (`WeierstrassCurve.IsCharTwoJEqZeroNF`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variantd9b961a91c4634bdac4d8a7a901efd1a694ccd81ce52f09c1bcf391b354aea2a.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07054e09ffb71b29a619f0db2b929ec5ec65532a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
