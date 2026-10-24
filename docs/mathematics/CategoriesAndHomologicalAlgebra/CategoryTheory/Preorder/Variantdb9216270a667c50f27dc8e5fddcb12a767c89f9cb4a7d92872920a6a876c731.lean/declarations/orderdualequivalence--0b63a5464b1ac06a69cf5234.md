# orderDualEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b28863fa4766f7ed88edf34e506b9c29f10524077df8e2e0cf6c030d16c22f4",
  "kind": "def",
  "lexical_name": "orderDualEquivalence",
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
  "slug": "orderdualequivalence--0b63a5464b1ac06a69cf5234",
  "source": {
    "blob": "c47ccd60dbca995639609972346ddb27c57cb20d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantdb9216270a667c50f27dc8e5fddcb12a767c89f9cb4a7d92872920a6a876c731.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b63a5464b1ac06a69cf5234e0315fb1e6e48d59184c73c9560893074b779aa6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantdb9216270a667c50f27dc8e5fddcb12a767c89f9cb4a7d92872920a6a876c731.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b28863fa4766f7ed88edf34e506b9c29f10524077df8e2e0cf6c030d16c22f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderDualEquivalence : Xᵒᵈ ≌ Xᵒᵖ where
  functor :=
    { obj := fun x => op (OrderDual.ofDual x)
      map := fun f => (homOfLE (leOfHom f)).op }
  inverse :=
    { obj := fun x => OrderDual.toDual x.unop
      map := fun f => (homOfLE (leOfHom f.unop)) }
  unitIso := Iso.refl _
  counitIso := Iso.refl _

end CategoryTheory

section

open CategoryTheory

variable {X : Type u} {Y : Type v} [Preorder X] [Preorder Y]

/-- A monotone function between preorders induces a functor between the associated categories. -/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantdb9216270a667c50f27dc8e5fddcb12a767c89f9cb4a7d92872920a6a876c731.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantdb9216270a667c50f27dc8e5fddcb12a767c89f9cb4a7d92872920a6a876c731.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c47ccd60dbca995639609972346ddb27c57cb20d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
