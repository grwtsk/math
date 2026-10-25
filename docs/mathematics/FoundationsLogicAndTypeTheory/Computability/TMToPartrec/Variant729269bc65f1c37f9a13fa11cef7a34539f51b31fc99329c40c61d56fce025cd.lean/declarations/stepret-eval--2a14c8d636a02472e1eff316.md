# stepRet_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a6689a642cb737eed9cc443ce79432f68557e6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 722,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fbd51f6-63c5-e9cb-777d-a2f9ce8d29a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25ac1e56-6f7a-94d6-df16-bb6f4b4345f6",
  "kind": "theorem",
  "lexical_name": "stepRet_eval",
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
  "slug": "stepret-eval--2a14c8d636a02472e1eff316",
  "source": {
    "blob": "5a6689a642cb737eed9cc443ce79432f68557e6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 722,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a14c8d636a02472e1eff3160ece9c42e830ccd690288ca928d7c378bc4879b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25ac1e56-6f7a-94d6-df16-bb6f4b4345f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stepRet_eval {k v} : eval step (stepRet k v) = Cfg.halt <$> k.eval v := by
  induction k generalizing v
  case halt =>
    simp only [mem_eval, Cont.eval, map_pure]
    exact Part.eq_some_iff.2 (mem_eval.2 ⟨ReflTransGen.refl, rfl⟩)
  case cons₁ fs as k IH =>
    rw [Cont.eval, stepRet, code_is_ok]
    simp only [← bind_pure_comp, bind_assoc]; congr; funext v'
    rw [reaches_eval]; swap; exact ReflTransGen.single rfl
    rw [stepRet, IH, bind_pure_comp]
  case cons₂ ns k IH => rw [Cont.eval, stepRet]; exact IH
  case comp f k IH =>
    rw [Cont.eval, stepRet, code_is_ok]
    simp only [← bind_pure_comp, bind_assoc]; congr; funext v'
    rw [reaches_eval]; swap; exact ReflTransGen.single rfl
    rw [IH, bind_pure_comp]
  case fix f k IH =>
    rw [Cont.eval, stepRet]; simp only [bind_pure_comp]
    split_ifs; · exact IH
    simp only [← bind_pure_comp, bind_assoc, cont_eval_fix (code_is_ok _)]
    congr; funext; rw [bind_pure_comp, ← IH]
    exact reaches_eval (ReflTransGen.single rfl)
#align turing.to_partrec.step_ret_eval Turing.ToPartrec.stepRet_eval

end ToPartrec

/-!
## Simulating sequentialized partial recursive functions in TM2

At this point we have a sequential model of partial recursive functions: the `Cfg` type and
`step : Cfg → Option Cfg` function from the previous section. The key feature of this model is that
it does a finite amount of computation (in fact, an amount which is statically bounded by the size
of the program) between each step, and no individual step can diverge (unlike the compositional
semantics, where every sub-part of the computation is potentially divergent). So we can utilize the
same techniques as in the other TM simulations in `Computability.TuringMachine` to prove that
each step corresponds to a finite number of steps in a lower level model. (We don't prove it here,
but in anticipation of the complexity class P, the simulation is actually polynomial-time as well.)

The target model is `Turing.TM2`, which has a fixed finite set of stacks, a bit of local storage,
with programs selected from a potentially infinite (but finitely accessible) set of program
positions, or labels `Λ`, each of which executes a finite sequence of basic stack commands.

For this program we will need four stacks, each on an alphabet `Γ'` like so:

    inductive Γ'  | consₗ | cons | bit0 | bit1

We represent a number as a bit sequence, lists of numbers by putting `cons` after each element, and
lists of lists of natural numbers by putting `consₗ` after each list. For example:

    0 ~> []
    1 ~> [bit1]
    6 ~> [bit0, bit1, bit1]
    [1, 2] ~> [bit1, cons, bit0, bit1, cons]
    [[], [1, 2]] ~> [consₗ, bit1, cons, bit0, bit1, cons, consₗ]

The four stacks are `main`, `rev`, `aux`, `stack`. In normal mode, `main` contains the input to the
current program (a `List ℕ`) and `stack` contains data (a `List (List ℕ)`) associated to the
current continuation, and in `ret` mode `main` contains the value that is being passed to the
continuation and `stack` contains the data for the continuation. The `rev` and `aux` stacks are
usually empty; `rev` is used to store reversed data when e.g. moving a value from one stack to
another, while `aux` is used as a temporary for a `main`/`stack` swap that happens during `cons₁`
evaluation.

The only local store we need is `Option Γ'`, which stores the result of the last pop
operation. (Most of our working data are natural numbers, which are too large to fit in the local
store.)

The continuations from the previous section are data-carrying, containing all the values that have
been computed and are awaiting other arguments. In order to have only a finite number of
continuations appear in the program so that they can be used in machine states, we separate the
data part (anything with type `List ℕ`) from the `Cont` type, producing a `Cont'` type that lacks
this information. The data is kept on the `stack` stack.

Because we want to have subroutines for e.g. moving an entire stack to another place, we use an
infinite inductive type `Λ'` so that we can execute a program and then return to do something else
without having to define too many different kinds of intermediate states. (We must nevertheless
prove that only finitely many labels are accessible.) The labels are:

* `move p k₁ k₂ q`: move elements from stack `k₁` to `k₂` while `p` holds of the value being moved.
  The last element, that fails `p`, is placed in neither stack but left in the local store.
  At the end of the operation, `k₂` will have the elements of `k₁` in reverse order. Then do `q`.
* `clear p k q`: delete elements from stack `k` until `p` is true. Like `move`, the last element is
  left in the local storage. Then do `q`.
* `copy q`: Move all elements from `rev` to both `main` and `stack` (in reverse order),
  then do `q`. That is, it takes `(a, b, c, d)` to `(b.reverse ++ a, [], c, b.reverse ++ d)`.
* `push k f q`: push `f s`, where `s` is the local store, to stack `k`, then do `q`. This is a
  duplicate of the `push` instruction that is part of the TM2 model, but by having a subroutine
  just for this purpose we can build up programs to execute inside a `goto` statement, where we
  have the flexibility to be general recursive.
* `read (f : Option Γ' → Λ')`: go to state `f s` where `s` is the local store. Again this is only
  here for convenience.
* `succ q`: perform a successor operation. Assuming `[n]` is encoded on `main` before,
  `[n+1]` will be on main after. This implements successor for binary natural numbers.
* `pred q₁ q₂`: perform a predecessor operation or `case` statement. If `[]` is encoded on
  `main` before, then we transition to `q₁` with `[]` on main; if `(0 :: v)` is on `main` before
  then `v` will be on `main` after and we transition to `q₁`; and if `(n+1 :: v)` is on `main`
  before then `n :: v` will be on `main` after and we transition to `q₂`.
* `ret k`: call continuation `k`. Each continuation has its own interpretation of the data in
  `stack` and sets up the data for the next continuation.
  * `ret (cons₁ fs k)`: `v :: KData` on `stack` and `ns` on `main`, and the next step expects
    `v` on `main` and `ns :: KData` on `stack`. So we have to do a little dance here with six
    reverse-moves using the `aux` stack to perform a three-point swap, each of which involves two
    reversals.
  * `ret (cons₂ k)`: `ns :: KData` is on `stack` and `v` is on `main`, and we have to put
    `ns.headI :: v` on `main` and `KData` on `stack`. This is done using the `head` subroutine.
  * `ret (fix f k)`: This stores no data, so we just check if `main` starts with `0` and
    if so, remove it and call `k`, otherwise `clear` the first value and call `f`.
  * `ret halt`: the stack is empty, and `main` has the output. Do nothing and halt.

In addition to these basic states, we define some additional subroutines that are used in the
above:
* `push'`, `peek'`, `pop'` are special versions of the builtins that use the local store to supply
  inputs and outputs.
* `unrev`: special case `move false rev main` to move everything from `rev` back to `main`. Used as
  a cleanup operation in several functions.
* `moveExcl p k₁ k₂ q`: same as `move` but pushes the last value read back onto the source stack.
* `move₂ p k₁ k₂ q`: double `move`, so that the result comes out in the right order at the target
  stack. Implemented as `moveExcl p k rev; move false rev k₂`. Assumes that neither `k₁` nor `k₂`
  is `rev` and `rev` is initially empty.
* `head k q`: get the first natural number from stack `k` and reverse-move it to `rev`, then clear
  the rest of the list at `k` and then `unrev` to reverse-move the head value to `main`. This is
  used with `k = main` to implement regular `head`, i.e. if `v` is on `main` before then `[v.headI]`
  will be on `main` after; and also with `k = stack` for the `cons` operation, which has `v` on
  `main` and `ns :: KData` on `stack`, and results in `KData` on `stack` and `ns.headI :: v` on
  `main`.
* `trNormal` is the main entry point, defining states that perform a given `code` computation.
  It mostly just dispatches to functions written above.

The main theorem of this section is `tr_eval`, which asserts that for each that for each code `c`,
the state `init c v` steps to `halt v'` in finitely many steps if and only if
`Code.eval c v = some v'`.
-/


set_option linter.uppercaseLean3 false

namespace PartrecToTM2

section

open ToPartrec

/-- The alphabet for the stacks in the program. `bit0` and `bit1` are used to represent `ℕ` values
as lists of binary digits, `cons` is used to separate `List ℕ` values, and `consₗ` is used to
separate `List (List ℕ)` values. See the section documentation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6689a642cb737eed9cc443ce79432f68557e6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
