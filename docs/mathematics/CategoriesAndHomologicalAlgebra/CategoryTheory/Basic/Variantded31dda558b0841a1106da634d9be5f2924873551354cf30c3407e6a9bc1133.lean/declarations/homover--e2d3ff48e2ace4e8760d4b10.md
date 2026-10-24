# homOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c0776ac193414dc0eb5696e4b69b93bb472ea9e5a08a61c42ccc36404b96ca5",
  "kind": "def",
  "lexical_name": "homOver",
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
  "slug": "homover--e2d3ff48e2ace4e8760d4b10",
  "source": {
    "blob": "e05382ba39251d3d33e6d8948c89b0effccc7414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2d3ff48e2ace4e8760d4b10b6035b0929745a30a09c6bb06ff38e74e60f7dac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c0776ac193414dc0eb5696e4b69b93bb472ea9e5a08a61c42ccc36404b96ca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homOver {ℱ : Dᵒᵖ ⥤ A} {ℱ' : Sheaf K A} (α : G.op ⋙ ℱ ⟶ G.op ⋙ ℱ'.obj) (X : A) :
    G.op ⋙ ℱ ⋙ coyoneda.obj (op X) ⟶ G.op ⋙ (sheafOver ℱ' X).obj :=
  whiskerRight α (coyoneda.obj (op X))

/-- (Implementation). Given an iso between the pullbacks of two sheaves, we can whisker it with
`coyoneda` to obtain an iso between the pullbacks of the sheaves of maps from `X`.
-/
@[simps! +dsimpLhs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e05382ba39251d3d33e6d8948c89b0effccc7414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
