# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b55fb28addc8ef5688d4f9fae96b267554e8d5851de19df35a4b7330d46954bf",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ea2acdb62f33c694a9d028fb",
  "source": {
    "blob": "fcda4396b59c7d6c95ca3e45aafc95f0ee721792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea2acdb62f33c694a9d028fb6e7b4d5a5c03d4c2a8cb3cab647c0341e2d2f41d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b55fb28addc8ef5688d4f9fae96b267554e8d5851de19df35a4b7330d46954bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (F : C ⥤ D) [IsEquivalence F] : F.ReflectsEffectiveEpiFamilies where
  reflects {α B} X π _ := by
    let i : (a : α) → X a ⟶ (inv F).obj (F.obj (X a)) := fun a ↦ (asEquivalence F).unit.app _
    have : EffectiveEpiFamily X (fun a ↦ (i a) ≫ (inv F).map (F.map (π a))) := inferInstance
    simp only [inv_fun_map, Iso.hom_inv_id_app_assoc, i] at this
    have : EffectiveEpiFamily X (fun a ↦ (π a ≫ (asEquivalence F).unit.app B) ≫
        (asEquivalence F).unitInv.app _) := inferInstance
    simpa

section Composition

variable {E : Type*} [Category* E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcda4396b59c7d6c95ca3e45aafc95f0ee721792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
