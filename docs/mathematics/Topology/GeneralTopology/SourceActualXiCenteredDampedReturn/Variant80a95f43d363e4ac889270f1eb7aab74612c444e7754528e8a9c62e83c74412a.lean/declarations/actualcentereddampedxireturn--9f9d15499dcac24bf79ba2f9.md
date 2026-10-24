# actualCenteredDampedXiReturn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4bcb3ffcedfe9da8960e5eb0a77648c43c493a405ca89850f6a8ce61e692e66",
  "kind": "def",
  "lexical_name": "actualCenteredDampedXiReturn",
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
  "slug": "actualcentereddampedxireturn--9f9d15499dcac24bf79ba2f9",
  "source": {
    "blob": "80037dc9e0a4c7e45c99a5153c67119c14f9385f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant80a95f43d363e4ac889270f1eb7aab74612c444e7754528e8a9c62e83c74412a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f9d15499dcac24bf79ba2f984c76499301dc99f77c16b6d57a7755e3d0b6e51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant80a95f43d363e4ac889270f1eb7aab74612c444e7754528e8a9c62e83c74412a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4bcb3ffcedfe9da8960e5eb0a77648c43c493a405ca89850f6a8ce61e692e66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCenteredDampedXiReturn (A q : ℝ) : ℝ :=
  ∫ t in Real.log 7..2 * A,
    (actualDampedXiFinitePrimitive t - q) * actualDampedXiReturnDensity A t

/-- The genuine fixed constant-sector lower-trace budget, independent of the scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant80a95f43d363e4ac889270f1eb7aab74612c444e7754528e8a9c62e83c74412a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant80a95f43d363e4ac889270f1eb7aab74612c444e7754528e8a9c62e83c74412a.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80037dc9e0a4c7e45c99a5153c67119c14f9385f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
