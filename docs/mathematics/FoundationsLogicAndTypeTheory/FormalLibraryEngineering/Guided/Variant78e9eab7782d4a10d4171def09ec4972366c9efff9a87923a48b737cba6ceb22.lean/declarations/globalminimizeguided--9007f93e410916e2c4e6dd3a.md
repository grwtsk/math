# globalMinimizeGuided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1132c9c4fc8b747f017cf44b98e7f8d12ec7c7e7dc4afe2d7a64b6becc2c0f34",
  "kind": "def",
  "lexical_name": "globalMinimizeGuided",
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
  "slug": "globalminimizeguided--9007f93e410916e2c4e6dd3a",
  "source": {
    "blob": "203cdf1b8c18728a1d337c316427e3559d4b2bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9007f93e410916e2c4e6dd3ab3e48cc900ecc5d8f305ae36458f68c4a90622a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1132c9c4fc8b747f017cf44b98e7f8d12ec7c7e7dc4afe2d7a64b6becc2c0f34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def globalMinimizeGuided (e : Expr) (B : Box) (cfg : GuidedOptConfig := {}) : GlobalResult :=
  -- Step 1: Initial rigorous bound on the whole box
  let I_root := evalOnBoxCore e B cfg.toGlobalOptConfig

  -- Step 2: Heuristic Search (The Oracle)
  let (mcBest, mcVal) := findBestCandidate e B (samples := cfg.heuristicSamples) (seed := cfg.seed)

  -- Optionally do grid search for low dimensions
  let (heuristicBest, _heuristicVal) :=
    if cfg.useGridSearch && B.length ≤ 3 then
      let (gridBest, gridVal) := gridSearch e B (pointsPerDim := cfg.gridPointsPerDim)
      if gridVal < mcVal then (gridBest, gridVal) else (mcBest, mcVal)
    else
      (mcBest, mcVal)

  -- Step 3: Certify the heuristic guess
  let certifiedInterval := certifyCandidate e B heuristicBest cfg.toGlobalOptConfig

  -- Step 4: Compute initial bounds
  -- Lower bound: from whole box evaluation
  let initialBestLB := I_root.lo
  -- Upper bound: min of whole box and certified guess
  let initialBestUB := min I_root.hi certifiedInterval.hi
  let initialBestBox := B

  -- Step 5: Initialize queue and run standard branch-and-bound
  let initialQueue : List (ℚ × Box) := [(I_root.lo, B)]

  minimizeLoopCore e cfg.toGlobalOptConfig initialQueue initialBestLB initialBestUB initialBestBox cfg.maxIterations

/--
Global minimization with Float guidance and division support.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `203cdf1b8c18728a1d337c316427e3559d4b2bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
