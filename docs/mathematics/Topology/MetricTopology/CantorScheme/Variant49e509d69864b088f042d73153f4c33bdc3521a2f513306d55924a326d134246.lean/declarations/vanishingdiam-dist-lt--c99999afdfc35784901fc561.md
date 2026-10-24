# VanishingDiam.dist_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "729512ff8b52bb27c9e6e2590387a9c86ff27b29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49e509d69864b088f042d73153f4c33bdc3521a2f513306d55924a326d134246.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:381b0f92-40d6-14e5-41ec-2318369758b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59a71253-7bd6-eb37-8295-8e717e675056",
  "kind": "theorem",
  "lexical_name": "VanishingDiam.dist_lt",
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
  "slug": "vanishingdiam-dist-lt--c99999afdfc35784901fc561",
  "source": {
    "blob": "729512ff8b52bb27c9e6e2590387a9c86ff27b29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 124,
    "path": "GRWTSK/Topology/MetricTopology/CantorScheme/Variant49e509d69864b088f042d73153f4c33bdc3521a2f513306d55924a326d134246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c99999afdfc35784901fc561716bc09993c50fbf858bcd291c58d0b0a5c75d95",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CantorScheme/Variant49e509d69864b088f042d73153f4c33bdc3521a2f513306d55924a326d134246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59a71253-7bd6-eb37-8295-8e717e675056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem VanishingDiam.dist_lt (hA : VanishingDiam A) (ε : ℝ) (ε_pos : 0 < ε) (x : ℕ → β) :
    ∃ n : ℕ, ∀ (y) (_ : y ∈ A (res x n)) (z) (_ : z ∈ A (res x n)), dist y z < ε := by
  specialize hA x
  rw [ENNReal.tendsto_atTop_zero] at hA
  obtain ⟨n, hn⟩ := hA (ENNReal.ofReal (ε / 2)) (by
    simp only [gt_iff_lt, ENNReal.ofReal_pos]; linarith)
  use n
  intro y hy z hz
  rw [← ENNReal.ofReal_lt_ofReal_iff ε_pos, ← edist_dist]
  apply lt_of_le_of_lt (Metric.edist_le_ediam_of_mem hy hz)
  apply lt_of_le_of_lt (hn _ (le_refl _))
  rw [ENNReal.ofReal_lt_ofReal_iff ε_pos]
  linarith

/-- A scheme with vanishing diameter along each branch induces a continuous map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CantorScheme/Variant49e509d69864b088f042d73153f4c33bdc3521a2f513306d55924a326d134246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CantorScheme/Variant49e509d69864b088f042d73153f4c33bdc3521a2f513306d55924a326d134246.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `729512ff8b52bb27c9e6e2590387a9c86ff27b29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
