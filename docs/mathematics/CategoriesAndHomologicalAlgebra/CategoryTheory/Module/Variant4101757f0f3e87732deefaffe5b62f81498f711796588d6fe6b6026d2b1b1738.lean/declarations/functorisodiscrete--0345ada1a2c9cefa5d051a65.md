# functorIsoDiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ab83c545258427d6cd7b6b5229b5aefa93ec42b7e97f0d53c685fe1a9bb381b",
  "kind": "def",
  "lexical_name": "functorIsoDiscrete",
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
  "slug": "functorisodiscrete--0345ada1a2c9cefa5d051a65",
  "source": {
    "blob": "a52ef06b82ff9045c653ac31df2de8b5c720a2e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0345ada1a2c9cefa5d051a65b12f1a644349cb250b67f94014893e761b49975f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ab83c545258427d6cd7b6b5229b5aefa93ec42b7e97f0d53c685fe1a9bb381b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functorIsoDiscrete : functor R ≅ discrete _ :=
  NatIso.ofComponents (fun M ↦ (functorIsoDiscreteComponents R M).symm) fun f ↦ by
    dsimp
    rw [Iso.eq_inv_comp, ← Category.assoc, Iso.comp_inv_eq]
    dsimp [functorIsoDiscreteComponents]
    rw [assoc, ← Iso.eq_inv_comp,
      ← (discreteUnderlyingAdj (ModuleCat R)).counit_naturality]
    simp only [← assoc]
    congr 1
    rw [← Iso.comp_inv_eq]
    apply Sheaf.hom_ext
    simp [functorIsoDiscreteAux₂, ← Functor.map_comp]
    rfl

/--
`CondensedMod.LocallyConstant.functor` is left adjoint to the forgetful functor from condensed
`R`-modules to `R`-modules.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52ef06b82ff9045c653ac31df2de8b5c720a2e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
