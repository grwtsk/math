# Struct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3ab88b71e81a881824f40500abfa2611ba0a7c73b75014726d2a7910c38b6b2",
  "kind": "structure",
  "lexical_name": "Struct",
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
  "slug": "struct--1d3dcff9e79c44d787cb2550",
  "source": {
    "blob": "786d05b08e9616513d1ec0a22195b1469e213940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d3dcff9e79c44d787cb2550b82b8ea746ae8199506f2a0d60efab2c6c3c11bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3ab88b71e81a881824f40500abfa2611ba0a7c73b75014726d2a7910c38b6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Struct where
  id                 : Nat
  /-- If the structure is a ring, we store its id in the `CommRing` module at `ringId?` -/
  ringId?            : Option Nat
  type               : Expr
  /-- Cached `getDecLevel type` -/
  u                  : Level
  /-- `IntModule` instance -/
  intModuleInst      : Expr
  /-- `LE` instance if available -/
  leInst?            : Option Expr
  /-- `LT` instance if available -/
  ltInst?            : Option Expr
  /-- `LawfulOrderLT` instance if available -/
  lawfulOrderLTInst? : Option Expr
  /-- `IsPreorder` instance if available -/
  isPreorderInst?    : Option Expr
  /-- `OrderedAdd` instance with `IsPreorder` if available -/
  orderedAddInst?    : Option Expr
  /-- `IsLinearOrder` instance if available -/
  isLinearInst?      : Option Expr
  /-- `NoNatZeroDivisors` -/
  noNatDivInst?      : Option Expr
  /-- `Ring` instance -/
  ringInst?          : Option Expr
  /-- `CommRing` instance -/
  commRingInst?      : Option Expr
  /-- `OrderedRing` instance with `Preorder` -/
  orderedRingInst?   : Option Expr
  /-- `Field` instance -/
  fieldInst?         : Option Expr
  /-- `IsCharP` instance for `type` if available. -/
  charInst?          : Option (Expr × Nat)
  zero               : Expr
  ofNatZero          : Expr
  one?               : Option Expr
  leFn?              : Option Expr
  ltFn?              : Option Expr
  addFn              : Expr
  zsmulFn            : Expr
  nsmulFn            : Expr
  zsmulFn?           : Option Expr
  nsmulFn?           : Option Expr
  homomulFn?         : Option Expr -- homogeneous multiplication if structure is a ring
  subFn              : Expr
  negFn              : Expr
  /--
  Mapping from variables to their denotations.
  Remark each variable can be in only one ring.
  -/
  vars             : PArray Expr := {}
  /-- Mapping from `Expr` to a variable representing it. -/
  varMap           : PHashMap ExprPtr Var := {}
  /--
  Mapping from variables to their "lower" bounds. We say a relational constraint `c` is a lower bound for a variable `x`
  if `x` is the maximal variable in `c`, and `x` coefficient in `c` is negative.
  -/
  lowers : PArray (PArray IneqCnstr) := {}
  /--
  Mapping from variables to their "upper" bounds. We say a relational constraint `c` is a upper bound for a variable `x`
  if `x` is the maximal variable in `c`, and `x` coefficient in `c` is positive.
  -/
  uppers : PArray (PArray IneqCnstr) := {}
  /--
  Mapping from variables to their disequalities. We say a disequality constraint `c` is a disequality for a variable `x`
  if `x` is the maximal variable in `c`.
  -/
  diseqs : PArray (PArray DiseqCnstr) := {}
  /-- Partial assignment being constructed by linarith. -/
  assignment : PArray Rat := {}
  /--
  `caseSplits` is `true` if linarith is searching for model and already performed case splits.
  This information is used to decide whether a conflict should immediately close the
  current `grind` goal or not.
  -/
  caseSplits : Bool := false
  /--
  `conflict?` is `some ..` if a contradictory constraint was derived.
  This field is only set when `caseSplits` is `true`. Otherwise, we
  can convert `UnsatProof` into a Lean term and close the current `grind` goal.
  -/
  conflict? : Option UnsatProof := none
  /--
  Cache decision variables used when splitting on disequalities.
  This is necessary because the same disequality may be in different conflicts.
  -/
  diseqSplits : PHashMap Poly FVarId := {}
  /--
  Mapping from variable to equation constraint used to eliminate it. `solved` variables should not occur in
  `diseqs`, `lowers`, or `uppers`.
  -/
  elimEqs : PArray (Option EqCnstr) := {}
  /--
  Elimination stack. For every variable in `elimStack`. If `x` in `elimStack`, then `elimEqs[x]` is not `none`.
  -/
  elimStack : List Var := []
  /--
  Mapping from variable to occurrences.
  For example, an entry `x ↦ {y, z}` means that `x` may occur in `lowers`, or `uppers`, or `diseqs` of
  variables `y` and `z`.
  If `x` occurs in `diseqs[y]`, `lowers[y]`, or `uppers[y]`, then `y` is in `occurs[x]`,
  but the reverse is not true.
  If `x` is in `elimStack`, then `occurs[x]` is the empty set.
  -/
  occurs : PArray VarSet := {}
  /--
  Linear constraints that are not supported.
  We use this information for diagnostics.
  TODO: store constraints instead.
  -/
  ignored : PArray Expr := {}
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `786d05b08e9616513d1ec0a22195b1469e213940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
