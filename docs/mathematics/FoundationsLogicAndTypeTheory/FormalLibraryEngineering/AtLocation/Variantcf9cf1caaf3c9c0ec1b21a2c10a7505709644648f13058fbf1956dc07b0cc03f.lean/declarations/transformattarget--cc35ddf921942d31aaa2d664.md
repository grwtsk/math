# transformAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b81a3bf23b7815792a21ae0480e0e9b67cc9f3ab412e8ccd0e19df5908e7862",
  "kind": "def",
  "lexical_name": "transformAtTarget",
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
  "slug": "transformattarget--cc35ddf921942d31aaa2d664",
  "source": {
    "blob": "4a1d04d54f6d90dc03d9724c74aa4ed7166fbd1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtLocation/Variantcf9cf1caaf3c9c0ec1b21a2c10a7505709644648f13058fbf1956dc07b0cc03f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc35ddf921942d31aaa2d66493db33cc438afac79bae57b8c6d413870d4c993c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtLocation/Variantcf9cf1caaf3c9c0ec1b21a2c10a7505709644648f13058fbf1956dc07b0cc03f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b81a3bf23b7815792a21ae0480e0e9b67cc9f3ab412e8ccd0e19df5908e7862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transformAtTarget (m : Expr → ReaderT Simp.Context MetaM Simp.Result) (proc : String)
    (ifUnchanged : BehaviorIfUnchanged) (goal : MVarId) :
    ReaderT Simp.Context MetaM (Option MVarId) := do
  let tgt ← instantiateMVars (← goal.getType)
  let r ← m tgt
  -- we use expression equality here (rather than defeq) to be consistent with, e.g.,
  -- `applySimpResultToTarget`
  let unchanged := tgt.cleanupAnnotations == r.expr.cleanupAnnotations
  if unchanged then
    match ifUnchanged with
    | .warning => logWarning m!"`{proc}` made no progress on the goal"
    | .error => throwError "`{proc}` made no progress on the goal"
    | .silent => pure ()
  if r.expr.isTrue then
    goal.assign (← mkOfEqTrue (← r.getProof))
    pure none
  else
    -- this ensures that we really get the same goal as an `MVarId`,
    -- not a different `MVarId` for which `MVarId.getType` is the same
    if unchanged then return goal
    applySimpResultToTarget goal tgt r

/-- Use the procedure `m` to rewrite hypothesis `fvarId`.

The `simpTheorems` of the simp-context carried with `m` will be modified to remove `fvarId`;
this ensures that if the procedure `m` involves rewriting by this `SimpTheoremsArray`, then, e.g.,
`h : x = y` is not transformed (by rewriting `h`) to `True`.

Assumes `proc` is not surrounded by backticks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtLocation/Variantcf9cf1caaf3c9c0ec1b21a2c10a7505709644648f13058fbf1956dc07b0cc03f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtLocation/Variantcf9cf1caaf3c9c0ec1b21a2c10a7505709644648f13058fbf1956dc07b0cc03f.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1d04d54f6d90dc03d9724c74aa4ed7166fbd1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
