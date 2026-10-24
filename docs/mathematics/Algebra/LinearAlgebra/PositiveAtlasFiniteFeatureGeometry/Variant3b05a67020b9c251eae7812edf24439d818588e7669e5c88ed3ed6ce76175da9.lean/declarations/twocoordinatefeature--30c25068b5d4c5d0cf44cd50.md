# twoCoordinateFeature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c245e73917a26038054cea396677ed4cae3d3dcff9a3a09d63ea0124273a944d",
  "kind": "def",
  "lexical_name": "twoCoordinateFeature",
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
  "slug": "twocoordinatefeature--30c25068b5d4c5d0cf44cd50",
  "source": {
    "blob": "16c314c860147449a1a8e8384e01a6c17a68f3cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 25,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30c25068b5d4c5d0cf44cd504021c60b97218927ddbdf77a83939dfc91277e67",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c245e73917a26038054cea396677ed4cae3d3dcff9a3a09d63ea0124273a944d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoCoordinateFeature : (ℝ × ℝ) →ₗ[ℝ] (Fin 2 → ℝ) where
  toFun x i := if i = 0 then x.1 else 2 * x.1
  map_add' x y := by
    ext i
    by_cases hi : i = 0 <;> simp [hi, mul_add]
  map_smul' a x := by
    ext i
    by_cases hi : i = 0 <;> simp [hi, mul_left_comm]

/-- Positive rational weights give an exact real Gram certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c314c860147449a1a8e8384e01a6c17a68f3cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
