# WellOrderInductionData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0926a143ff5bcf508c7890ec0e5b1bc8f2992becd2203de378aee891115d6a2",
  "kind": "structure",
  "lexical_name": "WellOrderInductionData",
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
  "slug": "wellorderinductiondata--f584077f1585d65eebfd7554",
  "source": {
    "blob": "407d2a955eb81f515f14f90f019d4b800838d8b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb902977d92fdb60e75262beb7f7dae55dab7502621bf1ab6ee39012ed97a51a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f584077f1585d65eebfd75545d8e8410c79f03c5b8e93eaf3656557ef51fc834",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb902977d92fdb60e75262beb7f7dae55dab7502621bf1ab6ee39012ed97a51a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0926a143ff5bcf508c7890ec0e5b1bc8f2992becd2203de378aee891115d6a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WellOrderInductionData where
  /-- A section `F.obj (op j) → F.obj (op (Order.succ j))` to the restriction
  `F.obj (op (Order.succ j)) → F.obj (op j)` when `j` is not maximal. -/
  succ (j : J) (hj : ¬IsMax j) (x : F.obj (op j)) : F.obj (op (Order.succ j))
  map_succ (j : J) (hj : ¬IsMax j) (x : F.obj (op j)) :
      F.map (homOfLE (Order.le_succ j)).op (succ j hj x) = x
  /-- When `j` is a limit element, and `x` is a compatible family of elements
  in `F.obj (op i)` for all `i < j`, this is a lifting to `F.obj (op j)`. -/
  lift (j : J) (hj : Order.IsSuccLimit j)
    (x : ((OrderHom.Subtype.val (· ∈ Set.Iio j)).monotone.functor.op ⋙ F).sections) :
      F.obj (op j)
  map_lift (j : J) (hj : Order.IsSuccLimit j)
    (x : ((OrderHom.Subtype.val (· ∈ Set.Iio j)).monotone.functor.op ⋙ F).sections)
    (i : J) (hi : i < j) :
        F.map (homOfLE hi.le).op (lift j hj x) = x.val (op ⟨i, hi⟩)

namespace WellOrderInductionData

variable {F} in
/-- Given a functor `F : Jᵒᵖ ⥤ Type v` where `J` is a well-ordered type,
this is a constructor for `F.WellOrderInductionData` which does not take
data as inputs but proofs of the existence of certain elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb902977d92fdb60e75262beb7f7dae55dab7502621bf1ab6ee39012ed97a51a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantb902977d92fdb60e75262beb7f7dae55dab7502621bf1ab6ee39012ed97a51a9.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `407d2a955eb81f515f14f90f019d4b800838d8b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
