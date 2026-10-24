# isoZeroOfEpiEqZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6eaf94d0ed1c0e45633a76b4352cd12d84a8098ebba56aaa719983d7ad8a26b8",
  "kind": "def",
  "lexical_name": "isoZeroOfEpiEqZero",
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
  "slug": "isozeroofepieqzero--815794ebea16917b3da5d590",
  "source": {
    "blob": "5c2f1b0dda6fe3223b5038426e03b51b4d39165e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 458,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Varianta7a5e7405213d4beecc47dccd759e0aecd0c312a9ac84f8ed2d50ceda478a502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:815794ebea16917b3da5d5902aa7a11496d42d8c3427d4156c93493c99f7c4bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Varianta7a5e7405213d4beecc47dccd759e0aecd0c312a9ac84f8ed2d50ceda478a502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6eaf94d0ed1c0e45633a76b4352cd12d84a8098ebba56aaa719983d7ad8a26b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoZeroOfEpiEqZero {X Y : C} {f : X ⟶ Y} [Epi f] (h : f = 0) : Y ≅ 0 := by
  subst h
  apply isoZeroOfEpiZero ‹_›
#align category_theory.limits.iso_zero_of_epi_eq_zero CategoryTheory.Limits.isoZeroOfEpiEqZero

/-- If an object `X` is isomorphic to 0, there's no need to use choice to construct
an explicit isomorphism: the zero morphism suffices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Varianta7a5e7405213d4beecc47dccd759e0aecd0c312a9ac84f8ed2d50ceda478a502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Varianta7a5e7405213d4beecc47dccd759e0aecd0c312a9ac84f8ed2d50ceda478a502.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2f1b0dda6fe3223b5038426e03b51b4d39165e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
