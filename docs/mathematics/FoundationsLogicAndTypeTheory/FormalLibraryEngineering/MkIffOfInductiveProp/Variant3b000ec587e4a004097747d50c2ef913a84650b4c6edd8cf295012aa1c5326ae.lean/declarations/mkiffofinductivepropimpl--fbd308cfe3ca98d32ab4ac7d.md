# mkIffOfInductivePropImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1a6e756f7cc0eed2ef0c1b6a14400d4bf5471eb7a9e5a19cb5347bb94fea6b5",
  "kind": "def",
  "lexical_name": "mkIffOfInductivePropImpl",
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
  "slug": "mkiffofinductivepropimpl--fbd308cfe3ca98d32ab4ac7d",
  "source": {
    "blob": "347ac836871184a96643b8e7844ccad55c05d801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3b000ec587e4a004097747d50c2ef913a84650b4c6edd8cf295012aa1c5326ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbd308cfe3ca98d32ab4ac7daa6c85ffcb91b8ca8e29224d71fed14d97f8fd25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3b000ec587e4a004097747d50c2ef913a84650b4c6edd8cf295012aa1c5326ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1a6e756f7cc0eed2ef0c1b6a14400d4bf5471eb7a9e5a19cb5347bb94fea6b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkIffOfInductivePropImpl (ind : Name) (rel : Name) (relStx : Syntax) : MetaM Unit := do
  let .inductInfo inductVal ← getConstInfo ind |
    throwError "mk_iff only applies to inductive declarations"
  let constrs := inductVal.ctors
  let params := inductVal.numParams
  let type := inductVal.type

  let univNames := inductVal.levelParams
  let univs := univNames.map mkLevelParam
  /- we use these names for our universe parameters, maybe we should construct a copy of them
  using `uniq_name` -/

  let (thmTy, shape) ← Meta.forallTelescope type fun fvars ty ↦ do
    if !ty.isProp then throwError "mk_iff only applies to prop-valued declarations"
    let lhs := mkAppN (mkConst ind univs) fvars
    let fvars' := fvars.toList
    let shape_rhss ← constrs.mapM (constrToProp univs (fvars'.take params) (fvars'.drop params))
    let (shape, rhss) := shape_rhss.unzip
    pure (← mkForallFVars fvars (mkApp2 (mkConst `Iff) lhs (mkOrList rhss)), shape)

  let mvar ← mkFreshExprMVar (some thmTy)
  let mvarId := mvar.mvarId!
  let (fvars, mvarId') ← mvarId.intros
  let [mp, mpr] ← mvarId'.apply (mkConst `Iff.intro) | throwError "failed to split goal"

  toCases mp shape

  let ⟨mprFvar, mpr'⟩ ← mpr.intro1
  toInductive mpr' constrs ((fvars.toList.take params).map .fvar) shape mprFvar

  addDecl <| .thmDecl {
    name := rel
    levelParams := univNames
    type := thmTy
    value := ← instantiateMVars mvar
  }
  addDeclarationRangesFromSyntax rel (← getRef) relStx
  addConstInfo relStx rel

/--
Applying the `mk_iff` attribute to an inductively-defined proposition `mk_iff` makes an `iff` rule
`r` with the shape `∀ps is, i as ↔ ⋁_j, ∃cs, is = cs`, where `ps` are the type parameters, `is` are
the indices, `j` ranges over all possible constructors, the `cs` are the parameters for each of the
constructors, and the equalities `is = cs` are the instantiations for each constructor for each of
the indices to the inductive type `i`.

In each case, we remove constructor parameters (i.e. `cs`) when the corresponding equality would
be just `c = i` for some index `i`.

For example, if we try the following:
```lean
@[mk_iff]
structure Foo (m n : Nat) : Prop where
  equal : m = n
  sum_eq_two : m + n = 2
```

Then `#check foo_iff` returns:
```lean
foo_iff : ∀ (m n : Nat), Foo m n ↔ m = n ∧ m + n = 2
```

You can add an optional string after `mk_iff` to change the name of the generated lemma.
For example, if we try the following:
```lean
@[mk_iff bar]
structure Foo (m n : Nat) : Prop where
  equal : m = n
  sum_eq_two : m + n = 2
```

Then `#check bar` returns:
```lean
bar : ∀ (m n : ℕ), Foo m n ↔ m = n ∧ m + n = 2
```

See also the user command `mk_iff_of_inductive_prop`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3b000ec587e4a004097747d50c2ef913a84650b4c6edd8cf295012aa1c5326ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3b000ec587e4a004097747d50c2ef913a84650b4c6edd8cf295012aa1c5326ae.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `347ac836871184a96643b8e7844ccad55c05d801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
