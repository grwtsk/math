# CongrResult.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b126efb8ce97adc1762df7aaefc2ee018b53e1ea0f9a4cb3f71d6293eda0b8b1",
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
  "slug": "congrresult-mk--c332e5dde3b2776b093a9b79",
  "source": {
    "blob": "c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c332e5dde3b2776b093a9b7941a4f673b1cdc9f905a9cf39b16705bbb9ea66f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b126efb8ce97adc1762df7aaefc2ee018b53e1ea0f9a4cb3f71d6293eda0b8b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CongrResult.mk' (lhs rhs : Expr) (pf : Expr) : CongrResult where
  lhs := lhs
  rhs := rhs
  pf? := some fun
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
    let some (_, lhs', _, rhs') ← sides? pfTy
      | panic! "Unexpectedly did not generate an eq or heq"
    unless ← isDefEq lhs lhs' do
      throwError "Congruence hole has type{indentD pfTy}\n{""
        }but its left-hand side is not definitionally equal to the expected value{indentD lhs}"
    unless ← isDefEq rhs rhs' do
      throwError "Congruence hole has type{indentD pfTy}\n{""
        }but its right-hand side is not definitionally equal to the expected value{indentD rhs}"
    return pf

/-- Force the lhs and rhs to be defeq. For when `dsimp`-like congruence is necessary.
Clears the proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
