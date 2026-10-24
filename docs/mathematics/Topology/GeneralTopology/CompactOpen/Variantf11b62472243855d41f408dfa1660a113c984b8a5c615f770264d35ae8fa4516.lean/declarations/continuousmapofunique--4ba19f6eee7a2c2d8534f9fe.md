# continuousMapOfUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a3686f945cfa5dbf641e301cdf14b05d977b380e27536e2bc33972c117f40e4",
  "kind": "def",
  "lexical_name": "continuousMapOfUnique",
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
  "slug": "continuousmapofunique--4ba19f6eee7a2c2d8534f9fe",
  "source": {
    "blob": "9be918d937c5a280589eccddca836f3ccb3fa86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 476,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ba19f6eee7a2c2d8534f9fe7b84a656777925fdee28b984887f4df30bef619d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a3686f945cfa5dbf641e301cdf14b05d977b380e27536e2bc33972c117f40e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousMapOfUnique [Unique X] : Y ≃ₜ C(X, Y) where
  toFun := const X
  invFun f := f default
  left_inv _ := rfl
  right_inv f := by
    ext x
    rw [Unique.eq_default x]
    rfl
  continuous_toFun := continuous_const'
  continuous_invFun := continuous_eval_const _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be918d937c5a280589eccddca836f3ccb3fa86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
