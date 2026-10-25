# Congr!.Config

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71d19cd77cf3b2a90a4b70085a4d5ed7acf41ce424782078245580bbfde2adca",
  "kind": "structure",
  "lexical_name": "Congr!.Config",
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
  "slug": "congr-config--b02cde3619b5afb2378223e7",
  "source": {
    "blob": "c3c4de23449c1822e987fa2b2b16809b1de82fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b02cde3619b5afb2378223e7fa20cfc4505b28d8cb2943ab31f2f6295502bebb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71d19cd77cf3b2a90a4b70085a4d5ed7acf41ce424782078245580bbfde2adca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Congr!.Config where
  /-- If `closePre := true`, then try to close goals before applying congruence lemmas
  using tactics such as `rfl` and `assumption.  These tactics are applied with the
  transparency level specified by `preTransparency`, which is `.reducible` by default. -/
  closePre : Bool := true
  /-- If `closePost := true`, then try to close goals that remain after no more congruence
  lemmas can be applied, using the same tactics as `closePre`. These tactics are applied
  with current tactic transparency level. -/
  closePost : Bool := true
  /-- The transparency level to use when applying a congruence theorem.
  By default this is `.reducible`, which prevents unfolding of most definitions. -/
  transparency : TransparencyMode := TransparencyMode.reducible
  /-- The transparency level to use when trying to close goals before applying congruence lemmas.
  This includes trying to prove the goal by `rfl` and using the `assumption` tactic.
  By default this is `.reducible`, which prevents unfolding of most definitions. -/
  preTransparency : TransparencyMode := TransparencyMode.reducible
  /-- For passes that synthesize a congruence lemma using one side of the equality,
  we run the pass both for the left-hand side and the right-hand side. If `preferLHS` is `true`
  then we start with the left-hand side.

  This can be used to control which side's definitions are expanded when applying the
  congruence lemma (if `preferLHS = true` then the RHS can be expanded). -/
  preferLHS : Bool := true
  /-- Allow both sides to be partial applications.
  When false, given an equality `f a b = g x y z` this means we never consider
  proving `f a = g x y`.

  In this case, we might still consider `f = g x` if a pass generates a congruence lemma using the
  left-hand side. Use `sameFun := true` to ensure both sides are applications
  of the same function (making it be similar to the `congr` tactic). -/
  partialApp : Bool := true
  /-- Whether to require that both sides of an equality be applications of defeq functions.
  That is, if true, `f a = g x` is only considered if `f` and `g` are defeq (making it be similar
  to the `congr` tactic). -/
  sameFun : Bool := false
  /-- The maximum number of arguments to consider when doing congruence of function applications.
  For example, with `f a b c = g w x y z`, setting `maxArgs := some 2` means it will only consider
  either `f a b = g w x y` and `c = z` or `f a = g w x`, `b = y`, and `c = z`. Setting
  `maxArgs := none` (the default) means no limit.

  When the functions are dependent, `maxArgs` can prevent congruence from working at all.
  In `Fintype.card α = Fintype.card β`, one needs to have `maxArgs` at `2` or higher since
  there is a `Fintype` instance argument that depends on the first.

  When there aren't such dependency issues, setting `maxArgs := some 1` causes `congr!` to
  do congruence on a single argument at a time. This can be used in conjunction with the
  iteration limit to control exactly how many arguments are to be processed by congruence. -/
  maxArgs : Option Nat := none
  /-- For type arguments that are implicit or have forward dependencies, whether or not `congr!`
  should generate equalities even if the types do not look plausibly equal.

  We have a heuristic in the main congruence generator that types
  `α` and `β` are *plausibly equal* according to the following algorithm:

  - If the types are both propositions, they are plausibly equal (`Iff`s are plausible).
  - If the types are from different universes, they are not plausibly equal.
  - Suppose in whnf we have `α = f a₁ ... aₘ` and `β = g b₁ ... bₘ`. If `f` is not definitionally
    equal to `g` or `m ≠ n`, then `α` and `β` are not plausibly equal.
  - If there is some `i` such that `aᵢ` and `bᵢ` are not plausibly equal, then `α` and `β` are
    not plausibly equal.
  - Otherwise, `α` and `β` are plausibly equal.

  The purpose of this is to prevent considering equalities like `ℕ = ℤ` while allowing equalities
  such as `Fin n = Fin m` or `Subtype p = Subtype q` (so long as these are subtypes of the
  same type).

  The way this is implemented is that when the congruence generator is comparing arguments when
  looking at an equality of function applications, it marks a function parameter as "fixed" if the
  provided arguments are types that are not plausibly equal. The effect of this is that congruence
  succeeds only if those arguments are defeq at `transparency` transparency. -/
  typeEqs : Bool := false
  /-- As a last pass, perform eta expansion of both sides of an equality. For example,
  this transforms a bare `HAdd.hAdd` into `fun x y => x + y`. -/
  etaExpand : Bool := false
  /-- Whether to use the congruence generator that is used by `simp` and `congr`. This generator
  is more strict, and it does not respect all configuration settings. It does respect
  `preferLHS`, `partialApp` and `maxArgs` and transparency settings. It acts as if `sameFun := true`
  and it ignores `typeEqs`. -/
  useCongrSimp : Bool := false

/-- A configuration option that makes `congr!` do the sorts of aggressive unfoldings that `congr`
does while also similarly preventing `congr!` from considering partial applications or congruences
between different functions being applied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c4de23449c1822e987fa2b2b16809b1de82fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
