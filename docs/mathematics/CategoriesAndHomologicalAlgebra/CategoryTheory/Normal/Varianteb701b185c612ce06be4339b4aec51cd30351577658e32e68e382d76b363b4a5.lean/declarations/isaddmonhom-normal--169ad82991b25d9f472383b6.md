# IsAddMonHom.Normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fece1cbb2be16608e6441e47b7160b5b3074cd9d94a8545a04655573b24c9c01",
  "kind": "class",
  "lexical_name": "IsAddMonHom.Normal",
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
  "slug": "isaddmonhom-normal--169ad82991b25d9f472383b6",
  "source": {
    "blob": "d1080ee6d0c7e2c3031e1d8ee86e8a1e4282d20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Varianteb701b185c612ce06be4339b4aec51cd30351577658e32e68e382d76b363b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:169ad82991b25d9f472383b6d08f895818a8b1c87741f3fc69c170e5d13a18ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Varianteb701b185c612ce06be4339b4aec51cd30351577658e32e68e382d76b363b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fece1cbb2be16608e6441e47b7160b5b3074cd9d94a8545a04655573b24c9c01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsAddMonHom.Normal {G H : C} [AddGrpObj G] [AddGrpObj H] (φ : H ⟶ G) : Prop where
  mono : Mono φ := by infer_instance
  isAddMonHom : IsAddMonHom φ := by infer_instance
  exists_comp_eq_addConj : ∃ ψ : G ⊗ H ⟶ H, ψ ≫ φ = G ◁ φ ≫ AddGrpObj.addConj G

attribute [instance] IsAddMonHom.Normal.mono IsAddMonHom.Normal.isAddMonHom

namespace IsMonHom

variable {G H : C} [GrpObj G] [GrpObj H] {φ : H ⟶ G}

/-- A morphism `φ : H ⟶ G` of group objects is a normal monoid homomorphism if it is a
monoid homomorphism that is mono and such that the conjugation map `(g, h) ↦ g * h * g⁻¹`
factors through `φ`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Varianteb701b185c612ce06be4339b4aec51cd30351577658e32e68e382d76b363b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Varianteb701b185c612ce06be4339b4aec51cd30351577658e32e68e382d76b363b4a5.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1080ee6d0c7e2c3031e1d8ee86e8a1e4282d20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
