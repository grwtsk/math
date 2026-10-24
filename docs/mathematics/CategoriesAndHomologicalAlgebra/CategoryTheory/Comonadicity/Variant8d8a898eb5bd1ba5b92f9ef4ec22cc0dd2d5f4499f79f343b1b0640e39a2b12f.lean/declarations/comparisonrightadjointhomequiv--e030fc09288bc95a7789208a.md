# comparisonRightAdjointHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0813eb9307e3cf67554fe41c08789825a1a5d473b45c6289123a87818dac8efe",
  "kind": "def",
  "lexical_name": "comparisonRightAdjointHomEquiv",
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
  "slug": "comparisonrightadjointhomequiv--e030fc09288bc95a7789208a",
  "source": {
    "blob": "c8db149385047d7b897d1f9194e1494710e0c8ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant8d8a898eb5bd1ba5b92f9ef4ec22cc0dd2d5f4499f79f343b1b0640e39a2b12f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e030fc09288bc95a7789208a871f9cb2fde4201c405a15b75e0e26d6ef870d05",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant8d8a898eb5bd1ba5b92f9ef4ec22cc0dd2d5f4499f79f343b1b0640e39a2b12f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0813eb9307e3cf67554fe41c08789825a1a5d473b45c6289123a87818dac8efe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comparisonRightAdjointHomEquiv (A : adj.toComonad.Coalgebra) (B : C)
    [HasEqualizer (G.map A.a) (adj.unit.app (G.obj A.A))] :
    ((comparison adj).obj B ⟶ A) ≃ (B ⟶ comparisonRightAdjointObj adj A) where
      toFun f := by
        refine equalizer.lift (adj.homEquiv _ _ f.f) ?_
        simp only [Adjunction.toComonad_coe, Functor.comp_obj, Adjunction.homEquiv_unit,
          Category.assoc, ← G.map_comp, ← f.h, comparison_obj_A, comparison_obj_a]
        rw [Functor.comp_map, Functor.map_comp, Adjunction.unit_naturality_assoc,
          Adjunction.unit_naturality]
      invFun f := by
        refine ⟨(adj.homEquiv _ _).symm (f ≫ (equalizer.ι _ _)), (adj.homEquiv _ _).injective ?_⟩
        simp only [Adjunction.toComonad_coe, Functor.comp_obj, comparison_obj_A, comparison_obj_a,
          Adjunction.homEquiv_counit, Functor.map_comp, Category.assoc,
          Functor.comp_map, Adjunction.homEquiv_unit, Adjunction.unit_naturality_assoc,
          Adjunction.unit_naturality, Adjunction.right_triangle_components_assoc]
        congr 1
        exact (equalizer.condition _ _).symm
      left_inv f := by aesop
      right_inv f := by apply equalizer.hom_ext; simp

set_option backward.isDefEq.respectTransparency false in
/-- Construct the adjunction to the comparison functor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant8d8a898eb5bd1ba5b92f9ef4ec22cc0dd2d5f4499f79f343b1b0640e39a2b12f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant8d8a898eb5bd1ba5b92f9ef4ec22cc0dd2d5f4499f79f343b1b0640e39a2b12f.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8db149385047d7b897d1f9194e1494710e0c8ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
