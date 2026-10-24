# WithTerminal.opEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14034193769f3b9a40c595792ae1db817ffacf616829a1dc22eb96e03c9c836d",
  "kind": "def",
  "lexical_name": "WithTerminal.opEquiv",
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
  "slug": "withterminal-opequiv--f27dfd1a6b55c19cfee59b45",
  "source": {
    "blob": "f4b2616460df1c777ef96fbb21d9c175356b322f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 917,
    "line": 855,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f27dfd1a6b55c19cfee59b458cdf7d10713a3bb0470ac4aeb880fb1b54bd1860",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14034193769f3b9a40c595792ae1db817ffacf616829a1dc22eb96e03c9c836d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 855–917.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WithTerminal.opEquiv : (WithTerminal C)ᵒᵖ ≌ WithInitial Cᵒᵖ where
  functor :=
    { obj := fun ⟨x⟩ ↦ match x with
      | of x => ↧(op x)
      | star => .star
      map := fun {x y} ⟨f⟩ ↦
        match x, y, f with
        | op (of x), op (of y), f => (WithTerminal.down f).op
        | op star, op (of _), _ => WithInitial.starInitial.to _
        | op star, op star, _ => 𝟙 _
      map_id := fun ⟨x⟩ ↦ by cases x <;> rfl
      map_comp := fun {x y z} ⟨f⟩ ⟨g⟩ ↦
        match x, y, z, f, g with
        | op (of x), op (of y), op (of z), f, g => rfl
        | _, op (of y), op star, f, g => (g : PEmpty).elim
        | op (of x), op star, _, f, _ => (f : PEmpty).elim
        | op star, _, _, f, g => rfl }
  inverse :=
    { obj := fun x ↦
      match x with
        | .of x => op <| .of <| x.unop
        | .star => op .star
      map := fun {x y} f ↦
        match x, y, f with
        | .of (op x), .of (op y), f => WithInitial.down f
        | .star, .of (op _), _ => op <| WithTerminal.starTerminal.from _
        | .star, .star, _ => 𝟙 _
      map_id := fun x ↦ by cases x <;> rfl
      map_comp := fun {x y z} f g ↦
        match x, y, z, f, g with
        | .of (op x), .of (op y), .of (op z), f, g => rfl
        | _, .of (op y), .star, f, g => (g : PEmpty).elim
        | .of (op x), .star, _, f, _ => (f : PEmpty).elim
        | .star, _, _, f, g => by subsingleton }
  unitIso :=
    NatIso.ofComponents
      (fun ⟨x⟩ ↦ match x with
        | .of x => Iso.refl _
        | .star => Iso.refl _)
      (fun {x y} ⟨f⟩ ↦ match x, y, f with
        | op (of x), op (of y), f => by
            simp only [Functor.id_obj, Functor.comp_obj,
              Functor.id_map, Iso.refl_hom, Category.comp_id, Functor.comp_map, Category.id_comp]
            rfl
        | op star, op (of _), _ => rfl
        | op star, op star, _ => rfl)
  counitIso :=
    NatIso.ofComponents
      (fun x ↦ match x with
        | .of x => Iso.refl _
        | .star => Iso.refl _)
  functor_unitIso_comp := fun ⟨x⟩ ↦
    match x with
    | .of x => by
        simp only [op_unop, Functor.id_obj, Functor.comp_obj, NatIso.ofComponents_hom_app,
          Iso.refl_hom, Category.comp_id]
        rfl
    | .star => rfl

set_option backward.defeqAttrib.useBackward true in
open Opposite in
/-- The opposite category of `WithInitial C` is equivalent to `WithTerminal Cᵒᵖ`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean#L855).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b2616460df1c777ef96fbb21d9c175356b322f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
