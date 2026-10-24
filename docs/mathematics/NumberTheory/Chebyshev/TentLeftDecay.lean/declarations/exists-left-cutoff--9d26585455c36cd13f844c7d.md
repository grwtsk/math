# exists_left_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a113e948-069d-3947-980e-ca0e8aacba65",
  "kind": "theorem",
  "lexical_name": "exists_left_cutoff",
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
  "slug": "exists-left-cutoff--9d26585455c36cd13f844c7d",
  "source": {
    "blob": "199e8ec0815fdcc435a005b0c69bad3836909245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d26585455c36cd13f844c7d706c0b447f58190e3dd8a7722c98b44726f467f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a113e948-069d-3947-980e-ca0e8aacba65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_left_cutoff (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hT : 0 ≤ T) (K : ℕ) (ε : ℝ) (hε : 0 < ε) :
    ∃ N : ℕ, K ≤ N ∧ 1 ≤ N ∧
      ‖vertical (integrand x h) (leftEdge N) T‖ < ε := by
  have hn : Tendsto (fun N : ℕ => ‖vertical (integrand x h) (leftEdge N) T‖)
      atTop (𝓝 0) := by
    simpa only [norm_zero] using (left_vertical_tendsto_zero x h T hh ha hT).norm
  obtain ⟨N₀, hN₀⟩ := eventually_atTop.mp ((tendsto_order.mp hn).2 ε hε)
  refine ⟨max N₀ (max K 1), le_trans (le_max_left K 1) (le_max_right _ _),
    le_trans (le_max_right K 1) (le_max_right _ _), hN₀ _ (le_max_left _ _)⟩

/-- A noncomputable left schedule may be chosen for any nonnegative height sequence.
This only controls the left side; horizontal growth at that schedule is NOT established. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `199e8ec0815fdcc435a005b0c69bad3836909245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
