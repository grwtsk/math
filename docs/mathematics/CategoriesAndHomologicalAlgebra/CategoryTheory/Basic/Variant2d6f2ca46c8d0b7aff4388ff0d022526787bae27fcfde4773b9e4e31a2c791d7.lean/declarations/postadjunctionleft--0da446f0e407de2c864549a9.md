# postAdjunctionLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd927ef5731c857725aa0cfb29c66aa566bbbaae638ec456a5dd82b778a4ad00",
  "kind": "def",
  "lexical_name": "postAdjunctionLeft",
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
  "slug": "postadjunctionleft--0da446f0e407de2c864549a9",
  "source": {
    "blob": "4824ac62ed60d335de8849c30f7b43ba7d83cb05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1039,
    "line": 1023,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2d6f2ca46c8d0b7aff4388ff0d022526787bae27fcfde4773b9e4e31a2c791d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0da446f0e407de2c864549a9abecdb220d93d3b633d4bec22b6a5edf8d518541",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2d6f2ca46c8d0b7aff4388ff0d022526787bae27fcfde4773b9e4e31a2c791d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd927ef5731c857725aa0cfb29c66aa566bbbaae638ec456a5dd82b778a4ad00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1023–1039.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postAdjunctionLeft {X : T} {F : T ⥤ D} {G : D ⥤ T} (a : F ⊣ G) :
    post F ⊣ post G ⋙ map (a.unit.app X) where
  unit.app A := homMk <| a.unit.app A.right
  counit.app A := homMk <| a.counit.app A.right
  unit.naturality _ _ f := by
    ext
    exact (a.unit_naturality f.right).symm
  counit.naturality _ _ f := by
    ext
    exact (a.counit_naturality f.right)
  left_triangle_components A := by
    ext
    simp [-Functor.id_obj]
  right_triangle_components A := by
    ext
    simp [-Functor.id_obj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2d6f2ca46c8d0b7aff4388ff0d022526787bae27fcfde4773b9e4e31a2c791d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2d6f2ca46c8d0b7aff4388ff0d022526787bae27fcfde4773b9e4e31a2c791d7.lean#L1023).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4824ac62ed60d335de8849c30f7b43ba7d83cb05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
