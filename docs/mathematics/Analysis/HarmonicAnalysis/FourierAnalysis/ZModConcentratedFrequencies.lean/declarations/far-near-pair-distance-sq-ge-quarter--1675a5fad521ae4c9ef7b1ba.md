# far_near_pair_distance_sq_ge_quarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a6c500c-ea66-59fb-08da-57bb3851a6ee",
  "kind": "theorem",
  "lexical_name": "far_near_pair_distance_sq_ge_quarter",
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
  "slug": "far-near-pair-distance-sq-ge-quarter--1675a5fad521ae4c9ef7b1ba",
  "source": {
    "blob": "583fd11a240c53a599dae3f719b121d2544a8c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 221,
    "path": "GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1675a5fad521ae4c9ef7b1babb3fbc91793201959b0cc3a498ba5c30efe13d56",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a6c500c-ea66-59fb-08da-57bb3851a6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem far_near_pair_distance_sq_ge_quarter (χ center x y : ZMod p) (m t : ℝ)
    (hfar : x ∉ phaseInterval χ center (16 * Real.sqrt (t / m)))
    (hnear : y ∈ phaseInterval χ center (8 * Real.sqrt (t / m))) :
    modularDistance (χ * x - center) ^ 2 / 4 ≤ modularDistance (χ * (x - y)) ^ 2 := by
  have h := far_near_pair_distance_ge_half χ center x y m t hfar hnear
  have hsq := pow_le_pow_left₀
    (div_nonneg (modularDistance_nonneg _) (by norm_num) : 0 ≤ modularDistance (χ * x - center) / 2) h 2
  nlinarith

end GRWTSK.ZModConcentratedFrequencies
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583fd11a240c53a599dae3f719b121d2544a8c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
