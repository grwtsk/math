# HomEquiv.fromExtendScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63deed70adbf9042af322c217c33243a9c63912d576997404d503380b365000d",
  "kind": "def",
  "lexical_name": "HomEquiv.fromExtendScalars",
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
  "slug": "homequiv-fromextendscalars--dec07de619381aee99f5e528",
  "source": {
    "blob": "e9d9c65badbc609d06df12cc080b6c4e177d54ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 680,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant49a46fd7bc7018602316ab1d5a6175ae1a4fabd7049ba86b99d012f87d4c3e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dec07de619381aee99f5e528a637c80442a7fc9253d1bea60049d1fb98df15c0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant49a46fd7bc7018602316ab1d5a6175ae1a4fabd7049ba86b99d012f87d4c3e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63deed70adbf9042af322c217c33243a9c63912d576997404d503380b365000d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HomEquiv.fromExtendScalars {X Y} (g : X ⟶ (restrictScalars f).obj Y) :
    (extendScalars f).obj X ⟶ Y := by
  letI m1 : Module R S := Module.compHom S f; letI m2 : Module R Y := Module.compHom Y f
  refine ofHom {toFun := fun z => TensorProduct.lift ?_ z, map_add' := ?_, map_smul' := ?_}
  · refine
    {toFun := fun s => HomEquiv.evalAt f s g, map_add' := fun (s₁ s₂ : S) => ?_,
      map_smul' := fun (r : R) (s : S) => ?_}
    · ext
      dsimp only [m2, evalAt_apply, LinearMap.add_apply]
      rw [← add_smul]
    · ext x
      apply mul_smul (f r) s (g x)
  · intros z₁ z₂
    simp
  · intro s z
    change lift _ (s • z) = s • lift _ z
    induction z using TensorProduct.induction_on with
    | zero => rw [smul_zero, map_zero, smul_zero]
    | tmul s' x =>
      rw [LinearMap.coe_mk, ExtendScalars.smul_tmul]
      erw [lift.tmul, lift.tmul]
      set s' : S := s'
      change (s * s') • (g x) = s • s' • (g x)
      rw [mul_smul]
    | add _ _ ih1 ih2 => rw [smul_add, map_add, ih1, ih2, map_add, smul_add]

/-- Given `R`-module X and `S`-module Y, `S`-linear linear maps `(extendScalars f).obj X ⟶ Y`
bijectively correspond to `R`-linear maps `X ⟶ (restrictScalars f).obj Y`.
-/
@[simps symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant49a46fd7bc7018602316ab1d5a6175ae1a4fabd7049ba86b99d012f87d4c3e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant49a46fd7bc7018602316ab1d5a6175ae1a4fabd7049ba86b99d012f87d4c3e12.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9d9c65badbc609d06df12cc080b6c4e177d54ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
