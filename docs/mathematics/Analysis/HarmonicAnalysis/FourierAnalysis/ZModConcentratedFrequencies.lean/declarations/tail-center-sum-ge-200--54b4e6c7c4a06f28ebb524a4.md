# tail_center_sum_ge_200

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4fe8c97-2866-343f-a563-ee4c9a017c83",
  "kind": "theorem",
  "lexical_name": "tail_center_sum_ge_200",
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
  "slug": "tail-center-sum-ge-200--54b4e6c7c4a06f28ebb524a4",
  "source": {
    "blob": "583fd11a240c53a599dae3f719b121d2544a8c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 157,
    "path": "GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54b4e6c7c4a06f28ebb524a4dc87292fa9e67b1e8530c50e9158eda6264a46d3",
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

Occurrence: `result:b4fe8c97-2866-343f-a563-ee4c9a017c83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_center_sum_ge_200 (S : Finset (ZMod p)) (hS : S.Nonempty)
    (χ center : ZMod p) (m t : ℝ) (hm : 0 < m) (ht : 0 ≤ t)
    (hE : 2000 * t ≤ m * pairEnergy S χ) :
    (200 * t / m) * S.card ≤
      ∑ x ∈ S \ phaseInterval χ center (16 * Real.sqrt (t / m)),
        modularDistance (χ * x - center) ^ 2 := by
  have h := tail_center_sum_ge_244 S hS χ center m t hm ht hE
  have hnonneg : 0 ≤ t / m := div_nonneg ht hm.le
  have hcard : (0 : ℝ) ≤ S.card := by positivity
  have hmul := mul_nonneg hnonneg hcard
  have h1 : 200 * t / m = 200 * (t / m) := by ring
  have h2 : 244 * t / m = 244 * (t / m) := by ring
  rw [h2] at h
  rw [h1]
  linarith

/-- The normalized form of the source tail bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583fd11a240c53a599dae3f719b121d2544a8c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
