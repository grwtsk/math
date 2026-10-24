# profileD4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b6589cfb9f011122f746c8300675e249ee4fc03f5f8644b8d470dcdb883be04",
  "kind": "def",
  "lexical_name": "profileD4",
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
  "slug": "profiled4--020b2a0dd9c74336a4d836dc",
  "source": {
    "blob": "927099443049c3d6a2842ebbce859c43e64bdf4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant0d4d0d2e397f355ae256aae0c6c27bad0ac3c90804a8720908ce8c487e47586b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:020b2a0dd9c74336a4d836dc295ae3277b6d18b084509a7de624f0c518651c8a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant0d4d0d2e397f355ae256aae0c6c27bad0ac3c90804a8720908ce8c487e47586b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b6589cfb9f011122f746c8300675e249ee4fc03f5f8644b8d470dcdb883be04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def profileD4 (A t : ℝ) : ℝ :=
  (((196608 / 5005)) / A ^ 4 +
    ((-32768 / 77)) * t ^ 2 / A ^ 6 +
    ((4096 / 3)) * t ^ 4 / A ^ 8 +
    ((-6144 / 5)) * t ^ 5 / A ^ 9 +
    ((2048 / 7)) * t ^ 7 / A ^ 11 +
    ((-384 / 7)) * t ^ 9 / A ^ 13 +
    ((64 / 11)) * t ^ 11 / A ^ 15 +
    ((-112 / 429)) * t ^ 13 / A ^ 17) / sourceNormalization A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant0d4d0d2e397f355ae256aae0c6c27bad0ac3c90804a8720908ce8c487e47586b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant0d4d0d2e397f355ae256aae0c6c27bad0ac3c90804a8720908ce8c487e47586b.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `927099443049c3d6a2842ebbce859c43e64bdf4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
