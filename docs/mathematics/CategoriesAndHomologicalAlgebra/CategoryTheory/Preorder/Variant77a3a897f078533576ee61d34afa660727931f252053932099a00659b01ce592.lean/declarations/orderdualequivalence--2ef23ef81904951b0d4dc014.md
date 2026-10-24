# orderDualEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76a5060d76164c82a81d2f772938da113f91e37b9bfe86f1575e592a05658766",
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
  "slug": "orderdualequivalence--2ef23ef81904951b0d4dc014",
  "source": {
    "blob": "a4861471d403f9b7559cd00e80e886b4067fc575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant77a3a897f078533576ee61d34afa660727931f252053932099a00659b01ce592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ef23ef81904951b0d4dc014fd3cb54ceae707059870a85c79d813e3d2739389",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant77a3a897f078533576ee61d34afa660727931f252053932099a00659b01ce592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76a5060d76164c82a81d2f772938da113f91e37b9bfe86f1575e592a05658766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–163.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant77a3a897f078533576ee61d34afa660727931f252053932099a00659b01ce592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant77a3a897f078533576ee61d34afa660727931f252053932099a00659b01ce592.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4861471d403f9b7559cd00e80e886b4067fc575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
