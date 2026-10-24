# contractibleTriangleIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65c323c4fcf74fb937f78dc266f2612ba6515bad780d3e4d8e705bd27a752522",
  "kind": "def",
  "lexical_name": "contractibleTriangleIso",
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
  "slug": "contractibletriangleiso--a314cb67da01c2f5cfab950a",
  "source": {
    "blob": "ef5578d83990269448b0d49e7a49e5ae8c76c15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a314cb67da01c2f5cfab950a0a2db50b0533b42d8eeab107cea5baf45d086e7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65c323c4fcf74fb937f78dc266f2612ba6515bad780d3e4d8e705bd27a752522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def contractibleTriangleIso (X : Cᵒᵖ) :
    contractibleTriangle X ≅ (triangleOpEquivalence C).functor.obj
      (Opposite.op (contractibleTriangle X.unop).invRotate) :=
  Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _)
    (IsZero.iso (isZero_zero _) (by
      dsimp
      rw [IsZero.iff_id_eq_zero]
      change (𝟙 ((0 : C)⟦(-1 : ℤ)⟧)).op = 0
      rw [← Functor.map_id, id_zero, Functor.map_zero, op_zero]))
    (by simp) (by simp) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5578d83990269448b0d49e7a49e5ae8c76c15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
