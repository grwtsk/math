# effectiveEpiFamilyStructOfEquivalence_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcda4396b59c7d6c95ca3e45aafc95f0ee721792",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e6de381-cfc2-ccdb-5ad0-ba8d2041d468",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea809997-1688-c3f5-4864-5be08295ca5f",
  "kind": "theorem",
  "lexical_name": "effectiveEpiFamilyStructOfEquivalence_aux",
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
  "slug": "effectiveepifamilystructofequivalence-aux--558ae189231858f57a47c358",
  "source": {
    "blob": "fcda4396b59c7d6c95ca3e45aafc95f0ee721792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:558ae189231858f57a47c358be9dfe8ca78614a8c1d2d9a39c465651a2397182",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea809997-1688-c3f5-4864-5be08295ca5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveEpiFamilyStructOfEquivalence_aux {W : D} (ε : (a : α) → e.functor.obj (X a) ⟶ W)
    (h : ∀ {Z : D} (a₁ a₂ : α) (g₁ : Z ⟶ e.functor.obj (X a₁)) (g₂ : Z ⟶ e.functor.obj (X a₂)),
      g₁ ≫ e.functor.map (π a₁) = g₂ ≫ e.functor.map (π a₂) → g₁ ≫ ε a₁ = g₂ ≫ ε a₂)
    {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂) (hg : g₁ ≫ π a₁ = g₂ ≫ π a₂) :
    g₁ ≫ (fun a ↦ e.unit.app (X a) ≫ e.inverse.map (ε a)) a₁ =
    g₂ ≫ (fun a ↦ e.unit.app (X a) ≫ e.inverse.map (ε a)) a₂ := by
  have := h a₁ a₂ (e.functor.map g₁) (e.functor.map g₂)
  simp only [← Functor.map_comp, hg] at this
  simpa using congrArg e.inverse.map (this (by trivial))

variable [EffectiveEpiFamily X π]

/-- Equivalences preserve effective epimorphic families -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcda4396b59c7d6c95ca3e45aafc95f0ee721792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
