# left_vertical_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b734a012-a566-642f-0eee-b91739109d56",
  "kind": "theorem",
  "lexical_name": "left_vertical_tendsto_zero",
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
  "slug": "left-vertical-tendsto-zero--2772ea61058479d09f7b806d",
  "source": {
    "blob": "199e8ec0815fdcc435a005b0c69bad3836909245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2772ea61058479d09f7b806d85c029e3a4ab9f7f43bf851ca9992ab184766184",
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

Occurrence: `result:b734a012-a566-642f-0eee-b91739109d56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem left_vertical_tendsto_zero (x h T : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hT : 0 ≤ T) :
    Tendsto (fun N : ℕ => vertical (integrand x h) (leftEdge N) T) atTop (𝓝 0) := by
  obtain ⟨B, _, hb⟩ := exists_left_vertical_budget x h T hh ha hT
  have hlim : Tendsto (fun N : ℕ => (4 * Real.pi / h) *
      ((B + (N : ℝ)) * Real.exp (-2 * (N : ℝ) * Real.log (x - h)))) atTop (𝓝 0) := by
    simpa only [mul_zero] using (affine_exp_decay (x - h) B ha).const_mul (4 * Real.pi / h)
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  exact squeeze_zero' (Eventually.of_forall (fun _ => norm_nonneg _))
    (eventually_atTop.mpr ⟨1, fun N hN => hb N hN⟩) hlim

/-- Normalization retains the upward-left convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `199e8ec0815fdcc435a005b0c69bad3836909245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
