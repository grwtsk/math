# latToBddLatCatForgetAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fa1605c48f570801bf7f41fd3378199fcaae905ecbfe314f475d3037b818f9e",
  "kind": "def",
  "lexical_name": "latToBddLatCatForgetAdjunction",
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
  "slug": "lattobddlatcatforgetadjunction--de2c56418e3d56f25f0a5de4",
  "source": {
    "blob": "bd18e87b4fef302ed06ce2cdf02312a1b59e5336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 202,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de2c56418e3d56f25f0a5de421d61e947eaae64987aeef369a880a280d8779fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fa1605c48f570801bf7f41fd3378199fcaae905ecbfe314f475d3037b818f9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def latToBddLatCatForgetAdjunction : latToBddLatCat.{u} ⊣ forget₂ BddLatCat LatCat :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun X Y =>
        { toFun := fun f =>
            { toFun := f ∘ some ∘ some
              map_sup' := fun a b => (congr_arg f <| by rfl).trans (f.map_sup' _ _)
              map_inf' := fun a b => (congr_arg f <| by rfl).trans (f.map_inf' _ _) }
          invFun := fun f => LatticeHom.withTopWithBot' f
          left_inv := fun f =>
            BoundedLatticeHom.ext fun a =>
              match a with
              | none => f.map_top'.symm
              | some none => f.map_bot'.symm
              | some (some a) => rfl
          right_inv := fun f => LatticeHom.ext fun a => rfl }
      homEquiv_naturality_left_symm := fun f g =>
        BoundedLatticeHom.ext fun a =>
          match a with
          | none => rfl
          | some none => rfl
          | some (some a) => rfl
      homEquiv_naturality_right := fun f g => LatticeHom.ext fun a => rfl }
#align Lat_to_BddLat_forget_adjunction latToBddLatCatForgetAdjunction

/-- `latToBddLatCat` and `OrderDual` commute. -/
-- Porting note: the `simpNF` linter is not happy as it simplifies something that does not
-- have prettyprinting effects.
-- It seems like it is simplifying for example the first type
-- `(↑(BddLatCat.dualEquiv.functor.obj (latToBddLatCat.obj X.op.unop)).toLat)`
-- to
-- `(↑(latToBddLatCat.obj X).toLat)ᵒᵈ`
-- Interestingly, the linter is silent, if the proof is `sorry`-ed out...
-- see https://github.com/leanprover-community/mathlib4/issues/5049
-- @[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd18e87b4fef302ed06ce2cdf02312a1b59e5336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
