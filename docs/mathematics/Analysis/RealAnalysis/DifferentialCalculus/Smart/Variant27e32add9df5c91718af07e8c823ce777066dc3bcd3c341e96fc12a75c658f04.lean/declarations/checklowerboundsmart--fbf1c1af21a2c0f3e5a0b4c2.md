# checkLowerBoundSmart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f8f5bf05d85ee40472af1ec646d59ed11a5bd2919ce48e5689fef5b5ed4a23a",
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
  "slug": "checklowerboundsmart--fbf1c1af21a2c0f3e5a0b4c2",
  "source": {
    "blob": "406c6c63b3f06bd880bf7e35620ee307bc2c187f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variant27e32add9df5c91718af07e8c823ce777066dc3bcd3c341e96fc12a75c658f04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbf1c1af21a2c0f3e5a0b4c2eeccaca1c1f5589d53298d928561b22c605cdbec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variant27e32add9df5c91718af07e8c823ce777066dc3bcd3c341e96fc12a75c658f04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f8f5bf05d85ee40472af1ec646d59ed11a5bd2919ce48e5689fef5b5ed4a23a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–81.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variant27e32add9df5c91718af07e8c823ce777066dc3bcd3c341e96fc12a75c658f04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variant27e32add9df5c91718af07e8c823ce777066dc3bcd3c341e96fc12a75c658f04.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `406c6c63b3f06bd880bf7e35620ee307bc2c187f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
