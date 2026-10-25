# collectFreshMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b7ec552835740dcb701a0ffb128b29c6e0e92523dfdfd51158b6ce7f33d6235",
  "kind": "def",
  "lexical_name": "collectFreshMVars",
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
  "slug": "collectfreshmvars--036bc6d2c6053789a22f892f",
  "source": {
    "blob": "50169e2c8356c5fdf3ce285786d4c8efcb85f718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:036bc6d2c6053789a22f892f810da973820f63af4c31945619fabf44700dead5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b7ec552835740dcb701a0ffb128b29c6e0e92523dfdfd51158b6ce7f33d6235`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectFreshMVars [Monad m] [MonadLiftT MetaM m] (k : m Expr) : m (Expr × Array MVarId) := do
  let mvarCounterSaved := (← liftMetaM getMCtx).mvarCounter
  let val ← k
  let newMVarIds ← getMVarsNoDelayed val
  /- Filter out all mvars that were created prior to `k`. -/
  let newMVarIds ← filterOldMVars newMVarIds mvarCounterSaved
  /-
  We sort the new metavariable ids by index to ensure the new goals are ordered using the order the metavariables have been created.
  See issue #1682.
  Potential problem: if elaboration of subterms is delayed the order the new metavariables are created may not match the order they
  appear in the `.lean` file. We should tell users to prefer tagged goals.
  -/
  let newMVarIds ← liftMetaM <| sortMVarIdsByIndex newMVarIds
  return (val, newMVarIds)

/--
Execute `k`, and collect new "holes" in the resulting expression.

* `parentTag` and `tagSuffix` are used to tag untagged goals with `Lean.Elab.Tactic.tagUntaggedGoals`.
* If `allowNaturalHoles` is true, then `_`'s are allowed and create new goals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50169e2c8356c5fdf3ce285786d4c8efcb85f718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
