# riemannSphereHomeomorph_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdc8c791-ec2c-7b16-6f41-ac9d2116e6d6",
  "kind": "theorem",
  "lexical_name": "riemannSphereHomeomorph_coe",
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
  "slug": "riemannspherehomeomorph-coe--a8752b192668484a327276a6",
  "source": {
    "blob": "1a47523e0032386cf7bed56c38b10139ec9bd9b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8752b192668484a327276a632b7be7f9a7c23803750202c429b5ee30cfaa024",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdc8c791-ec2c-7b16-6f41-ac9d2116e6d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannSphereHomeomorph_coe (z : ℂ) :
    riemannSphereHomeomorph (z : RiemannSphere) =
      (stereographic norm_north).symm (planePoint z) := by
  rfl

/-- The positive denominator in the inverse stereographic formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a47523e0032386cf7bed56c38b10139ec9bd9b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
