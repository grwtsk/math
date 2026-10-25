# Config

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a36484d9ed0b64f91e08f29110feffb2a49f9fc4f61ba656910ffce93feefa5",
  "kind": "structure",
  "lexical_name": "Config",
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
  "slug": "config--f32fe74caf97e03925a1e43c",
  "source": {
    "blob": "b9743855e4f667c6fad1cee0803ee003e513baef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f32fe74caf97e03925a1e43c7c26f3b759f08f75e00b51b81e69ecc7fe4379af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a36484d9ed0b64f91e08f29110feffb2a49f9fc4f61ba656910ffce93feefa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure Config where
  /--
    If `foApprox` is set to true, and some `aᵢ` is not a free variable,
    then we use first-order unification
    ```
      ?m a_1 ... a_i a_{i+1} ... a_{i+k} =?= f b_1 ... b_k
    ```
    reduces to
    ```
      ?m a_1 ... a_i =?= f
      a_{i+1}        =?= b_1
      ...
      a_{i+k}        =?= b_k
    ```
  -/
  foApprox           : Bool := false
  /--
    When `ctxApprox` is set to true, we relax condition 4, by creating an
    auxiliary metavariable `?n'` with a smaller context than `?m'`.
  -/
  ctxApprox          : Bool := false
  /--
    When `quasiPatternApprox` is set to true, we ignore condition 2.
  -/
  quasiPatternApprox : Bool := false
  /-- When `constApprox` is set to true,
     we solve `?m t =?= c` using
     `?m := fun _ => c`
     when `?m t` is not a higher-order pattern and `c` is not an application as -/
  constApprox        : Bool := false
  /--
    When the following flag is set,
    `isDefEq` throws the exception `Exception.isDefEqStuck`
    whenever it encounters a constraint `?m ... =?= t` where
    `?m` is read only.
    This feature is useful for type class resolution where
    we may want to notify the caller that the TC problem may be solvable
    later after it assigns `?m`. -/
  isDefEqStuckEx     : Bool := false
  /-- Enable/disable the unification hints feature. -/
  unificationHints   : Bool := true
  /-- Enables proof irrelevance at `isDefEq` -/
  proofIrrelevance   : Bool := true
  /-- By default synthetic opaque metavariables are not assigned by `isDefEq`. Motivation: we want to make
      sure typing constraints resolved during elaboration should not "fill" holes that are supposed to be filled using tactics.
      However, this restriction is too restrictive for tactics such as `exact t`. When elaborating `t`, we dot not fill
      named holes when solving typing constraints or TC resolution. But, we ignore the restriction when we try to unify
      the type of `t` with the goal target type. We claim this is not a hack and is defensible behavior because
      this last unification step is not really part of the term elaboration. -/
  assignSyntheticOpaque : Bool := false
  /-- Enable/Disable support for offset constraints such as `?x + 1 =?= e` -/
  offsetCnstrs          : Bool := true
  /--
    Controls which definitions and theorems can be unfolded by `isDefEq` and `whnf`.
   -/
  transparency       : TransparencyMode := TransparencyMode.default
  /-- Eta for structures configuration mode. -/
  etaStruct          : EtaStructMode := .all
  /--
  When `univApprox` is set to true,
  we use approximations when solving postponed universe constraints.
  Examples:
  - `max u ?v =?= u` is solved with `?v := u` and ignoring the solution `?v := 0`.
  - `max u w =?= max u ?v` is solved with `?v := w` ignoring the solution `?v := max u w`
  -/
  univApprox : Bool := true
  /-- If `true`, reduce recursor/matcher applications, e.g., `Nat.rec true (fun _ _ => false) Nat.zero` reduces to `true` -/
  iota : Bool := true
  /-- If `true`, reduce terms such as `(fun x => t[x]) a` into `t[a]` -/
  beta : Bool := true
  /-- Control projection reduction at `whnfCore`. -/
  proj : ProjReductionKind := .yesWithDelta
  /--
  Zeta reduction: `let x := v; e[x]` and `have x := v; e[x]` reduce to `e[v]`.
  We say a let-declaration `let x := v; e` is nondependent if it is equivalent to `(fun x => e) v`.
  Recall that
  ```
  fun x : BitVec 5 => let n := 5; fun y : BitVec n => x = y
  ```
  is type correct, but
  ```
  fun x : BitVec 5 => (fun n => fun y : BitVec n => x = y) 5
  ```
  is not.
  See also `zetaHave`, for disabling the reduction nondependent lets (`have` expressions).
  -/
  zeta : Bool := true
  /--
  Zeta-delta reduction: given a local context containing entry `x : t := e`, free variable `x` reduces to `e`.
  -/
  zetaDelta : Bool := true
  /--
  Zeta reduction for unused let-declarations: `let x := v; e` reduces to `e` when `x` does not occur
  in `e`.
  This option takes precedence over `zeta` and `zetaHave`.
  -/
  zetaUnused : Bool := true
  /--
  When `zeta := true`, then `zetaHave := false` disables zeta reduction of `have` expressions.
  -/
  zetaHave : Bool := true
  deriving Inhabited, Repr

/-- Convert `isDefEq` and `WHNF` relevant parts into a key for caching results -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9743855e4f667c6fad1cee0803ee003e513baef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
