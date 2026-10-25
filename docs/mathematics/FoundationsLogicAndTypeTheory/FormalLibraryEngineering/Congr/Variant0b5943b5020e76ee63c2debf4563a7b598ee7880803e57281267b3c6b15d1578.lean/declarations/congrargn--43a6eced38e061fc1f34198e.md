# congrArgN

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c14ecbbcbcbb27084175bfb5ea631af266dc3380b31d8d90fb3c3ac956b108fc",
  "kind": "def",
  "lexical_name": "congrArgN",
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
  "slug": "congrargn--43a6eced38e061fc1f34198e",
  "source": {
    "blob": "acba6fb6336dcf42ef0bedba9358f8cb08f221c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 194,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43a6eced38e061fc1f34198e740ae5bd9ec39ea297edc864abe53450f5695bd8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c14ecbbcbcbb27084175bfb5ea631af266dc3380b31d8d90fb3c3ac956b108fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def congrArgN (tacticName : String) (mvarId : MVarId) (i : Int) (explicit : Bool) : MetaM (List MVarId) := mvarId.withContext do
  let (lhs, rhs) ← getLhsRhsCore mvarId
  let lhs := (← instantiateMVars lhs).cleanupAnnotations
  if lhs.isForall then
    if i < -2 || i == 0 || i > 2 then throwError "invalid `{tacticName}` conv tactic, index is out of bounds for pi type"
    let domain := i == 1 || i == -2
    return ← congrArgForall tacticName domain mvarId lhs rhs
  else if lhs.isApp then
    lhs.withApp fun f xs => do
      let (f, xs) ← applyArgs f xs i
      let (proof, mvarIdNew, mvarIdsNewInsts) ← mkCongrArgZeroThm tacticName (← mvarId.getTag) f xs
      resolveRhsFromProof tacticName rhs proof
      mvarId.assign proof
      return mvarIdNew :: mvarIdsNewInsts.toList
  else
    throwError "invalid `{tacticName}` conv tactic, application or implication expected{indentExpr lhs}"
where
  applyArgs (f : Expr) (xs : Array Expr) (i : Int) : MetaM (Expr × Array Expr) := do
    if explicit then
      let i := if i > 0 then i - 1 else i + xs.size
      if i < 0 || i ≥ xs.size then
        throwError "invalid `{tacticName}` tactic, application has {xs.size} argument(s) but the index is out of bounds"
      let idx := i.natAbs
      return (mkAppN f xs[*...idx], xs[idx...*])
    else
      let mut fType ← inferType f
      let mut j := 0
      let mut explicitIdxs := #[]
      for k in *...xs.size do
        unless fType.isForall do
          fType ← withTransparency .all <| whnf (fType.instantiateRevRange j k xs)
          j := k
        let .forallE _ _ b bi := fType | failure
        fType := b
        if bi.isExplicit then
          explicitIdxs := explicitIdxs.push k
      let i := if i > 0 then i - 1 else i + explicitIdxs.size
      if i < 0 || i ≥ explicitIdxs.size then
        throwError "invalid `{tacticName}` tactic, application has {explicitIdxs.size} explicit argument(s) but the index is out of bounds"
      let idx := explicitIdxs[i.natAbs]!
      return (mkAppN f xs[*...idx], xs[idx...*])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant0b5943b5020e76ee63c2debf4563a7b598ee7880803e57281267b3c6b15d1578.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acba6fb6336dcf42ef0bedba9358f8cb08f221c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
