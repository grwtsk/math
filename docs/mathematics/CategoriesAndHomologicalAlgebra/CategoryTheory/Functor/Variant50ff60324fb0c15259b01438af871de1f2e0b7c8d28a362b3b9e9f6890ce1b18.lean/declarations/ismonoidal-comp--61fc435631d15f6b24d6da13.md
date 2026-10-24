# isMonoidal_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:941469afc19fda4e999724c35277f85c73ef89157eaa48b204fcaf00b8fb2dbb",
  "kind": "instance",
  "lexical_name": "isMonoidal_comp",
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
  "slug": "ismonoidal-comp--61fc435631d15f6b24d6da13",
  "source": {
    "blob": "325f831955e2363795da5118687fe393a9d77e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1023,
    "line": 1000,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61fc435631d15f6b24d6da134de978a6c234eab58414f94f8b6d4069e30b61c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:941469afc19fda4e999724c35277f85c73ef89157eaa48b204fcaf00b8fb2dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1000–1023.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isMonoidal_comp {F' : D ⥤ E} {G' : E ⥤ D} (adj' : F' ⊣ G')
  [F'.OplaxMonoidal] [G'.LaxMonoidal] [adj'.IsMonoidal] : (adj.comp adj').IsMonoidal where
  leftAdjoint_ε := by
    dsimp [homEquiv]
    rw [← adj.unit_app_unit_comp_map_η, ← adj'.unit_app_unit_comp_map_η,
      assoc, comp_unit_app, assoc, ← Functor.map_comp,
      ← adj'.unit_naturality_assoc, ← map_comp, ← map_comp]
  leftAdjoint_μ X Y := by
    apply ((adj.comp adj').homEquiv _ _).symm.injective
    dsimp only [comp_obj, comp_μ, id_obj, comp_δ]
    rw [Equiv.symm_apply_apply]
    dsimp [homEquiv]
    rw [comp_counit_app, comp_counit_app, comp_counit_app, assoc, tensor_comp, δ_natural_assoc]
    dsimp
    rw [← adj'.map_μ_comp_counit_app_tensor, ← map_comp_assoc, ← map_comp_assoc,
      ← map_comp_assoc, ← adj.map_μ_comp_counit_app_tensor, assoc,
      F.map_comp_assoc, counit_naturality]

end LaxMonoidal

section Monoidal
variable [F.Monoidal] [G.Monoidal] [adj.IsMonoidal]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean#L1000).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `325f831955e2363795da5118687fe393a9d77e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
