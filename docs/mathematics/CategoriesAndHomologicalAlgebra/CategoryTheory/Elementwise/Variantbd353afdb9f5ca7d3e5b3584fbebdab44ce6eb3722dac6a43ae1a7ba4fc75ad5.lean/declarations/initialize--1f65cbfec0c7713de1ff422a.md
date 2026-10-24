# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:757fb36c0612b28436a7d17c0f61a4fe6523d24d021a188b5fe08cd8e980376e",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--1f65cbfec0c7713de1ff422a",
  "source": {
    "blob": "f1d40992cfacb7fddfbee6f3683798167d9d4e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f65cbfec0c7713de1ff422a4e98479656bae5b600a8e665face22083df6ffbd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:757fb36c0612b28436a7d17c0f61a4fe6523d24d021a188b5fe08cd8e980376e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
initialize registerBuiltinAttribute {
  name := `elementwise
  descr := ""
  applicationTime := .afterCompilation
  add := fun src ref kind => match ref with
  | `(attr| elementwise $[nosimp%$nosimp?]? $[(attr := $stx?,*)]?) => MetaM.run' do
    if (kind != AttributeKind.global) then
      throwError "`elementwise` can only be used as a global attribute"
    addRelatedDecl src "_apply" ref stx? fun type value levels => do
      let (newValue, level?) ← elementwiseExpr src type value (simpSides := nosimp?.isNone)
      let newLevels ← if let some level := level? then do
        let w := mkUnusedName levels `w
        unless ← isLevelDefEq level (mkLevelParam w) do
          throwError "Could not create level parameter for ConcreteCategory instance"
        pure <| w :: levels
      else
        pure levels
      pure (newValue, newLevels)
  | _ => throwUnsupportedSyntax }

/--
`elementwise_of% h`, where `h` is a proof of an equation `f = g` between
morphisms `X ⟶ Y` in a concrete category (possibly after a `∀` binder),
produces a proof of equation `∀ (x : X), f x = g x`, but with compositions fully
right associated and identities removed.

A typical example is using `elementwise_of%` to dynamically generate rewrite lemmas:
```lean
example (M N K : MonCat) (f : M ⟶ N) (g : N ⟶ K) (h : M ⟶ K) (w : f ≫ g = h) (m : M) :
    g (f m) = h m := by rw [elementwise_of% w]
```
In this case, `elementwise_of% w` generates the lemma `∀ (x : M), f (g x) = h x`.

Like the `@[elementwise]` attribute, `elementwise_of%` inserts a `ConcreteCategory`
instance argument if it can't synthesize a relevant `ConcreteCategory` instance.
(Technical note: The forgetful functor's universe variable is instantiated with a
fresh level metavariable in this case.)

One difference between `elementwise_of%` and `@[elementwise]` is that `@[elementwise]` by
default applies `simp` to both sides of the generated lemma to get something that is in simp
normal form. `elementwise_of%` does not do this.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d40992cfacb7fddfbee6f3683798167d9d4e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
