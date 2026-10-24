# ProvenanceResidualization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e00d333e69bb8bd94b4b762ede4f5da40007e21c8db8070068cac16fdee63648",
  "kind": "structure",
  "lexical_name": "ProvenanceResidualization",
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
  "slug": "provenanceresidualization--0fd752691f23dd76b9f33cb0",
  "source": {
    "blob": "793b12fcbdb0e25d876e968c15724b820dd97dcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fd752691f23dd76b9f33cb06ab75310057a87df571e7db78a7c5d7c1394a697",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e00d333e69bb8bd94b4b762ede4f5da40007e21c8db8070068cac16fdee63648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProvenanceResidualization
    (Ambient : Type u) (Residual : Type v)
    [AddCommGroup Ambient] [Module ℝ Ambient]
    [AddCommGroup Residual] [Module ℝ Residual] where
  /-- Linear realization of residual coordinates in the ambient space. -/
  residualMap : Residual →ₗ[ℝ] Ambient

namespace ProvenanceResidualization

variable {Ambient : Type u} {Residual : Type v}
variable [AddCommGroup Ambient] [Module ℝ Ambient]
variable [AddCommGroup Residual] [Module ℝ Residual]

/-- The autonomous residual geometry is the ambient positive form pulled back
through the certified residual map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveGeometry/Variant779b372895db26774df738075da295b2c43954dbfbb5d9f5a2b0f8f6e356f882.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793b12fcbdb0e25d876e968c15724b820dd97dcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
