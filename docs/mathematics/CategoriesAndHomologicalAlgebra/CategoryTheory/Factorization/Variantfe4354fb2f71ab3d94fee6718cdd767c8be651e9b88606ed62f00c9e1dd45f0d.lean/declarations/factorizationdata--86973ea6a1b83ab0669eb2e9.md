# factorizationData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd28886e43f29a83ed499e11050d6dafead1300a9aab4a9aa2680e8ec5fdbdef",
  "kind": "def",
  "lexical_name": "factorizationData",
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
  "slug": "factorizationdata--86973ea6a1b83ab0669eb2e9",
  "source": {
    "blob": "4f1ed95daaf34c93688da13ec7e85141923049b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variantfe4354fb2f71ab3d94fee6718cdd767c8be651e9b88606ed62f00c9e1dd45f0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86973ea6a1b83ab0669eb2e9a9b03b74171f5977b017823eb0105ee8a7087d7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variantfe4354fb2f71ab3d94fee6718cdd767c8be651e9b88606ed62f00c9e1dd45f0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd28886e43f29a83ed499e11050d6dafead1300a9aab4a9aa2680e8ec5fdbdef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def factorizationData : FactorizationData W₁ W₂ := fun f =>
  { Z := data.Z.obj (Arrow.mk f)
    i := data.i.app (Arrow.mk f)
    p := data.p.app (Arrow.mk f)
    hi := data.hi _
    hp := data.hp _ }

section

variable {X Y X' Y' : C} {f : X ⟶ Y} {g : X' ⟶ Y'} (φ : Arrow.mk f ⟶ Arrow.mk g)

/-- When `data : FunctorialFactorizationData W₁ W₂`, this is the
morphism `(data.factorizationData f).Z ⟶ (data.factorizationData g).Z` expressing the
functoriality of the intermediate objects of the factorizations
for `φ : Arrow.mk f ⟶ Arrow.mk g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variantfe4354fb2f71ab3d94fee6718cdd767c8be651e9b88606ed62f00c9e1dd45f0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variantfe4354fb2f71ab3d94fee6718cdd767c8be651e9b88606ed62f00c9e1dd45f0d.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f1ed95daaf34c93688da13ec7e85141923049b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
