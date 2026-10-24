# IndexSpectralComparisonData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6b0142dd9ba0ecc56335fac7c8ee15617d27497650795f68d6b390821dd15aa",
  "kind": "structure",
  "lexical_name": "IndexSpectralComparisonData",
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
  "slug": "indexspectralcomparisondata--7af3345ed8d74e4b0d2aa01e",
  "source": {
    "blob": "6d94ea191a3fa6bc230b9fe57d0073f1aca22db6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7af3345ed8d74e4b0d2aa01e0f4f8dcb21e81f75a88790d7b12e7ec96f5708d3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6b0142dd9ba0ecc56335fac7c8ee15617d27497650795f68d6b390821dd15aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IndexSpectralComparisonData where
  pairing : TracePairing
  operator : RHOperatorData
  sourceLabel : String

/--
Bridge condition for the index/spectral comparison.

The condition is exactly the trace-formula statement for the selected pairing.
It does not mention RH, H0 real zeros, boundary alignment, or the critical line.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d94ea191a3fa6bc230b9fe57d0073f1aca22db6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
