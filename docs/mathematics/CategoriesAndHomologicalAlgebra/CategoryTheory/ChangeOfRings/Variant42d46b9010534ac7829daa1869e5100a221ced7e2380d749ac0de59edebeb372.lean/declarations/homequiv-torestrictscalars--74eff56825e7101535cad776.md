# HomEquiv.toRestrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1a5ca41dfd5931c57edcd5604136a046118b1ef2da6e6aeb00ee04b90c4eb84",
  "kind": "def",
  "lexical_name": "HomEquiv.toRestrictScalars",
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
  "slug": "homequiv-torestrictscalars--74eff56825e7101535cad776",
  "source": {
    "blob": "212d42c388d1d661392c23767d7806dd65cfdc44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 694,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant42d46b9010534ac7829daa1869e5100a221ced7e2380d749ac0de59edebeb372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74eff56825e7101535cad776f16561dbd77e667bf53ba06f431d9d981baca9e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant42d46b9010534ac7829daa1869e5100a221ced7e2380d749ac0de59edebeb372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1a5ca41dfd5931c57edcd5604136a046118b1ef2da6e6aeb00ee04b90c4eb84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HomEquiv.toRestrictScalars {X : ModuleCat R} {Y : ModuleCat S}
    (g : (extendScalars f).obj X ⟶ Y) :
    X ⟶ (restrictScalars f).obj Y :=
  -- TODO: after https://github.com/leanprover-community/mathlib4/pull/19511 we need to hint `(Y := ...)`.
  -- This suggests `restrictScalars` needs to be redesigned.
  ofHom (Y := (restrictScalars f).obj Y)
  { toFun := fun x => g <| (1 : S) ⊗ₜ[R,f] x
    map_add' := fun _ _ => by dsimp; rw [tmul_add, map_add]
    map_smul' := fun r s => by
      dsimp
      rw [RestrictScalars.smul_def, ← LinearMap.map_smul]
      erw [tmul_smul]
      congr }

set_option backward.isDefEq.respectTransparency false in
-- Porting note: forced to break apart fromExtendScalars due to timeouts
/--
The map `S → X →ₗ[R] Y` given by `fun s x => s • (g x)`
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant42d46b9010534ac7829daa1869e5100a221ced7e2380d749ac0de59edebeb372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant42d46b9010534ac7829daa1869e5100a221ced7e2380d749ac0de59edebeb372.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `212d42c388d1d661392c23767d7806dd65cfdc44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
