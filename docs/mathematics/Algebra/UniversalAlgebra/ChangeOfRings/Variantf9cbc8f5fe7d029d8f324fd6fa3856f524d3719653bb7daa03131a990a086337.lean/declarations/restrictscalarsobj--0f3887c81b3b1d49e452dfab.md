# restrictScalarsObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2658937b9cb972cf46b38d83171761ebc9b5a7054aae6fccbf506c359ee5da9",
  "kind": "def",
  "lexical_name": "restrictScalarsObj",
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
  "slug": "restrictscalarsobj--0f3887c81b3b1d49e452dfab",
  "source": {
    "blob": "57574ede2b800479ef56d9e5969250bb7ac02fe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 28,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ChangeOfRings/Variantf9cbc8f5fe7d029d8f324fd6fa3856f524d3719653bb7daa03131a990a086337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f3887c81b3b1d49e452dfabd27029dbbd7a9aabb08c204214f1eab5e966e28f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ChangeOfRings/Variantf9cbc8f5fe7d029d8f324fd6fa3856f524d3719653bb7daa03131a990a086337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2658937b9cb972cf46b38d83171761ebc9b5a7054aae6fccbf506c359ee5da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restrictScalarsObj (M' : PresheafOfModules.{v} R') (α : R ⟶ R') :
    PresheafOfModules R where
  obj := fun X ↦ (ModuleCat.restrictScalars (α.app X).hom).obj (M'.obj X)
  -- TODO: after https://github.com/leanprover-community/mathlib4/pull/19511 we need to hint `(X := ...)` and `(Y := ...)`.
  -- This suggests `restrictScalars` needs to be redesigned.
  map := fun {X Y} f ↦ ModuleCat.ofHom
      (X := (ModuleCat.restrictScalars (α.app X).hom).obj (M'.obj X))
      (Y := (ModuleCat.restrictScalars (R.map f).hom).obj
        ((ModuleCat.restrictScalars (α.app Y).hom).obj (M'.obj Y)))
    { toFun := M'.map f
      map_add' := map_add _
      map_smul' := fun r x ↦ (M'.map_smul f (α.app _ r) x).trans (by
        have eq := RingHom.congr_fun (congrArg RingCat.Hom.hom <| α.naturality f) r
        dsimp at eq
        rw [← eq]
        rfl ) }

/-- The restriction of scalars functor `PresheafOfModules R' ⥤ PresheafOfModules R`
induced by a morphism of presheaves of rings `R ⟶ R'`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ChangeOfRings/Variantf9cbc8f5fe7d029d8f324fd6fa3856f524d3719653bb7daa03131a990a086337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ChangeOfRings/Variantf9cbc8f5fe7d029d8f324fd6fa3856f524d3719653bb7daa03131a990a086337.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57574ede2b800479ef56d9e5969250bb7ac02fe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
