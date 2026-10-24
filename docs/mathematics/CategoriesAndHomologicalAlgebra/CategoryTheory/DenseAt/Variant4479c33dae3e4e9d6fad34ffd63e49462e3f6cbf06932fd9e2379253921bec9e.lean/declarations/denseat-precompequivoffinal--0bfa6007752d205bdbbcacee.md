# DenseAt.precompEquivOfFinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04d03b7f6ee9eddd77c983a64f6420fb2b44e808a4c10b24308902bf60a5c759",
  "kind": "def",
  "lexical_name": "DenseAt.precompEquivOfFinal",
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
  "slug": "denseat-precompequivoffinal--0bfa6007752d205bdbbcacee",
  "source": {
    "blob": "fc2769652643b5378baad3038f93fcdd5576f59f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseAt/Variant4479c33dae3e4e9d6fad34ffd63e49462e3f6cbf06932fd9e2379253921bec9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bfa6007752d205bdbbcaceeed143de19ab5f50d8842446e01d4421889d5913b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseAt/Variant4479c33dae3e4e9d6fad34ffd63e49462e3f6cbf06932fd9e2379253921bec9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04d03b7f6ee9eddd77c983a64f6420fb2b44e808a4c10b24308902bf60a5c759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def DenseAt.precompEquivOfFinal
    {C' : Type*} [Category* C'] (G : C' ⥤ C) [(CostructuredArrow.pre G F Y).Final] :
    (G ⋙ F).DenseAt Y ≃ F.DenseAt Y :=
  Functor.Final.isColimitWhiskerEquiv (CostructuredArrow.pre G F Y)
    ((LeftExtension.mk (𝟭 D) F.rightUnitor.inv).coconeAt Y)

/-- If `F : C ⥤ D` is dense at `Y : D`, then so is `G ⋙ F` if
the canonical functor `CostructuredArrow (G ≫ F) Y ⥤ CostructuredArrow F Y` is final.
This holds in particular if `G` is an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseAt/Variant4479c33dae3e4e9d6fad34ffd63e49462e3f6cbf06932fd9e2379253921bec9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseAt/Variant4479c33dae3e4e9d6fad34ffd63e49462e3f6cbf06932fd9e2379253921bec9e.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc2769652643b5378baad3038f93fcdd5576f59f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
