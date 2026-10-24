# g_pos_near_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c281b747-67e1-12c2-d0d5-af49c525e15e",
  "kind": "theorem",
  "lexical_name": "g_pos_near_zero",
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
  "slug": "g-pos-near-zero--93ff82d753a008ee1d1748af",
  "source": {
    "blob": "c9106be74b741fa31457f5a3764c19c97fe53c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 261,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93ff82d753a008ee1d1748aff68643671d2747199ab0c33deb2d7e283f45b040",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c281b747-67e1-12c2-d0d5-af49c525e15e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem g_pos_near_zero : ∃ δ > 0, ∀ t ∈ Set.Ioo (0:ℝ) δ, g t > 0 := by
  -- g(t) → 1 as t → 0⁺, so g(t) > 1/2 for small t
  have htendsto := g_tendsto_one
  rw [Metric.tendsto_nhdsWithin_nhds] at htendsto
  specialize htendsto (1/2) (by norm_num : (0:ℝ) < 1/2)
  obtain ⟨δ, hδ_pos, hδ⟩ := htendsto
  use δ, hδ_pos
  intro t ⟨ht_pos, ht_lt⟩
  have hdist : dist t 0 < δ := by simp [abs_of_pos ht_pos]; exact ht_lt
  specialize hδ ht_pos hdist
  rw [Real.dist_eq] at hδ
  have h : g t > 1 - 1/2 := by
    have : |g t - 1| < 1/2 := hδ
    linarith [abs_sub_lt_iff.mp this]
  linarith

/-- li(2) > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9106be74b741fa31457f5a3764c19c97fe53c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
