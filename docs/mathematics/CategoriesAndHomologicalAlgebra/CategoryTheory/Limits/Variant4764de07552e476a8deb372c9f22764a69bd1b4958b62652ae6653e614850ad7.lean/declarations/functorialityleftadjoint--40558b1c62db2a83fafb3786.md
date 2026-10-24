# functorialityLeftAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b575bd7904215511859dc61e4c45b4ef3e8da90697637cd25aad5f4ec62cf78",
  "kind": "def",
  "lexical_name": "functorialityLeftAdjoint",
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
  "slug": "functorialityleftadjoint--40558b1c62db2a83fafb3786",
  "source": {
    "blob": "2eb92b621205d4c9c17cf32155b7495096a36a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40558b1c62db2a83fafb3786ff0b4423581357546202bb0b212f9ce8aff8889a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b575bd7904215511859dc61e4c45b4ef3e8da90697637cd25aad5f4ec62cf78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorialityLeftAdjoint : Cone (K ⋙ G) ⥤ Cone K :=
  Cones.functoriality _ F ⋙
    Cones.postcompose ((associator _ _ _).hom ≫ whiskerLeft K adj.counit ≫ K.rightUnitor.hom)

attribute [local simp] functorialityLeftAdjoint

/-- The unit for the adjunction for `Cones.functoriality K G : Cone K ⥤ Cone (K ⋙ G)`.

Auxiliary definition for `functorialityIsRightAdjoint`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4764de07552e476a8deb372c9f22764a69bd1b4958b62652ae6653e614850ad7.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb92b621205d4c9c17cf32155b7495096a36a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
