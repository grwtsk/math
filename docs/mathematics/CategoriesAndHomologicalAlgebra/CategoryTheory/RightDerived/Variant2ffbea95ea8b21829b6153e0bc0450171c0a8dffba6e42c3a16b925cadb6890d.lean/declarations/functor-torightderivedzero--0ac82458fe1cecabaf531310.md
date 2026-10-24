# Functor.toRightDerivedZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:034d3f65f2cca4da2bc5a14bd1b2b6c3e3fa130be77280716c1a948dae24bf3f",
  "kind": "def",
  "lexical_name": "Functor.toRightDerivedZero",
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
  "slug": "functor-torightderivedzero--0ac82458fe1cecabaf531310",
  "source": {
    "blob": "ef9aab66aff1d402a134a5ad19ee15776504f5da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 317,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ac82458fe1cecabaf53131032b45b54354df74167985007f81805aa382dd09b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:034d3f65f2cca4da2bc5a14bd1b2b6c3e3fa130be77280716c1a948dae24bf3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Functor.toRightDerivedZero (F : C ⥤ D) [F.Additive] :
    F ⟶ F.rightDerived 0 where
  app X := (injectiveResolution X).toRightDerivedZero' F ≫
    (CochainComplex.isoHomologyπ₀ _).hom ≫
      (HomotopyCategory.homologyFunctorFactors D (ComplexShape.up ℕ) 0).inv.app _
  naturality {X Y} f := by
    dsimp [rightDerived]
    rw [assoc, assoc, InjectiveResolution.toRightDerivedZero'_naturality_assoc f
      (injectiveResolution X) (injectiveResolution Y)
      (InjectiveResolution.desc f _ _) (by simp),
      ← HomologicalComplex.homologyπ_naturality_assoc]
    erw [← NatTrans.naturality]
    rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9aab66aff1d402a134a5ad19ee15776504f5da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
