# globalMinimizeGuidedDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b63bee6a65a165e00353e76291ea15e1bad1f7cb76cac492ecd523536498ab1",
  "kind": "def",
  "lexical_name": "globalMinimizeGuidedDiv",
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
  "slug": "globalminimizeguideddiv--78be3c376c1991b6c1b67d5f",
  "source": {
    "blob": "e0df1a3d493829a3fc1536d5c24f80ca2183dc46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78be3c376c1991b6c1b67d5fc953330f7fe66994fb32b4adb9a7ecb5fc5956ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b63bee6a65a165e00353e76291ea15e1bad1f7cb76cac492ecd523536498ab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def globalMinimizeGuidedDiv (e : Expr) (B : Box) (cfg : GuidedOptConfig := {}) : GlobalResult :=
  let I_root := evalOnBoxCoreDiv e B cfg.toGlobalOptConfig

  let (mcBest, mcVal) := findBestCandidate e B (samples := cfg.heuristicSamples) (seed := cfg.seed)

  let (heuristicBest, _) :=
    if cfg.useGridSearch && B.length ≤ 3 then
      let (gridBest, gridVal) := gridSearch e B (pointsPerDim := cfg.gridPointsPerDim)
      if gridVal < mcVal then (gridBest, gridVal) else (mcBest, mcVal)
    else
      (mcBest, mcVal)

  let certifiedInterval := certifyCandidateDiv e B heuristicBest cfg.toGlobalOptConfig

  let initialBestLB := I_root.lo
  let initialBestUB := min I_root.hi certifiedInterval.hi
  let initialBestBox := B
  let initialQueue : List (ℚ × Box) := [(I_root.lo, B)]

  minimizeLoopCoreDiv e cfg.toGlobalOptConfig initialQueue initialBestLB initialBestUB initialBestBox cfg.maxIterations

/--
Global maximization with Float guidance.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variantbbae43caa916b913fae8056dda65d137faf7fb218bd34c334d0c38f925819780.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0df1a3d493829a3fc1536d5c24f80ca2183dc46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
