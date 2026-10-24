# SplitMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2ba30b111765a3db8d7a95171911600627522c868885c1bf9cb681a029f19d0",
  "kind": "structure",
  "lexical_name": "SplitMono",
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
  "slug": "splitmono--4c4484defc91dadd05ef0c1f",
  "source": {
    "blob": "0e48f36be08f8dfed6f0cc1937a9cd460ac99541",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c4484defc91dadd05ef0c1fad4cd090113a53c046710925dedaa0556b612ae6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2ba30b111765a3db8d7a95171911600627522c868885c1bf9cb681a029f19d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SplitMono {X Y : C} (f : X ⟶ Y) where
  /-- The map splitting `f` -/
  retraction : Y ⟶ X
  /-- `f` composed with `retraction` is the identity -/
  id : f ≫ retraction = 𝟙 X := by aesop_cat

attribute [reassoc (attr := simp)] SplitMono.id

/-- `IsSplitMono f` is the assertion that `f` admits a retraction -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantce66c758c2fb14bbfbb29cf45345874671aeb3a3546c5845195cabc2b375a11a.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e48f36be08f8dfed6f0cc1937a9cd460ac99541` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
