# extFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7725d295359da80d71caac2dc4fd96176ff098d45f35f28f66361a88beacd98d",
  "kind": "def",
  "lexical_name": "extFunctor",
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
  "slug": "extfunctor--73c988e26d3a3004bb2a68ae",
  "source": {
    "blob": "3bcd760385c3e60e44e5cf94a40f56f6ee995a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 414,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73c988e26d3a3004bb2a68ae175c2246323b2d9dd1aed259be123d9861959d49",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7725d295359da80d71caac2dc4fd96176ff098d45f35f28f66361a88beacd98d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extFunctor (n : ℕ) : Cᵒᵖ ⥤ C ⥤ AddCommGrp.{w} where
  obj X := extFunctorObj X.unop n
  map {X₁ X₂} f :=
    { app := fun Y ↦ AddCommGrp.ofHom (AddMonoidHom.mk'
        (fun α ↦ (Ext.mk₀ f.unop).comp α (zero_add _)) (by simp))
      naturality := fun {Y₁ Y₂} g ↦ by
        ext α
        dsimp
        symm
        apply Ext.comp_assoc
        all_goals omega }
  map_comp {X₁ X₂ X₃} f f' := by
    ext Y α
    dsimp
    rw [← Ext.mk₀_comp_mk₀]
    apply Ext.comp_assoc
    all_goals omega

section biproduct

attribute [local simp] Ext.mk₀_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bcd760385c3e60e44e5cf94a40f56f6ee995a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
