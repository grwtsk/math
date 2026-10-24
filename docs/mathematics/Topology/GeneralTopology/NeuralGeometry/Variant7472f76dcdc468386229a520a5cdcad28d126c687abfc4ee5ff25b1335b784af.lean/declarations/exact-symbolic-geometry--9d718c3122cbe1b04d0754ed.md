# exact_symbolic_geometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f1afc80-c4ef-27cb-a5b4-9a3b8d87b9b3",
  "kind": "theorem",
  "lexical_name": "exact_symbolic_geometry",
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
  "slug": "exact-symbolic-geometry--9d718c3122cbe1b04d0754ed",
  "source": {
    "blob": "cf9198ae36f6334f81bf72bd52463480e43c0f9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 564,
    "path": "GRWTSK/Topology/GeneralTopology/NeuralGeometry/Variant7472f76dcdc468386229a520a5cdcad28d126c687abfc4ee5ff25b1335b784af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d718c3122cbe1b04d0754ed7c54a971e0a0c1e325480dc8f6e7cdc2ed68d430",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NeuralGeometry/Variant7472f76dcdc468386229a520a5cdcad28d126c687abfc4ee5ff25b1335b784af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f1afc80-c4ef-27cb-a5b4-9a3b8d87b9b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_symbolic_geometry
    {Coordinate Symbol k : Type*}
    [Fintype Symbol] [DecidableEq Symbol] [Field k]
    (bundle : NeuralSymbolicDiffusion Coordinate Symbol k) :
    FunctionIdeal.vanishingIdeal
      (FunctionIdeal.zeroLocus bundle.symbolicLayer.ontologyIdeal) =
      bundle.symbolicLayer.ontologyIdeal :=
  bundle.symbolicLayer.exact_finite_geometry

end NeuralSymbolicDiffusion

end Cord
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NeuralGeometry/Variant7472f76dcdc468386229a520a5cdcad28d126c687abfc4ee5ff25b1335b784af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NeuralGeometry/Variant7472f76dcdc468386229a520a5cdcad28d126c687abfc4ee5ff25b1335b784af.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf9198ae36f6334f81bf72bd52463480e43c0f9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
