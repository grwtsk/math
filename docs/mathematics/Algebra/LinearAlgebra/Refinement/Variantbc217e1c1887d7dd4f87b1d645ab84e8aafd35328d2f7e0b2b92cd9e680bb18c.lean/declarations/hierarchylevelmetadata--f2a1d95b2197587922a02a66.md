# HierarchyLevelMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cc2443142b53b42c66233a7f902c964e6b8d8e73ab89451b786c7f82b77721c",
  "kind": "structure",
  "lexical_name": "HierarchyLevelMetadata",
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
  "slug": "hierarchylevelmetadata--f2a1d95b2197587922a02a66",
  "source": {
    "blob": "9b92d5e7decbbe95f051970bcaf03d16ee247bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2a1d95b2197587922a02a66ea1467c6aef39e215d87a680fae6d5706cff33a8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cc2443142b53b42c66233a7f902c964e6b8d8e73ab89451b786c7f82b77721c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HierarchyLevelMetadata where
  version : DAF.Version
  generatorParametersRef : String
  boundaryTreatmentRef : String
  evidenceStatus : HierarchyEvidenceStatus
  deriving Repr

/-- A finite hierarchy of exact global regions and typed coarse/fine maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Refinement/Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b92d5e7decbbe95f051970bcaf03d16ee247bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
