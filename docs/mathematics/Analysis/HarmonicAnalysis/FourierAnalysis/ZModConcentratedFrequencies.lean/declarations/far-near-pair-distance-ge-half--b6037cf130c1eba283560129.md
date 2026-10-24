# far_near_pair_distance_ge_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5aeff648-5197-fbaf-4cf1-6029e8358dcc",
  "kind": "theorem",
  "lexical_name": "far_near_pair_distance_ge_half",
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
  "slug": "far-near-pair-distance-ge-half--b6037cf130c1eba283560129",
  "source": {
    "blob": "583fd11a240c53a599dae3f719b121d2544a8c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 208,
    "path": "GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6037cf130c1eba283560129fbf3f776e71f5a00a0f0b8faff76860f04292e11",
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

Occurrence: `result:5aeff648-5197-fbaf-4cf1-6029e8358dcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem far_near_pair_distance_ge_half (χ center x y : ZMod p) (m t : ℝ)
    (hfar : x ∉ phaseInterval χ center (16 * Real.sqrt (t / m)))
    (hnear : y ∈ phaseInterval χ center (8 * Real.sqrt (t / m))) :
    modularDistance (χ * x - center) / 2 ≤ modularDistance (χ * (x - y)) := by
  have hfar' : 16 * Real.sqrt (t / m) < modularDistance (χ * x - center) := by
    exact lt_of_not_ge (by simpa only [mem_phaseInterval] using hfar)
  have hnear' := (mem_phaseInterval _ _ _ _).mp hnear
  have htri := modularDistance_add_le (χ * (x - y)) (χ * y - center)
  have heq : χ * (x - y) + (χ * y - center) = χ * x - center := by ring
  rw [heq] at htri
  linarith

/-- Squaring the far/near separation retains the precise factor `1/4`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583fd11a240c53a599dae3f719b121d2544a8c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
