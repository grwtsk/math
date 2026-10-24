# turnCircleEquivAngle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44f075299bca7244423a880c6d0616fa317a8dc739059a6a037a820de48a871c",
  "kind": "def",
  "lexical_name": "turnCircleEquivAngle",
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
  "slug": "turncircleequivangle--0cd84bfe5c5667ab0111c00d",
  "source": {
    "blob": "7c98c395ad2a5395305679e9e619825e7d98eaaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant3cd37c9e2f90501e6e38af5cd03ba9ebe44b8eb94f5f3f91b5f186ba6b88429f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cd84bfe5c5667ab0111c00d35e58fbd0bc5ddfaf84f1a57b5947738392188f9",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant3cd37c9e2f90501e6e38af5cd03ba9ebe44b8eb94f5f3f91b5f186ba6b88429f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44f075299bca7244423a880c6d0616fa317a8dc739059a6a037a820de48a871c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def turnCircleEquivAngle : TurnCircle ≃+ Real.Angle :=
  AddCircle.equivAddCircle (1 : ℝ) (2 * Real.pi)
    one_ne_zero (ne_of_gt Real.two_pi_pos)

/-- On real lifts, the quotient rescaling is exactly multiplication by `2π`. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant3cd37c9e2f90501e6e38af5cd03ba9ebe44b8eb94f5f3f91b5f186ba6b88429f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant3cd37c9e2f90501e6e38af5cd03ba9ebe44b8eb94f5f3f91b5f186ba6b88429f.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c98c395ad2a5395305679e9e619825e7d98eaaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
