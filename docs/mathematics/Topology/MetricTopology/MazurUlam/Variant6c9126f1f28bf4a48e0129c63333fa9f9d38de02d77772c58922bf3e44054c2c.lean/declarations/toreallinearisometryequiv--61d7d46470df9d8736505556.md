# toRealLinearIsometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0731574d2f3106318bc2d97b68fa67dedfb06556bcf67e032ad751ff2781dd18",
  "kind": "def",
  "lexical_name": "toRealLinearIsometryEquiv",
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
  "slug": "toreallinearisometryequiv--61d7d46470df9d8736505556",
  "source": {
    "blob": "d79cf5246f5d2091d0844383b98d84ac5fa68c69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 127,
    "path": "GRWTSK/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61d7d46470df9d873650555684ee189f262e3d12446cfe7c6ff9bbed1d7dfdb0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0731574d2f3106318bc2d97b68fa67dedfb06556bcf67e032ad751ff2781dd18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toRealLinearIsometryEquiv (f : E ≃ᵢ F) : E ≃ₗᵢ[ℝ] F :=
  (f.trans (IsometryEquiv.addRight (f 0)).symm).toRealLinearIsometryEquivOfMapZero
    (by simpa only [sub_eq_add_neg] using sub_self (f 0))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d79cf5246f5d2091d0844383b98d84ac5fa68c69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
