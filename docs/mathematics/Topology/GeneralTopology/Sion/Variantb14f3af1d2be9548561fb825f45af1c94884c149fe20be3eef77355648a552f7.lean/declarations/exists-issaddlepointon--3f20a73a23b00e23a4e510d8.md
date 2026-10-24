# exists_isSaddlePointOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:127c99c0-4700-a81f-bcb8-9657b4be7415",
  "kind": "theorem",
  "lexical_name": "exists_isSaddlePointOn",
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
  "slug": "exists-issaddlepointon--3f20a73a23b00e23a4e510d8",
  "source": {
    "blob": "c1e59fce02ffe0c685abcee01076e906967b0007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 553,
    "path": "GRWTSK/Topology/GeneralTopology/Sion/Variantb14f3af1d2be9548561fb825f45af1c94884c149fe20be3eef77355648a552f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f20a73a23b00e23a4e510d81b9ec9e6c03d0750360201c20535bfa11b11b388",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sion/Variantb14f3af1d2be9548561fb825f45af1c94884c149fe20be3eef77355648a552f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:127c99c0-4700-a81f-bcb8-9657b4be7415`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem exists_isSaddlePointOn :
    ∃ a ∈ X, ∃ b ∈ Y, IsSaddlePointOn X Y f a b :=
  DMCompletion.exists_isSaddlePointOn ne_X cX kX hfy hfy' cY ne_Y kY hfx hfx'
    (ι := EReal.orderEmbedding) (hι := continuous_coe_real_ereal)

end Real

end Sion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sion/Variantb14f3af1d2be9548561fb825f45af1c94884c149fe20be3eef77355648a552f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sion/Variantb14f3af1d2be9548561fb825f45af1c94884c149fe20be3eef77355648a552f7.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e59fce02ffe0c685abcee01076e906967b0007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
