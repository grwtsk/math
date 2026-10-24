# map_opShiftFunctorEquivalence_unitIso_inv_app_unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:256dfbc5-5611-e9bc-32a1-911bebb98c57",
  "kind": "lemma",
  "lexical_name": "map_opShiftFunctorEquivalence_unitIso_inv_app_unop",
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
  "slug": "map-opshiftfunctorequivalence-unitiso-inv-app-unop--d7dd81180c8159c8dcde2951",
  "source": {
    "blob": "d79adaa9ccbfe79ba5bce497f38f888be4fa0e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7dd81180c8159c8dcde29515a0afa6e27345799a5704691573480e88d33652b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:256dfbc5-5611-e9bc-32a1-911bebb98c57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_opShiftFunctorEquivalence_unitIso_inv_app_unop (X : Cᵒᵖ) (n : ℤ) :
    F.map ((opShiftFunctorEquivalence C n).unitIso.inv.app X).unop =
      ((opShiftFunctorEquivalence D n).unitIso.inv.app (op (F.obj X.unop))).unop ≫
        (((F.op).commShiftIso n).hom.app X).unop⟦n⟧' ≫
        ((F.commShiftIso n).inv.app _) := by
  rw [← cancel_mono (F.map ((opShiftFunctorEquivalence C n).unitIso.hom.app X).unop),
    ← F.map_comp, ← unop_comp, Iso.hom_inv_id_app,
    map_opShiftFunctorEquivalence_unitIso_hom_app_unop, assoc, assoc,
    Iso.inv_hom_id_app_assoc, ← Functor.map_comp_assoc, ← unop_comp]
  simp

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantd2642321664bb4bb28a709d721ff2f60b54552498bd3a8baab8ea637e933e286.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d79adaa9ccbfe79ba5bce497f38f888be4fa0e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
