# Subspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d903d146d5583ed1d8bb9658c64f63ad056f7ec901377e05356642cf8aa2da1",
  "kind": "structure",
  "lexical_name": "Subspace",
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
  "slug": "subspace--54cf0503b498c22cefe9e1df",
  "source": {
    "blob": "1287f0528878884225a81d0fccfb1cafa1e2bb63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant404a8820e1b77655c93894ddb7f74ba65fbdaa3d895cc16081837698c896f0e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54cf0503b498c22cefe9e1df248e2f02f698b2c6e771de1b63962ea04970148d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant404a8820e1b77655c93894ddb7f74ba65fbdaa3d895cc16081837698c896f0e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d903d146d5583ed1d8bb9658c64f63ad056f7ec901377e05356642cf8aa2da1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Subspace where
  /-- The set of points. -/
  carrier : Set (ℙ K V)
  /-- The addition rule. -/
  mem_add' (v w : V) (hv : v ≠ 0) (hw : w ≠ 0) (hvw : v + w ≠ 0) :
    mk K v hv ∈ carrier → mk K w hw ∈ carrier → mk K (v + w) hvw ∈ carrier

namespace Subspace

variable {K V}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant404a8820e1b77655c93894ddb7f74ba65fbdaa3d895cc16081837698c896f0e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant404a8820e1b77655c93894ddb7f74ba65fbdaa3d895cc16081837698c896f0e4.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1287f0528878884225a81d0fccfb1cafa1e2bb63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
