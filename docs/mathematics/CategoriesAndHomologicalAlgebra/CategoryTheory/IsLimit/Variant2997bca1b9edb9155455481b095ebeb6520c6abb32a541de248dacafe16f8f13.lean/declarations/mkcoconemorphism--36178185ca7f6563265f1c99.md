# mkCoconeMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc86652a4ee241841ac5847c1510204c00ed3390e3e73fa092beb30ff7df8c8f",
  "kind": "def",
  "lexical_name": "mkCoconeMorphism",
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
  "slug": "mkcoconemorphism--36178185ca7f6563265f1c99",
  "source": {
    "blob": "c70b049a4643c6087688e0c4fff0102f2efff044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 564,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant2997bca1b9edb9155455481b095ebeb6520c6abb32a541de248dacafe16f8f13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36178185ca7f6563265f1c997cf97ba4db9c3dff47eec7b2feb5e54fe846467d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant2997bca1b9edb9155455481b095ebeb6520c6abb32a541de248dacafe16f8f13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc86652a4ee241841ac5847c1510204c00ed3390e3e73fa092beb30ff7df8c8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCoconeMorphism {t : Cocone F} (desc : ∀ s : Cocone F, t ⟶ s)
    (uniq' : ∀ (s : Cocone F) (m : t ⟶ s), m = desc s) : IsColimit t where
  desc s := (desc s).hom
  uniq s m w :=
    have : CoconeMorphism.mk m w = desc s := by apply uniq'
    congrArg CoconeMorphism.hom this

/-- Colimit cocones on `F` are unique up to isomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant2997bca1b9edb9155455481b095ebeb6520c6abb32a541de248dacafe16f8f13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variant2997bca1b9edb9155455481b095ebeb6520c6abb32a541de248dacafe16f8f13.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c70b049a4643c6087688e0c4fff0102f2efff044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
