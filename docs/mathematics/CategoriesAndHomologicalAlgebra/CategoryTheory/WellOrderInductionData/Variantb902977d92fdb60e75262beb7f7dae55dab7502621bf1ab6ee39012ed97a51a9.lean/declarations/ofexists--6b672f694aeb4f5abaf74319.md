# ofExists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7098a013475aa644c25f995b35b07066d7bcae5664168ced3f6afdb12b815f0c",
  "kind": "def",
  "lexical_name": "ofExists",
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
  "slug": "ofexists--6b672f694aeb4f5abaf74319",
  "source": {
    "blob": "407d2a955eb81f515f14f90f019d4b800838d8b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb902977d92fdb60e75262beb7f7dae55dab7502621bf1ab6ee39012ed97a51a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b672f694aeb4f5abaf74319b34ea6398efa9597d9b49fda18417e1abe726e94",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb902977d92fdb60e75262beb7f7dae55dab7502621bf1ab6ee39012ed97a51a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7098a013475aa644c25f995b35b07066d7bcae5664168ced3f6afdb12b815f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofExists
    (h₁ : ∀ (j : J) (_ : ¬IsMax j), Function.Surjective (F.map (homOfLE (Order.le_succ j)).op))
    (h₂ : ∀ (j : J) (_ : Order.IsSuccLimit j)
      (x : ((OrderHom.Subtype.val (· ∈ Set.Iio j)).monotone.functor.op ⋙ F).sections),
      ∃ (y : F.obj (op j)), ∀ (i : J) (hi : i < j),
        F.map (homOfLE hi.le).op y = x.val (op ⟨i, hi⟩)) :
    F.WellOrderInductionData where
  succ j hj x := (h₁ j hj x).choose
  map_succ j hj x := (h₁ j hj x).choose_spec
  lift j hj x := (h₂ j hj x).choose
  map_lift j hj x := (h₂ j hj x).choose_spec

variable {F} (d : F.WellOrderInductionData) [OrderBot J]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Given `d : F.WellOrderInductionData`, `val₀ : F.obj (op ⊥)` and `j : J`,
this is the data of an element `val : F.obj (op j)` such that the induced
compatible family of elements in all `F.obj (op i)` for `i ≤ j`
is determined by `val₀` and the choice of "liftings" given by `d`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb902977d92fdb60e75262beb7f7dae55dab7502621bf1ab6ee39012ed97a51a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb902977d92fdb60e75262beb7f7dae55dab7502621bf1ab6ee39012ed97a51a9.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `407d2a955eb81f515f14f90f019d4b800838d8b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
