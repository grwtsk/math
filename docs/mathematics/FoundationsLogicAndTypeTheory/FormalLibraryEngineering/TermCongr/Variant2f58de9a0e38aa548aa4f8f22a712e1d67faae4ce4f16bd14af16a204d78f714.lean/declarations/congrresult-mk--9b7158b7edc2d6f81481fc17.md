# CongrResult.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b2d11646d226ed5d076f4f2a881028de5a2101dccab8a634de57c6c5890e64e",
  "kind": "def",
  "lexical_name": "CongrResult.mk'",
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
  "slug": "congrresult-mk--9b7158b7edc2d6f81481fc17",
  "source": {
    "blob": "c76112d1f1a838af5b3d3645665dd0eea3b0ada1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b7158b7edc2d6f81481fc17db60d7cb230d17d1d0ac05b4627e2615f2850b87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b2d11646d226ed5d076f4f2a881028de5a2101dccab8a634de57c6c5890e64e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CongrResult.mk' (lhs rhs : Expr) (pf : Expr) : CongrResult where
  lhs := lhs
  rhs := rhs
  pf? :=
    if (isRefl? pf).isSome then
      none
    else
      some fun
      | .eq => do ensureSidesDefeq (← toEqPf)
      | .heq => do ensureSidesDefeq (← toHEqPf)
where
  /-- Given a `pf` of an `Iff`, `Eq`, or `HEq`, return a proof of `Eq`.
  If `pf` is not obviously any of these, weakly try inserting `propext` to make an `Iff`
  and otherwise unify the type with `Eq`. -/
  toEqPf : MetaM Expr := do
    let ty ← whnf (← inferType pf)
    if let some .. := ty.iff? then
      mkPropExt pf
    else if let some .. := ty.eq? then
      return pf
    else if let some (lhsTy, _, rhsTy, _) := ty.heq? then
      unless ← isDefEq lhsTy rhsTy do
        throwError "Cannot turn HEq proof into an equality proof. Has type{indentD ty}"
      mkAppM ``eq_of_heq #[pf]
    else if ← Meta.isProp lhs then
      mkPropExt (← ensureIff pf)
    else
      discard <| mkEqForExpectedType (← inferType pf)
      return pf
  /-- Given a `pf` of an `Iff`, `Eq`, or `HEq`, return a proof of `HEq`.
  If `pf` is not obviously any of these, weakly try making it be an `Eq` or an `Iff`,
  and otherwise make it be a `HEq`. -/
  toHEqPf : MetaM Expr := do
    let ty ← whnf (← inferType pf)
    if let some .. := ty.iff? then
      mkAppM ``heq_of_eq #[← mkPropExt pf]
    else if let some .. := ty.eq? then
      mkAppM ``heq_of_eq #[pf]
    else if let some .. := ty.heq? then
      return pf
    else if ← withNewMCtxDepth <| isDefEq (← inferType lhs) (← inferType rhs) then
      mkAppM ``heq_of_eq #[← toEqPf]
    else
      discard <| mkHEqForExpectedType (← inferType pf)
      return pf
  /-- Get the sides of the type of `pf` and unify them with the respective `lhs` and `rhs`. -/
  ensureSidesDefeq (pf : Expr) : MetaM Expr := do
    let pfTy ← inferType pf
    let some (_, lhs', _, rhs') := (← whnf pfTy).sides?
      | panic! "Unexpectedly did not generate an eq or heq"
    unless ← isDefEq lhs lhs' do
      throwError "Congruence hole has type{indentD pfTy}\n\
        but its left-hand side is not definitionally equal to the expected value{indentD lhs}"
    unless ← isDefEq rhs rhs' do
      throwError "Congruence hole has type{indentD pfTy}\n\
        but its right-hand side is not definitionally equal to the expected value{indentD rhs}"
    return pf

/-- Force the lhs and rhs to be defeq. For when `dsimp`-like congruence is necessary.
Clears the proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2f58de9a0e38aa548aa4f8f22a712e1d67faae4ce4f16bd14af16a204d78f714.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c76112d1f1a838af5b3d3645665dd0eea3b0ada1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
