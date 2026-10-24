# newtonIntervalGo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:818b15be725168e742afae9a866202fe5fc03608e3ca2d9ebbefa08d2d4f1a92",
  "kind": "def",
  "lexical_name": "newtonIntervalGo",
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
  "slug": "newtonintervalgo--1ef04234601a2e78ba1f204a",
  "source": {
    "blob": "ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ef04234601a2e78ba1f204ab75544c73d9fbec2410d0e239a34bca86e360504",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:818b15be725168e742afae9a866202fe5fc03608e3ca2d9ebbefa08d2d4f1a92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def newtonIntervalGo (e : Expr) (varIdx : Nat) (degree : ℕ)
    (J : IntervalRat) (iter : ℕ) (contracted : Bool) : IntervalRat × RootStatus :=
  match iter with
  | 0 =>
    if contracted then
      (J, RootStatus.uniqueRoot)
    else
      (J, checkRootStatus e J)
  | n + 1 =>
    -- Try TM-based Newton step first
    match newtonStepTM e J varIdx degree with
    | none =>
      -- TM step failed, try simple
      match newtonStepSimple e J varIdx with
      | none =>
        if contracted then (J, RootStatus.uniqueRoot)
        else (J, checkRootStatus e J)
      | some N =>
        -- Process step result (inlined for termination)
        if N.lo > J.lo ∧ N.hi < J.hi then
          newtonIntervalGo e varIdx degree N n true
        else if N.lo > J.hi ∨ N.hi < J.lo then
          -- Strict inequality for soundness: truly disjoint intervals
          (J, RootStatus.noRoot)
        else
          newtonIntervalGo e varIdx degree N n contracted
    | some N =>
      -- Process step result (inlined for termination)
      if N.lo > J.lo ∧ N.hi < J.hi then
        newtonIntervalGo e varIdx degree N n true
      else if N.lo > J.hi ∨ N.hi < J.lo then
        -- Strict inequality for soundness: truly disjoint intervals
        (J, RootStatus.noRoot)
      else
        newtonIntervalGo e varIdx degree N n contracted
termination_by iter

/-- Interval Newton iteration using TM-based steps.

If Newton step contracts (result ⊂ input), we have uniqueness.

Parameters:
- `e`: the expression representing the function
- `I`: initial interval to search for root
- `varIdx`: variable index (typically 0 for single-variable)
- `maxIter`: maximum number of Newton iterations
- `degree`: Taylor model degree (default 1, higher for more precision)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
