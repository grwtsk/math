# ImageMap.transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcf1993679cc33ddb3be931287b5aaca1cc41a63f40b3c6c0fec29265ea5d2e0",
  "kind": "def",
  "lexical_name": "ImageMap.transport",
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
  "slug": "imagemap-transport--4e8fda12d0872ff86f1f5987",
  "source": {
    "blob": "fbb2cbb450c2e31ed532d75a8aa84ee99835b9bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 635,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantcf8d247f55a4316330c3b1b285d4c424275a2f92d45c68a98b5dae63a5362017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e8fda12d0872ff86f1f5987e53b5c318eb105a6b9bded4e7dc54336c2949a74",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantcf8d247f55a4316330c3b1b285d4c424275a2f92d45c68a98b5dae63a5362017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcf1993679cc33ddb3be931287b5aaca1cc41a63f40b3c6c0fec29265ea5d2e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ImageMap.transport {f g : Arrow C} [HasImage f.hom] [HasImage g.hom] (sq : f ⟶ g)
    (F : MonoFactorisation f.hom) {F' : MonoFactorisation g.hom} (hF' : IsImage F')
    {map : F.I ⟶ F'.I} (map_ι : map ≫ F'.m = F.m ≫ sq.right) : ImageMap sq where
  map := image.lift F ≫ map ≫ hF'.lift (Image.monoFactorisation g.hom)
  map_ι := by simp [map_ι]

/-- `HasImageMap sq` means that there is an `ImageMap` for the square `sq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantcf8d247f55a4316330c3b1b285d4c424275a2f92d45c68a98b5dae63a5362017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantcf8d247f55a4316330c3b1b285d4c424275a2f92d45c68a98b5dae63a5362017.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb2cbb450c2e31ed532d75a8aa84ee99835b9bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
