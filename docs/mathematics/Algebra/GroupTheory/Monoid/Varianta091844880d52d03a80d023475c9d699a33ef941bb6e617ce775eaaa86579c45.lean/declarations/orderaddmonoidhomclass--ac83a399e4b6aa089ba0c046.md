# OrderAddMonoidHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:177042f8906c35b9e42fb0985a855085a598ba49c32a455c1ee234eba2136425",
  "kind": "class",
  "lexical_name": "OrderAddMonoidHomClass",
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
  "slug": "orderaddmonoidhomclass--ac83a399e4b6aa089ba0c046",
  "source": {
    "blob": "26c92e9eb832719ef8fc6c4d04dfe9529672510b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 86,
    "path": "GRWTSK/Algebra/GroupTheory/Monoid/Varianta091844880d52d03a80d023475c9d699a33ef941bb6e617ce775eaaa86579c45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac83a399e4b6aa089ba0c046eabc39cc589f3694a1464ffa471a120d94b1222f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Monoid/Varianta091844880d52d03a80d023475c9d699a33ef941bb6e617ce775eaaa86579c45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:177042f8906c35b9e42fb0985a855085a598ba49c32a455c1ee234eba2136425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class OrderAddMonoidHomClass (F : Type*) (α β : outParam <| Type*) [Preorder α] [Preorder β]
  [AddZeroClass α] [AddZeroClass β] extends AddMonoidHomClass F α β where
  /-- An `OrderAddMonoidHom` is a monotone function. -/
  monotone (f : F) : Monotone f
#align order_add_monoid_hom_class OrderAddMonoidHomClass

end

-- Instances and lemmas are defined below through `@[to_additive]`.
end AddMonoid

section Monoid

/-- `α →*o β` is the type of functions `α → β` that preserve the `OrderedCommMonoid` structure.

`OrderMonoidHom` is also used for ordered group homomorphisms.

When possible, instead of parametrizing results over `(f : α →*o β)`,
you should parametrize over `(F : Type*) [OrderMonoidHomClass F α β] (f : F)`.

When you extend this structure, make sure to extend `OrderMonoidHomClass`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Monoid/Varianta091844880d52d03a80d023475c9d699a33ef941bb6e617ce775eaaa86579c45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Monoid/Varianta091844880d52d03a80d023475c9d699a33ef941bb6e617ce775eaaa86579c45.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26c92e9eb832719ef8fc6c4d04dfe9529672510b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
