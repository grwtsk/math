# Action.imageComplement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66fa8c6be7a9eaeb9ba9ec53c821b035f93d54e9a1c678cd9e69ac8f91ea15b5",
  "kind": "def",
  "lexical_name": "Action.imageComplement",
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
  "slug": "action-imagecomplement--8a0b7780d812978546617485",
  "source": {
    "blob": "57bd30bece99a90129f5524981432082d840e995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a0b7780d81297854661748534cda7165a0a01cfad5054ff3bf60081656fca96",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66fa8c6be7a9eaeb9ba9ec53c821b035f93d54e9a1c678cd9e69ac8f91ea15b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Action.imageComplement {X Y : Action FintypeCat G}
    (f : X ⟶ Y) : Action FintypeCat G where
  V := FintypeCat.imageComplement f.hom
  ρ := {
    toFun g := FintypeCat.homMk (fun y ↦ Subtype.mk ((Y.ρ g).hom y.val) <| by
      intro ⟨x, h⟩
      apply y.property
      use (X.ρ g⁻¹).hom x
      calc (X.ρ g⁻¹ ≫ f.hom) x
          = ((Y.ρ g⁻¹ * Y.ρ g)).hom y.val := by rw [f.comm, FintypeCat.comp_apply, h]; rfl
        _ = y.val := by
          simp [← map_mul, inv_mul_cancel, Action.ρ_one, FintypeCat.id_hom])
    map_one' := by aesop
    map_mul' := by aesop
  }

/-- The inclusion from the complement of the image of `f : X ⟶ Y` into `Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bd30bece99a90129f5524981432082d840e995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
