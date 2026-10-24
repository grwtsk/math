# IsometryEquiv.vaddConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40bd9b3bc68f762f12f7a6c9a02a4675433d1634c8f90b3576db76fdd0df306c",
  "kind": "def",
  "lexical_name": "IsometryEquiv.vaddConst",
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
  "slug": "isometryequiv-vaddconst--7e14b8aa4201763a09acc243",
  "source": {
    "blob": "f79fe2d947aaf520bc31f54fa6cf4e9d8f112fe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e14b8aa4201763a09acc243de0b4ae0327ac2483135637c799ae7ebc53d0ea5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40bd9b3bc68f762f12f7a6c9a02a4675433d1634c8f90b3576db76fdd0df306c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsometryEquiv.vaddConst (x : P) : V ≃ᵢ P where
  toEquiv := Equiv.vaddConst x
  isometry_toFun := Isometry.of_dist_eq fun _ _ => dist_vadd_cancel_right _ _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f79fe2d947aaf520bc31f54fa6cf4e9d8f112fe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
