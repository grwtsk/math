# WithInitial.opEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3bd247a630735f43c955d6b693ebec35776d6cf361b9ee49580f7e6761e790d",
  "kind": "def",
  "lexical_name": "WithInitial.opEquiv",
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
  "slug": "withinitial-opequiv--9f5ba38955731255173c72e4",
  "source": {
    "blob": "279a2b686f7f16d1e52201927fc8b895e41b60d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 963,
    "line": 903,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4169156f1fdff9155f318180cafc0801dab47a561cc426ec3ef258b8c99185b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f5ba38955731255173c72e4da57395582921a66b6915bf7483ace66b41b4b39",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4169156f1fdff9155f318180cafc0801dab47a561cc426ec3ef258b8c99185b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3bd247a630735f43c955d6b693ebec35776d6cf361b9ee49580f7e6761e790d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 903–963.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WithInitial.opEquiv : (WithInitial C)ᵒᵖ ≌ WithTerminal Cᵒᵖ where
  functor :=
    { obj := fun ⟨x⟩ ↦
        match x with
        | of x => .of <| op x
        | star => .star
      map := fun {x y} ⟨f⟩ ↦
        match x, y, f with
        | op (of x), op (of y), f => (WithTerminal.down f).op
        | op (of _), op star, _ => WithTerminal.starTerminal.from _
        | op star, op star, _  => 𝟙 _
      map_id := fun ⟨x⟩ ↦ by cases x <;> rfl
      map_comp := fun {x y z} ⟨f⟩ ⟨g⟩ ↦
        match x, y, z, f, g with
        | op (of x), op (of y), op (of z), f, g => rfl
        | _, op star, op (of y), f, g => (g : PEmpty).elim
        | op star, op (of x), _, f, _ => (f : PEmpty).elim
        | _, _, op star, f, g => by subsingleton }
  inverse :=
    { obj := fun x ↦
        match x with
        | .of x => op <| .of <| x.unop
        | .star => op .star
      map := fun {x y} f ↦
        match x, y, f with
        | .of (op x), .of (op y), f => WithInitial.down f
        | .of (op _), .star, _ => op <| WithInitial.starInitial.to _
        | .star, .star, _  => 𝟙 _
      map_id := fun x ↦ by cases x <;> rfl
      map_comp := fun {x y z} f g ↦
        match x, y, z, f, g with
        | .of (op x), .of (op y), .of (op z), f, g => rfl
        | _, .star, .of (op y), f, g => (g : PEmpty).elim
        | .star, .of (op x), _, f, _ => (f : PEmpty).elim
        | _, _, .star, f, g => by rfl }
  unitIso :=
    NatIso.ofComponents
      (fun ⟨x⟩ ↦ match x with
        | .of x => Iso.refl _
        | .star => Iso.refl _)
      (fun {x y} f ↦ match x, y, f with
        | op (of x), op (of y), f => by
            simp only [Functor.id_obj, op_unop, Functor.comp_obj,
              Functor.id_map, Iso.refl_hom, Category.comp_id, Functor.comp_map, Category.id_comp]
            rfl
        | op (of _), op star, _ => rfl
        | _, op star, _ => rfl)
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

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4169156f1fdff9155f318180cafc0801dab47a561cc426ec3ef258b8c99185b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4169156f1fdff9155f318180cafc0801dab47a561cc426ec3ef258b8c99185b.lean#L903).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `279a2b686f7f16d1e52201927fc8b895e41b60d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
