# checkLowerBoundSmart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ec70607ee4d4add3e8597b481e93e0fc2c6ef910aef817cb2804cb7ea7a78b7",
  "kind": "def",
  "lexical_name": "checkLowerBoundSmart",
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
  "slug": "checklowerboundsmart--ef87ce26d04ef52614119c3d",
  "source": {
    "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 418,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef87ce26d04ef52614119c3d93956ce5c309018a996045169c8267e826653156",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ec70607ee4d4add3e8597b481e93e0fc2c6ef910aef817cb2804cb7ea7a78b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkLowerBoundSmart (e : Expr) (I : IntervalRat) (c : ℚ) (cfg : EvalConfig) : Bool :=
  -- 1. Try standard check first (fastest)
  if checkLowerBound e I c cfg then true
  else
    -- 2. Compute derivative bounds
    let dI := derivIntervalCore e I cfg
    if 0 < dI.lo then
      -- Strictly increasing: minimum is at lo
      -- Evaluate at singleton lo (with domain validity check)
      checkDomainValid1 e (IntervalRat.singleton I.lo) cfg &&
        c ≤ (evalIntervalCore1 e (IntervalRat.singleton I.lo) cfg).lo
    else if dI.hi < 0 then
      -- Strictly decreasing: minimum is at hi (with domain validity check)
      checkDomainValid1 e (IntervalRat.singleton I.hi) cfg &&
        c ≤ (evalIntervalCore1 e (IntervalRat.singleton I.hi) cfg).lo
    else
      false

/-- Smart upper bound check using monotonicity.
    1. Tries standard interval check first.
    2. If fails, computes derivative interval.
    3. If derivative > 0 (increasing), checks if f(I.hi) ≤ c.
    4. If derivative < 0 (decreasing), checks if f(I.lo) ≤ c. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aadeba643fd3f4e60c7710626c255a7effe39f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
