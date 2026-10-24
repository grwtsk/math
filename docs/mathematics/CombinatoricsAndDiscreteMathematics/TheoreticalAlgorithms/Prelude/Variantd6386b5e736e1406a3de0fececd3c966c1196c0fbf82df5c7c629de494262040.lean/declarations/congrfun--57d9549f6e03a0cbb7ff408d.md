# congrFun'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85de3019-7ec7-adef-deae-6faed1146ab3",
  "kind": "theorem",
  "lexical_name": "congrFun'",
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
  "slug": "congrfun--57d9549f6e03a0cbb7ff408d",
  "source": {
    "blob": "a48bfcd7f182375f04a8fe3f19bf3e8424b106cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 450,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d9549f6e03a0cbb7ff408d5526814348c64e856551d504122de2ffd36c3ecb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85de3019-7ec7-adef-deae-6faed1146ab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem congrFun' {α : Sort u} {β : Sort v} {f g : α → β} (h : Eq f g) (a : α) : Eq (f a) (g a) :=
  h ▸ rfl

/-!
Initialize the Quotient Module, which effectively adds the following definitions:
```
opaque Quot {α : Sort u} (r : α → α → Prop) : Sort u

opaque Quot.mk {α : Sort u} (r : α → α → Prop) (a : α) : Quot r

opaque Quot.lift {α : Sort u} {r : α → α → Prop} {β : Sort v} (f : α → β) :
  (∀ a b : α, r a b → Eq (f a) (f b)) → Quot r → β

opaque Quot.ind {α : Sort u} {r : α → α → Prop} {β : Quot r → Prop} :
  (∀ a : α, β (Quot.mk r a)) → ∀ q : Quot r, β q
```
-/
init_quot

/--
Low-level quotient types. Quotient types coarsen the propositional equality for a type `α`, so that
terms related by some relation `r` are considered equal in `Quot r`.

Set-theoretically, `Quot r` can be seen as the set of equivalence classes of `α` modulo `r`.
Functions from `Quot r` must prove that they respect `r`: to define a function `f : Quot r → β`,
it is necessary to provide `f' : α → β` and prove that for all `x : α` and `y : α`,
`r x y → f' x = f' y`.

`Quot` is a built-in primitive:
 * `Quot.mk` places elements of the underlying type `α` into the quotient.
 * `Quot.lift` allows the definition of functions from the quotient to some other type.
 * `Quot.sound` asserts the equality of elements related by `r`.
 * `Quot.ind` is used to write proofs about quotients by assuming that all elements are constructed
   with `Quot.mk`.

The relation `r` is not required to be an equivalence relation; the resulting quotient type's
equality extends `r` to an equivalence as a consequence of the rules for equality and quotients.
When `r` is an equivalence relation, it can be more convenient to use the higher-level type
`Quotient`.
-/
add_decl_doc Quot

/--
Places an element of a type into the quotient that equates terms according to the provided relation.

Given `v : α` and relation `r : α → α → Prop`, `Quot.mk r v : Quot r` is like `v`, except all
observations of `v`'s value must respect `r`.

`Quot.mk` is a built-in primitive:
 * `Quot` is the built-in quotient type.
 * `Quot.lift` allows the definition of functions from the quotient to some other type.
 * `Quot.sound` asserts the equality of elements related by `r`.
 * `Quot.ind` is used to write proofs about quotients by assuming that all elements are constructed
   with `Quot.mk`.
-/
add_decl_doc Quot.mk

/--
A reasoning principle for quotients that allows proofs about quotients to assume that all values are
constructed with `Quot.mk`.

`Quot.rec` is analogous to the [recursor](lean-manual://section/recursors) for a structure, and can
be used when the resulting type is not necessarily a proposition.

`Quot.ind` is a built-in primitive:
 * `Quot` is the built-in quotient type.
 * `Quot.mk` places elements of the underlying type `α` into the quotient.
 * `Quot.lift` allows the definition of functions from the quotient to some other type.
 * `Quot.sound` asserts the equality of elements related by `r`.
-/
add_decl_doc Quot.ind

/--
Lifts a function from an underlying type to a function on a quotient, requiring that it respects the
quotient's relation.

Given a relation `r : α → α → Prop` and a quotient `Quot r`, applying a function `f : α → β`
requires a proof `a` that `f` respects `r`. In this case, `Quot.lift f a : Quot r → β` computes the
same values as `f`.

Lean's type theory includes a [definitional reduction](lean-manual://section/type-theory) from
`Quot.lift f h (Quot.mk r v)` to `f v`.

`Quot.lift` is a built-in primitive:
 * `Quot` is the built-in quotient type.
 * `Quot.mk` places elements of the underlying type `α` into the quotient.
 * `Quot.sound` asserts the equality of elements related by `r`
 * `Quot.ind` is used to write proofs about quotients by assuming that all elements are constructed
   with `Quot.mk`; it is analogous to the [recursor](lean-manual://section/recursors) for a
   structure.
-/
add_decl_doc Quot.lift

/--
Unsafe auxiliary constant used by the compiler to erase `Quot.lift`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48bfcd7f182375f04a8fe3f19bf3e8424b106cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
