# expandMatchAltsIntoMatchAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93c50f7edcb76e7c9711f27810033e265a83ee6e608234189412c2eda7541009",
  "kind": "def",
  "lexical_name": "expandMatchAltsIntoMatchAux",
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
  "slug": "expandmatchaltsintomatchaux--22ba77415822f3d5806489e7",
  "source": {
    "blob": "f231e0603e9ee2639fdca4b396b06e20111c1cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 495,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22ba77415822f3d5806489e7b5bb9cb8a282ddb6ecfe63240e2dd2744f19b12c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93c50f7edcb76e7c9711f27810033e265a83ee6e608234189412c2eda7541009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def expandMatchAltsIntoMatchAux (matchAlts : Syntax) (isTactic : Bool) (useExplicit : Bool) : Nat → Array Syntax → Array Ident → MacroM Syntax
  | 0,   discrs, xs => do
    if isTactic then
      `(tactic|match $[$discrs:term],* with $matchAlts:matchAlts)
    else
      let stx ← `(match $[$discrs:term],* with $matchAlts:matchAlts)
      clearInMatch stx xs
  | n+1, discrs, xs => withFreshMacroScope do
    let x ← `(x) -- If this were implementation-detail, the `contradiction` tactic used by match would not find it.
    let d ← `(@$x:ident)
    let body ← expandMatchAltsIntoMatchAux matchAlts isTactic useExplicit n (discrs.push d) (xs.push x)
    if isTactic then
      `(tactic| intro $x:term; $body:tactic)
    else if useExplicit then
      `(@fun $x => $body)
    else
      `(fun $x => $body)

/--
  Expand `matchAlts` syntax into a full `match`-expression.
  Example:
  ```
  | 0, true => alt_1
  | i, _    => alt_2
  ```
  expands into (for tactic == false)
  ```
  fun x_1 x_2 =>
  match @x_1, @x_2 with
  | 0, true => alt_1
  | i, _    => alt_2
  ```
  and (for tactic == true)
  ```
  intro x_1; intro x_2;
  match @x_1, @x_2 with
  | 0, true => alt_1
  | i, _    => alt_2
  ```

  If `useExplicit = true`, we add a `@` before `fun` to disable implicit lambdas. We disable them when processing `let` and `let rec` declarations
  to make sure the behavior is consistent with top-level declarations where we can write
  ```
  def f : {α : Type} → α → α
    | _, a => a
  ```
  We use `useExplicit = false` when we are elaborating the `fun | ... => ... | ...` notation. See issue #1132.
  If `@fun` is used with this notation, the we set `useExplicit = true`.
  We also use `useExplicit = false` when processing `instance ... where` notation declarations. The motivation is to have compact declarations such as
  ```
  instance [Alternative m] : MonadLiftT Option m where
  monadLift -- We don't want to provide the implicit arguments of `monadLift` here. One should use `monadLift := @fun ...` if they want to provide them.
    | some a => pure a
    | none => failure
  ```

  Remark: we add `@` at discriminants to make sure we don't consume implicit arguments, and to make the behavior consistent with `fun`.
  Example:
  ```
  inductive T : Type 1 :=
  | mkT : (forall {a : Type}, a -> a) -> T

  def makeT (f : forall {a : Type}, a -> a) : T :=
    mkT f

  def makeT' : (forall {a : Type}, a -> a) -> T
  | f => mkT f
  ```
  The two definitions should be elaborated without errors and be equivalent.
 -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f231e0603e9ee2639fdca4b396b06e20111c1cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
