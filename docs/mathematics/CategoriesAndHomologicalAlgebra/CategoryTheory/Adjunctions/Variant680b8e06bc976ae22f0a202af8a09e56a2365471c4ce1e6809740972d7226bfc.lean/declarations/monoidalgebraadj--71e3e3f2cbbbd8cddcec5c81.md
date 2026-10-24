# monoidAlgebraAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68008df04c978cd02934f9cad4546324e5fd7a1e3ae63fc538670d1f98a27869",
  "kind": "def",
  "lexical_name": "monoidAlgebraAdj",
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
  "slug": "monoidalgebraadj--71e3e3f2cbbbd8cddcec5c81",
  "source": {
    "blob": "39b4b1bc731bff1d8b9fff59638d7dc81b7cb435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant680b8e06bc976ae22f0a202af8a09e56a2365471c4ce1e6809740972d7226bfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71e3e3f2cbbbd8cddcec5c813174f87be9ffe76d6371bd70e83cfdea06077fa9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant680b8e06bc976ae22f0a202af8a09e56a2365471c4ce1e6809740972d7226bfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68008df04c978cd02934f9cad4546324e5fd7a1e3ae63fc538670d1f98a27869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidAlgebraAdj (R : CommRingCat.{u}) :
    monoidAlgebra R ⊣ Under.forget R ⋙ forget₂ _ _ where
  unit := { app G := CommMonCat.ofHom (MonoidAlgebra.of R G) }
  counit :=
  { app S := Under.homMk (CommRingCat.ofHom (MonoidAlgebra.liftNCRingHom S.hom.hom
      (.id _) fun _ _ ↦ .all _ _)) (by ext; simp [MonoidAlgebra.liftNCRingHom]),
    naturality S T f := by
      ext : 2
      apply MonoidAlgebra.ringHom_ext <;>
        intro <;> simp [MonoidAlgebra.liftNCRingHom, ← Under.w f, -Under.w] }
  left_triangle_components G := by
    ext : 2
    apply MonoidAlgebra.ringHom_ext <;> intro <;> simp [MonoidAlgebra.liftNCRingHom]
  right_triangle_components S := by dsimp; ext; simp [MonoidAlgebra.liftNCRingHom]

/-- The adjunction `G ↦ ℤ[G]` and `R ↦ Rˣ` between `CommGrpCat` and `CommRing`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant680b8e06bc976ae22f0a202af8a09e56a2365471c4ce1e6809740972d7226bfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant680b8e06bc976ae22f0a202af8a09e56a2365471c4ce1e6809740972d7226bfc.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39b4b1bc731bff1d8b9fff59638d7dc81b7cb435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
