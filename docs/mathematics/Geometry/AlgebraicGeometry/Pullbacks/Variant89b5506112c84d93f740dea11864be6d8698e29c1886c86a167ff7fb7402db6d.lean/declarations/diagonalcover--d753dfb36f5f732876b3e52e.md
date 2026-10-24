# diagonalCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e2b46cb548336f92b62ec17d7504afb8c1ab94c874ab627ffef55ae46ba239f",
  "kind": "def",
  "lexical_name": "diagonalCover",
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
  "slug": "diagonalcover--d753dfb36f5f732876b3e52e",
  "source": {
    "blob": "fed0f2b6152def8612c8694efa1ef83a71099cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 639,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d753dfb36f5f732876b3e52e71470ef773ea68927c6d786a3e1351e3a6ed81d8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e2b46cb548336f92b62ec17d7504afb8c1ab94c874ab627ffef55ae46ba239f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagonalCover : (pullback.diagonalObj f).OpenCover :=
  (openCoverOfBase 𝒰 f f).bind
    fun i ↦ openCoverOfLeftRight (𝒱 i) (𝒱 i) (𝒰.pullbackHom _ _) (𝒰.pullbackHom _ _)

set_option backward.isDefEq.respectTransparency.types false in
/-- The image of `𝒱 i j₁ ×[𝒰 i] 𝒱 i j₂` in `diagonalCover` with `j₁ = j₂` -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed0f2b6152def8612c8694efa1ef83a71099cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
