# TypeIISpatialCarrier3.RealizesShadings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a03fec0a813f11a5446c6e5d540a92cca9cc0133d340b531416a6945f74f7cba",
  "kind": "def",
  "lexical_name": "TypeIISpatialCarrier3.RealizesShadings",
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
  "slug": "typeiispatialcarrier3-realizesshadings--c9702a1eb30259d2c0f441c1",
  "source": {
    "blob": "d782a1a9c0189b437f21ebed88f988aaec8c53bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9702a1eb30259d2c0f441c1f46edffd90253e6020dc28bc3b1288c9a6f72e74",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a03fec0a813f11a5446c6e5d540a92cca9cc0133d340b531416a6945f74f7cba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TypeIISpatialCarrier3.RealizesShadings
    {Atom : Type*} [Fintype Atom] [DecidableEq Atom]
    (carrier : TypeIISpatialCarrier3 Atom)
    (shading : Atom → Set SpatialPoint) : Prop :=
  ∀ atom, carrier.carrierComplex.geometricRealization
      (carrier.atomCarrier atom) = shading atom

/-- Closed metric thickening of a spatial set by a nonnegative radius. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d782a1a9c0189b437f21ebed88f988aaec8c53bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
