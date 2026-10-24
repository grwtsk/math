# RawBitPacket.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dcbe8d728cab4beff7a052daf87e3ac29c83971",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b10bf699-f8a5-5473-6c58-d4572bb8864b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb888996-44ab-a021-5159-44538396b580",
  "kind": "theorem",
  "lexical_name": "RawBitPacket.ext",
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
  "slug": "rawbitpacket-ext--c75c95285a6cea933319f5ef",
  "source": {
    "blob": "8dcbe8d728cab4beff7a052daf87e3ac29c83971",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 91,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c75c95285a6cea933319f5efb62f2326de24b86f7f54fc69577340ab2df51dab",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb888996-44ab-a021-5159-44538396b580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RawBitPacket.ext {x y : RawBitPacket r}
    (hrows : x.rows = y.rows)
    (hmatrix : HEq x.matrix y.matrix)
    (hpayload : x.payloadBits = y.payloadBits) : x = y := by
  cases x with
  | mk xr xm xp =>
      cases y with
      | mk yr ym yp =>
          cases hrows
          cases hmatrix
          cases hpayload
          rfl

/--
Canonical packet validity records sufficient capacity, the minimal row count,
and zero padding after the exact payload boundary.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant5ed626a0b32688e7c00d5c2201a0e1df8ded14a627979442f150adaadd2f286a.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dcbe8d728cab4beff7a052daf87e3ac29c83971` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
