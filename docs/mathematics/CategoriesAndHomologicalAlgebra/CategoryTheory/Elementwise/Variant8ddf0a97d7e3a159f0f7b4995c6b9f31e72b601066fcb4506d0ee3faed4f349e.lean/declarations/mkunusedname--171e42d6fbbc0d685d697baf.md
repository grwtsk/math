# mkUnusedName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4be5f664b6846826c95ba76a39a3d270e891c742e4e7150f1e8d40475c0c45fd",
  "kind": "def",
  "lexical_name": "mkUnusedName",
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
  "slug": "mkunusedname--171e42d6fbbc0d685d697baf",
  "source": {
    "blob": "c09c34def31b2af59f4cc8b86c583e98bec9583b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 133,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:171e42d6fbbc0d685d697baf9564c8128c0d75b676cd283e7867f118a7740c2b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4be5f664b6846826c95ba76a39a3d270e891c742e4e7150f1e8d40475c0c45fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def mkUnusedName (names : List Name) (baseName : Name) : Name :=
  if not (names.contains baseName) then
    baseName
  else
    let rec loop (i : Nat := 0) : Name :=
      let w := Name.appendIndexAfter baseName i
      if names.contains w then
        loop (i + 1)
      else
        w
    loop 1

/-- The `elementwise` attribute can be added to a lemma proving an equation of morphisms, and it
creates a new lemma for a `ConcreteCategory` giving an equation with those morphisms applied
to some value.

Syntax examples:
- `@[elementwise]`
- `@[elementwise nosimp]` to not use `simp` on both sides of the generated lemma
- `@[elementwise (attr := simp)]` to apply the `simp` attribute to both the generated lemma and
  the original lemma.

Example application of `elementwise`:

```lean
@[elementwise]
lemma some_lemma {C : Type*} [Category C]
    {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (h : X ⟶ Z) (w : ...) : f ≫ g = h := ...
```

produces

```lean
lemma some_lemma_apply {C : Type*} [Category C]
    {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (h : X ⟶ Z) (w : ...)
    [ConcreteCategory C] (x : X) : g (f x) = h x := ...
```

Here `X` is being coerced to a type via `CategoryTheory.ConcreteCategory.hasCoeToSort` and
`f`, `g`, and `h` are being coerced to functions via `CategoryTheory.ConcreteCategory.hasCoeToFun`.
Further, we simplify the type using `CategoryTheory.coe_id : ((𝟙 X) : X → X) x = x` and
`CategoryTheory.coe_comp : (f ≫ g) x = g (f x)`,
replacing morphism composition with function composition.

The `[ConcreteCategory C]` argument will be omitted if it is possible to synthesize an instance.

The name of the produced lemma can be specified with `@[elementwise other_lemma_name]`.
If `simp` is added first, the generated lemma will also have the `simp` attribute.
 -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09c34def31b2af59f4cc8b86c583e98bec9583b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
