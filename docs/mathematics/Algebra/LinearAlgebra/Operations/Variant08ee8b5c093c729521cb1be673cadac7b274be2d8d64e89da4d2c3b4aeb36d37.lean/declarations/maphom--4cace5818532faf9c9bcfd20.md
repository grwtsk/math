# mapHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:befd2e104e7bb3819bcf6783156d8bf0b83599ee35493e29c2b87a95d9169fb9",
  "kind": "def",
  "lexical_name": "mapHom",
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
  "slug": "maphom--4cace5818532faf9c9bcfd20",
  "source": {
    "blob": "84a4d40807a9515c2d6310cb87368777e3201ac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 509,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cace5818532faf9c9bcfd2070faf0d983281e16abed1fd2440d6daf1e51dc38",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:befd2e104e7bb3819bcf6783156d8bf0b83599ee35493e29c2b87a95d9169fb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapHom {A'} [Semiring A'] [Algebra R A'] (f : A →ₐ[R] A') : Submodule R A →*₀ Submodule R A'
    where
  toFun := map f.toLinearMap
  map_zero' := Submodule.map_bot _
  map_one' := Submodule.map_one _
  map_mul' _ _ := Submodule.map_mul _ _ _
#align submodule.map_hom Submodule.mapHom

/-- The ring of submodules of the opposite algebra is isomorphic to the opposite ring of
submodules. -/
@[simps apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a4d40807a9515c2d6310cb87368777e3201ac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
