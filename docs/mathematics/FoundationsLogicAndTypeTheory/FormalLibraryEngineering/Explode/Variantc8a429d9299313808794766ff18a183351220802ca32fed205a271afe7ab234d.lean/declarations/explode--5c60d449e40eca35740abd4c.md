# explode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ed5585bd1163ba866bb74db768d3f627c64ce2f945aea546272b5495bee3e3b",
  "kind": "def",
  "lexical_name": "explode",
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
  "slug": "explode--5c60d449e40eca35740abd4c",
  "source": {
    "blob": "d4ba38983b5400e2122eabc404dc4642aeb70cd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantc8a429d9299313808794766ff18a183351220802ca32fed205a271afe7ab234d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c60d449e40eca35740abd4cb8ea1f0c9fb41f64bd40a59edcbbf84bd9253a75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantc8a429d9299313808794766ff18a183351220802ca32fed205a271afe7ab234d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ed5585bd1163ba866bb74db768d3f627c64ce2f945aea546272b5495bee3e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def explode (e : Expr) (filterProofs : Bool := true) : MetaM Entries := do
  let filter (e : Expr) : MetaM Bool :=
    if filterProofs then Meta.isProof e else return true
  let (_, entries) ← explodeCore (start := true) filter false e 0 default
  return entries

open Elab in
/--
`#explode expr` displays a proof term in a line-by-line format somewhat akin to a Fitch-style
proof or the Metamath proof style.

For example, exploding the following theorem:

```lean
#explode iff_of_true
```

produces:

```lean
iff_of_true : ∀ {a b : Prop}, a → b → (a ↔ b)

0│         │ a         ├ Prop
1│         │ b         ├ Prop
2│         │ ha        ├ a
3│         │ hb        ├ b
4│         │ x✝        │ ┌ a
5│4,3      │ ∀I        │ a → b
6│         │ x✝        │ ┌ b
7│6,2      │ ∀I        │ b → a
8│5,7      │ Iff.intro │ a ↔ b
9│0,1,2,3,8│ ∀I        │ ∀ {a b : Prop}, a → b → (a ↔ b)
```

## Overview

The `#explode` command takes the body of the theorem and decomposes it into its parts,
displaying each expression constructor one at a time. The constructor is indicated
in some way in column 3, and its dependencies are recorded in column 2.

These are the main constructor types:

  - Lambda expressions (`Expr.lam`). The expression `fun (h : p) => s` is displayed as
    ```lean
     0│    │ h   │ ┌ p
     1│**  │ **  │ │ q
     2│1,2 │ ∀I  │ ∀ (h : p), q
    ```
    with `**` a wildcard, and there can be intervening steps between 0 and 1.
    Nested lambda expressions can be merged, and `∀I` can depend on a whole list of arguments.

  - Applications (`Expr.app`). The expression `f a b c` is displayed as
     ```lean
     0│**      │ f  │ A → B → C → D
     1│**      │ a  │ A
     2│**      │ b  │ B
     3│**      │ c  │ C
     1│0,1,2,3 │ ∀E │ D
     ```
     There can be intervening steps between each of these.
     As a special case, if `f` is a constant it can be omitted and the display instead looks like
     ```lean
     0│**    │ a │ A
     1│**    │ b │ B
     2│**    │ c │ C
     3│1,2,3 │ f │ D
     ```

  - Let expressions (`Expr.letE`) do not display in any special way, but they do
    ensure that in `let x := v; b` that `v` is processed first and then `b`, rather
    than first doing zeta reduction. This keeps lambda merging and application merging
    from making proofs with `let` confusing to interpret.

  - Everything else (constants, fvars, etc.) display `x : X` as
    ```lean
    0│  │ x │ X
    ```

## In more detail

The output of `#explode` is a Fitch-style proof in a four-column diagram modeled after Metamath
proof displays like [this](http://us.metamath.org/mpeuni/ru.html). The headers of the columns are
"Step", "Hyp", "Ref", "Type" (or "Expression" in the case of Metamath):
* **Step**: An increasing sequence of numbers for each row in the proof, used in the Hyp fields.
* **Hyp**: The direct children of the current step. These are step numbers for the subexpressions
  for this step's expression. For theorem applications, it's the theorem arguments, and for
  foralls it is all the bound variables and the conclusion.
* **Ref**: The name of the theorem being applied. This is well-defined in Metamath, but in Lean
  there are some special steps that may have long names because the structure of proof terms doesn't
  exactly match this mold.
  * If the theorem is `foo (x y : Z) : A x -> B y -> C x y`:
    * the Ref field will contain `foo`,
    * `x` and `y` will be suppressed, because term construction is not interesting, and
    * the Hyp field will reference steps proving `A x` and `B y`. This corresponds to a proof term
      like `@foo x y pA pB` where `pA` and `pB` are subproofs.
    * In the Hyp column, suppressed terms are omitted, including terms that ought to be
      suppressed but are not (in particular lambda arguments).
      TODO: implement a configuration option to enable representing suppressed terms using
      an `_` rather than a step number.
  * If the head of the proof term is a local constant or lambda, then in this case the Ref will
    say `∀E` for forall-elimination. This happens when you have for example `h : A -> B` and
    `ha : A` and prove `b` by `h ha`; we reinterpret this as if it said `∀E h ha` where `∀E` is
    (n-ary) modus ponens.
  * If the proof term is a lambda, we will also use `∀I` for forall-introduction, referencing the
    body of the lambda. The indentation level will increase, and a bracket will surround the proof
    of the body of the lambda, starting at a proof step labeled with the name of the lambda variable
    and its type, and ending with the `∀I` step. Metamath doesn't have steps like this, but the
    style is based on Fitch proofs in first-order logic.
* **Type**: This contains the type of the proof term, the theorem being proven at the current step.

Also, it is common for a Lean theorem to begin with a sequence of lambdas introducing local
constants of the theorem. In order to minimize the indentation level, the `∀I` steps at the end of
the proof will be introduced in a group and the indentation will stay fixed. (The indentation
brackets are only needed in order to delimit the scope of assumptions, and these assumptions
have global scope anyway so detailed tracking is not necessary.)
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantc8a429d9299313808794766ff18a183351220802ca32fed205a271afe7ab234d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantc8a429d9299313808794766ff18a183351220802ca32fed205a271afe7ab234d.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4ba38983b5400e2122eabc404dc4642aeb70cd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
