# expandMatchAltsIntoMatchAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d23a4696378bd74d7db81a91d5ce828e0fa6878bcd1ac1f10837d0c813473421",
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
  "slug": "expandmatchaltsintomatchaux--1b4c77130f3b014e0613d8f5",
  "source": {
    "blob": "11f38a712a1b2233d5a315c2f28f444b04e00086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 487,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b4c77130f3b014e0613d8f5290851b452fa49fb2f6bc5b7a8b7204d292eb6c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d23a4696378bd74d7db81a91d5ce828e0fa6878bcd1ac1f10837d0c813473421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–556.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f38a712a1b2233d5a315c2f28f444b04e00086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
