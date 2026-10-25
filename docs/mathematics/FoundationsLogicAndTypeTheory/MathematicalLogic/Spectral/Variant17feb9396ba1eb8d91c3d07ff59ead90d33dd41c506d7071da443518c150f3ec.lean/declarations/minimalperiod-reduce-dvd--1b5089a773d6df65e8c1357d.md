# minimalPeriod_reduce_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8e4a997-dab2-a9d2-152a-8382f2964aee",
  "kind": "theorem",
  "lexical_name": "minimalPeriod_reduce_dvd",
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
  "slug": "minimalperiod-reduce-dvd--1b5089a773d6df65e8c1357d",
  "source": {
    "blob": "e12037e892f97df49e90097bdceb03f6d869eeda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant17feb9396ba1eb8d91c3d07ff59ead90d33dd41c506d7071da443518c150f3ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b5089a773d6df65e8c1357d791c001ded016e0dd9a3d951d3b5d6617b1b4637",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant17feb9396ba1eb8d91c3d07ff59ead90d33dd41c506d7071da443518c150f3ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8e4a997-dab2-a9d2-152a-8382f2964aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimalPeriod_reduce_dvd
    (R : PermutationObserverReducer Global ρ)
    (x : State) :
    Function.minimalPeriod R.localStep (R.reduce x) ∣
      Function.minimalPeriod Global.step x := by
  let period := Function.minimalPeriod Global.step x
  have hglobal : (Global.step ^ period) x = x := by
    change (Global.step : State → State)^[period] x = x
    exact Function.isPeriodicPt_minimalPeriod Global.step x
  have hlocal : (R.localStep ^ period) (R.reduce x) = R.reduce x := by
    rw [← R.reduce_pow]
    exact congrArg R.reduce hglobal
  apply Function.IsPeriodicPt.minimalPeriod_dvd
  change (R.localStep : R.Local → R.Local)^[period] (R.reduce x) = R.reduce x
  exact hlocal

/-- Exact finite primitive cycles and order for one observer-local factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant17feb9396ba1eb8d91c3d07ff59ead90d33dd41c506d7071da443518c150f3ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant17feb9396ba1eb8d91c3d07ff59ead90d33dd41c506d7071da443518c150f3ec.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e12037e892f97df49e90097bdceb03f6d869eeda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
