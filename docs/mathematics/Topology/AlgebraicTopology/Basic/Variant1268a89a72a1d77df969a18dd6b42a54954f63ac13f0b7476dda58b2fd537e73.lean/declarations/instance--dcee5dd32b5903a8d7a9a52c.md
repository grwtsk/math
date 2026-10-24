# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecd050b3d32532fefbd568bd1e7f6fc5864dc719beace3a4b25270e6cf0b9d60",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dcee5dd32b5903a8d7a9a52c",
  "source": {
    "blob": "facf33b9f1c51cfde5d40af4e3907cc82a9f8768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 411,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variant1268a89a72a1d77df969a18dd6b42a54954f63ac13f0b7476dda58b2fd537e73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcee5dd32b5903a8d7a9a52c0134d0030f3a60b51b92948f247b3f08cf92f311",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Basic/Variant1268a89a72a1d77df969a18dd6b42a54954f63ac13f0b7476dda58b2fd537e73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecd050b3d32532fefbd568bd1e7f6fc5864dc719beace3a4b25270e6cf0b9d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HomotopyLike (HomotopyWith f₀ f₁ P) f₀ f₁ where
  map_continuous F := F.continuous_toFun
  map_zero_left F := F.map_zero_left
  map_one_left F := F.map_one_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variant1268a89a72a1d77df969a18dd6b42a54954f63ac13f0b7476dda58b2fd537e73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variant1268a89a72a1d77df969a18dd6b42a54954f63ac13f0b7476dda58b2fd537e73.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `facf33b9f1c51cfde5d40af4e3907cc82a9f8768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
