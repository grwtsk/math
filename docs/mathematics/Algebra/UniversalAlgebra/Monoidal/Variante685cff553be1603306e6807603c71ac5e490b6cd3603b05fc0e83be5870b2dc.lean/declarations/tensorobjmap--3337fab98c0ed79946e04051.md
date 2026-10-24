# tensorObjMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:853c23777e8a1e93c3ed97705f7367fe16ea272617cc4cdfe0253727baf13c20",
  "kind": "def",
  "lexical_name": "tensorObjMap",
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
  "slug": "tensorobjmap--3337fab98c0ed79946e04051",
  "source": {
    "blob": "eb2010a3dd8b7cb73dcc699acced264974ba337e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 48,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3337fab98c0ed79946e040519b9569148187f5e1e7dad2c7d82c428a5d941073",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:853c23777e8a1e93c3ed97705f7367fe16ea272617cc4cdfe0253727baf13c20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tensorObjMap {X Y : Cᵒᵖ} (f : X ⟶ Y) : M₁.obj X ⊗ M₂.obj X ⟶
    (ModuleCat.restrictScalars (R.map f).hom).obj (M₁.obj Y ⊗ M₂.obj Y) :=
  ModuleCat.MonoidalCategory.tensorLift (fun m₁ m₂ ↦ M₁.map f m₁ ⊗ₜ M₂.map f m₂)
    (by intro m₁ m₁' m₂; dsimp; rw [map_add, TensorProduct.add_tmul])
    (by intro a m₁ m₂; dsimp; erw [M₁.map_smul]; rfl)
    (by intro m₁ m₂ m₂'; dsimp; rw [map_add, TensorProduct.tmul_add])
    (by intro a m₁ m₂; dsimp; erw [M₂.map_smul, TensorProduct.tmul_smul (r := R.map f a)]; rfl)

/-- The tensor product of two presheaves of modules. -/
@[simps obj]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variante685cff553be1603306e6807603c71ac5e490b6cd3603b05fc0e83be5870b2dc.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb2010a3dd8b7cb73dcc699acced264974ba337e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
