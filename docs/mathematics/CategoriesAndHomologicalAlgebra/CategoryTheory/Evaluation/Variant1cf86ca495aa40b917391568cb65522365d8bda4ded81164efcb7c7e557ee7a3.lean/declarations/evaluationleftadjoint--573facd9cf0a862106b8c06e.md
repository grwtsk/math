# evaluationLeftAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5294d52d8454f15ac1f5af8df8e1444afd188fede93cf78a14fb4b6e0ac324b2",
  "kind": "def",
  "lexical_name": "evaluationLeftAdjoint",
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
  "slug": "evaluationleftadjoint--573facd9cf0a862106b8c06e",
  "source": {
    "blob": "ffb59cad14a86a8ad521b7ce5a48107dcd02a5b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:573facd9cf0a862106b8c06e3bed3cb1bb41e0b3ee04a5f61ab85f19312b0ba4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5294d52d8454f15ac1f5af8df8e1444afd188fede93cf78a14fb4b6e0ac324b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evaluationLeftAdjoint (c : C) : D ⥤ C ⥤ D where
  obj d :=
    { obj := fun t => ∐ fun _ : c ⟶ t => d
      map := fun f => Sigma.desc fun g => (Sigma.ι fun _ => d) <| g ≫ f}
  map {_ d₂} f :=
    { app := fun _ => Sigma.desc fun h => f ≫ Sigma.ι (fun _ => d₂) h
      naturality := by
        intros
        dsimp
        ext
        simp }

/-- The adjunction showing that evaluation is a right adjoint. -/
@[simps! unit_app counit_app_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb59cad14a86a8ad521b7ce5a48107dcd02a5b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
