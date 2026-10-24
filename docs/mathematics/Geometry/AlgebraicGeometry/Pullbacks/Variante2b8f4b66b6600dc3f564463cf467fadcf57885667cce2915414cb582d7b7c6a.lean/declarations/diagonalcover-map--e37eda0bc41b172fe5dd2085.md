# diagonalCover_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb737f41-4662-1d3e-c211-e8d99ff66911",
  "kind": "lemma",
  "lexical_name": "diagonalCover_map",
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
  "slug": "diagonalcover-map--e37eda0bc41b172fe5dd2085",
  "source": {
    "blob": "96bf1633e40505d8f53aaf1a59b25241d52d9b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 570,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variante2b8f4b66b6600dc3f564463cf467fadcf57885667cce2915414cb582d7b7c6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e37eda0bc41b172fe5dd2085206946826e6e96d79ce1a2807cd19bee9e3da31e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variante2b8f4b66b6600dc3f564463cf467fadcf57885667cce2915414cb582d7b7c6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb737f41-4662-1d3e-c211-e8d99ff66911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diagonalCover_map (I) : (diagonalCover f 𝒰 𝒱).map I =
    pullback.map _ _ _ _
    ((𝒱 I.fst).map _ ≫ pullback.fst _ _) ((𝒱 I.fst).map _ ≫ pullback.fst _ _) (𝒰.map _)
    (by simp)
    (by simp) := by
  ext1 <;> simp [diagonalCover, Cover.pullbackHom]

/-- The restriction of the diagonal `X ⟶ X ×ₛ X` to `𝒱 i j ×[𝒰 i] 𝒱 i j` is the diagonal
`𝒱 i j ⟶ 𝒱 i j ×[𝒰 i] 𝒱 i j`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variante2b8f4b66b6600dc3f564463cf467fadcf57885667cce2915414cb582d7b7c6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variante2b8f4b66b6600dc3f564463cf467fadcf57885667cce2915414cb582d7b7c6a.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96bf1633e40505d8f53aaf1a59b25241d52d9b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
