# profileD0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3ad47e5dd70833e4f635cd535414ade1fc65356596f5cc1e93c42078a11411f",
  "kind": "def",
  "lexical_name": "profileD0",
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
  "slug": "profiled0--eb0903ec4e97e3d03c3e2f89",
  "source": {
    "blob": "e514a8f7ebf78f4e0a3b18bdfec12bbd50f4e526",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant1cece83bc5c135c5c1e2004dceb7f6e47cbf4cfa0e0ebcccd9509764b91b0611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb0903ec4e97e3d03c3e2f89987128b992d63da8712c372535274effc012239b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant1cece83bc5c135c5c1e2004dceb7f6e47cbf4cfa0e0ebcccd9509764b91b0611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3ad47e5dd70833e4f635cd535414ade1fc65356596f5cc1e93c42078a11411f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def profileD0 (A t : ℝ) : ℝ :=
  (((65536 / 109395)) / A ^ 0 +
    ((-65536 / 45045)) * t ^ 2 / A ^ 2 +
    ((8192 / 5005)) * t ^ 4 / A ^ 4 +
    ((-4096 / 3465)) * t ^ 6 / A ^ 6 +
    ((256 / 315)) * t ^ 8 / A ^ 8 +
    ((-128 / 315)) * t ^ 9 / A ^ 9 +
    ((128 / 3465)) * t ^ 11 / A ^ 11 +
    ((-16 / 5005)) * t ^ 13 / A ^ 13 +
    ((8 / 45045)) * t ^ 15 / A ^ 15 +
    ((-1 / 218790)) * t ^ 17 / A ^ 17) / sourceNormalization A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant1cece83bc5c135c5c1e2004dceb7f6e47cbf4cfa0e0ebcccd9509764b91b0611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/02SourcePhysicalEndpointConvolution/Variant1cece83bc5c135c5c1e2004dceb7f6e47cbf4cfa0e0ebcccd9509764b91b0611.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e514a8f7ebf78f4e0a3b18bdfec12bbd50f4e526` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
