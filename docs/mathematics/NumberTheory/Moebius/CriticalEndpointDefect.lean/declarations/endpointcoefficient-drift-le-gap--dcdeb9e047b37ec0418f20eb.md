# endpointCoefficient_drift_le_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d98e26b1-f63d-5a32-c1bb-295db17ff2a9",
  "kind": "theorem",
  "lexical_name": "endpointCoefficient_drift_le_gap",
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
  "slug": "endpointcoefficient-drift-le-gap--dcdeb9e047b37ec0418f20eb",
  "source": {
    "blob": "46e1eead76aacda6818a266dc3399c9fae01743b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcdeb9e047b37ec0418f20eb15df88bd4812a3fb404621cf25ec6d03e2d3e18b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d98e26b1-f63d-5a32-c1bb-295db17ff2a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointCoefficient_drift_le_gap {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hu : u ∈ Set.Icc (Real.log (n : ℝ))
      (Real.log ((n + 1 : ℕ) : ℝ))) :
    0 ≤ (Real.sqrt n)⁻¹ - Real.exp (-u / 2) ∧
      (Real.sqrt n)⁻¹ - Real.exp (-u / 2) ≤ criticalEndpointGap n := by
  have hs : 1 ≤ n + 1 := by omega
  have hlo : Real.exp (-u / 2) ≤ (Real.sqrt n)⁻¹ := by
    rw [← pickup_exp_negative_log_half hn]
    exact Real.exp_le_exp.mpr (by linarith [hu.1])
  have hhi : (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ ≤ Real.exp (-u / 2) := by
    rw [← pickup_exp_negative_log_half hs]
    exact Real.exp_le_exp.mpr (by linarith [hu.2])
  constructor
  · linarith
  · unfold criticalEndpointGap
    linarith

/-- The integrated drift is at most the cell mass times the squared endpoint
gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e1eead76aacda6818a266dc3399c9fae01743b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
