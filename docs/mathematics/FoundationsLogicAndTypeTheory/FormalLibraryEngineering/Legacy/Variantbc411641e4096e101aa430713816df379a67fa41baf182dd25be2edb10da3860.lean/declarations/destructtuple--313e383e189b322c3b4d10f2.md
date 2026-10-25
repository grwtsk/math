# destructTuple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b84eb7b32e2e27bb3d14448a4d232b165ef8f027a5853b58a10723c877ed3caf",
  "kind": "def",
  "lexical_name": "destructTuple",
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
  "slug": "destructtuple--313e383e189b322c3b4d10f2",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 964,
    "line": 848,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:313e383e189b322c3b4d10f2f6b2e4becf593ccc8ebc0425888e88a4c12160a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b84eb7b32e2e27bb3d14448a4d232b165ef8f027a5853b58a10723c877ed3caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 848–964.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def destructTuple (uvars : Array Var) (x : Syntax) (body : Syntax) : MacroM Syntax := do
  if uvars.size = 0 then
    return body
  else if h : uvars.size = 1 then
    `(let $(uvars[0]):ident := $x; $body)
  else
    destruct uvars.toList x body
where
  destruct (as : List Var) (x : Syntax) (body : Syntax) : MacroM Syntax := do
    match as with
      | [a, b]  => `(let $a:ident := $x.1; let $b:ident := $x.2; $body)
      | a :: as => withFreshMacroScope do
        let rest ← destruct as (← `(x)) body
        `(let $a:ident := $x.1; let x := $x.2; $rest)
      | _ => unreachable!

/-!
The procedure `ToTerm.run` converts a `CodeBlock` into a `Syntax` term.
We use this method to convert
1- The `CodeBlock` for a root `do ...` term into a `Syntax` term. This kind of
   `CodeBlock` never contains `break` nor `continue`. Moreover, the collection
   of updated variables is not packed into the result.
   Thus, we have two kinds of exit points
     - `Code.action e` which is converted into `e`
     - `Code.return _ e` which is converted into `pure e`

   We use `Kind.regular` for this case.

2- The `CodeBlock` for `b` at `for x in xs do b`. In this case, we need to generate
   a `Syntax` term representing a function for the `xs.forIn` combinator.

   a) If `b` contain a `Code.return _ a` exit point. The generated `Syntax` term
      has type `m (ForInStep (Option α × σ))`, where `a : α`, and the `σ` is the type
      of the tuple of variables reassigned by `b`.
      We use `Kind.forInWithReturn` for this case

   b) If `b` does not contain a `Code.return _ a` exit point. Then, the generated
      `Syntax` term has type `m (ForInStep σ)`.
      We use `Kind.forIn` for this case.

3- The `CodeBlock` `c` for a `do` sequence nested in a monadic combinator (e.g., `MonadExcept.tryCatch`).

   The generated `Syntax` term for `c` must inform whether `c` "exited" using `Code.action`, `Code.return`,
   `Code.break` or `Code.continue`. We use the auxiliary types `DoResult`s for storing this information.
   For example, the auxiliary type `DoResultPBC α σ` is used for a code block that exits with `Code.action`,
   **and** `Code.break`/`Code.continue`, `α` is the type of values produced by the exit `action`, and
   `σ` is the type of the tuple of reassigned variables.
   The type `DoResult α β σ` is usedf for code blocks that exit with
   `Code.action`, `Code.return`, **and** `Code.break`/`Code.continue`, `β` is the type of the returned values.
   We don't use `DoResult α β σ` for all cases because:

      a) The elaborator would not be able to infer all type parameters without extra annotations. For example,
         if the code block does not contain `Code.return _ _`, the elaborator will not be able to infer `β`.

      b) We need to pattern match on the result produced by the combinator (e.g., `MonadExcept.tryCatch`),
         but we don't want to consider "unreachable" cases.

   We do not distinguish between cases that contain `break`, but not `continue`, and vice versa.

   When listing all cases, we use `a` to indicate the code block contains `Code.action _`, `r` for `Code.return _ _`,
   and `b/c` for a code block that contains `Code.break _` or `Code.continue _`.

   - `a`: `Kind.regular`, type `m (α × σ)`

   - `r`: `Kind.regular`, type `m (α × σ)`
           Note that the code that pattern matches on the result will behave differently in this case.
           It produces `return a` for this case, and `pure a` for the previous one.

   - `b/c`: `Kind.nestedBC`, type `m (DoResultBC σ)`

   - `a` and `r`:   `Kind.nestedPR`, type `m (DoResultPR α β σ)`

   - `a` and `bc`:  `Kind.nestedSBC`, type `m (DoResultSBC α σ)`

   - `r` and `bc`:  `Kind.nestedSBC`, type `m (DoResultSBC α σ)`
         Again the code that pattern matches on the result will behave differently in this case and
         the previous one. It produces `return a` for the constructor `DoResultSPR.pureReturn a u` for
         this case, and `pure a` for the previous case.

   - `a`, `r`, `b/c`: `Kind.nestedPRBC`, type type `m (DoResultPRBC α β σ)`

Here is the recipe for adding new combinators with nested `do`s.
Example: suppose we want to support `repeat doSeq`. Assuming we have `repeat : m α → m α`
1- Convert `doSeq` into `codeBlock : CodeBlock`
2- Create term `term` using `mkNestedTerm code m uvars a r bc` where
   `code` is `codeBlock.code`, `uvars` is an array containing `codeBlock.uvars`,
   `m` is a `Syntax` representing the Monad, and
   `a` is true if `code` contains `Code.action _`,
   `r` is true if `code` contains `Code.return _ _`,
   `bc` is true if `code` contains `Code.break _` or `Code.continue _`.

   Remark: for combinators such as `repeat` that take a single `doSeq`, all
   arguments, but `m`, are extracted from `codeBlock`.
3- Create the term `repeat $term`
4- and then, convert it into a `doSeq` using `matchNestedTermResult ref (repeat $term) uvsar a r bc`

-/

/--
Helper method for annotating `term` with the raw syntax `ref`.
We use this method to implement finer-grained term infos for `do`-blocks.

We use `withRef term` to make sure the synthetic position for the `with_annotate_term` is equal
to the one for `term`. This is important for producing error messages when there is a type mismatch.
Consider the following example:
```
opaque f : IO Nat

def g : IO String := do
  f
```
There is at type mismatch at `f`, but it is detected when elaborating the expanded term
containing the `with_annotate_term .. f`. The current `getRef` when this `annotate` is invoked
is not necessarily `f`. Actually, it is the whole `do`-block. By using `withRef` we ensure
the synthetic position for the `with_annotate_term ..` is equal to `term`.
Recall that synthetic positions are used when generating error messages.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
