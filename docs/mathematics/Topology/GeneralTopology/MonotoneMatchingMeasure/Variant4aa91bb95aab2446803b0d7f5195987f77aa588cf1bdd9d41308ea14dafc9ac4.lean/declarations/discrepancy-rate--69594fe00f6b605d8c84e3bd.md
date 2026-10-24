# discrepancy_rate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:254969f7-a059-a597-dcb3-dc08964dd605",
  "kind": "theorem",
  "lexical_name": "discrepancy_rate",
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
  "slug": "discrepancy-rate--69594fe00f6b605d8c84e3bd",
  "source": {
    "blob": "8b312d425c9fa90ce3f9bc49593c9fc0fff35052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 306,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Variant4aa91bb95aab2446803b0d7f5195987f77aa588cf1bdd9d41308ea14dafc9ac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69594fe00f6b605d8c84e3bda4a02923772bf2a301779d2b5780b82838596257",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Variant4aa91bb95aab2446803b0d7f5195987f77aa588cf1bdd9d41308ea14dafc9ac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:254969f7-a059-a597-dcb3-dc08964dd605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrepancy_rate (t : ℝ) (ht : 0 < t) :
    |discrepancy t + Real.eulerMascheroniConstant| < (1833 / 1000 : ℝ) / t ^ 2 := by
  apply (lt_div_iff₀ (sq_pos_of_pos ht)).mpr
  by_cases hL : t ≤ onset
  · rw [discrepancy_below hL]
    have ht1 : t < (7 / 10 : ℝ) := by
      unfold onset at hL
      linarith [Real.log_two_lt_d9]
    have hg0 := Real.one_half_lt_eulerMascheroniConstant
    have hg1 := Real.eulerMascheroniConstant_lt_two_thirds
    have habs : |-t + Real.eulerMascheroniConstant| < (7 / 10 : ℝ) := by
      apply abs_lt.mpr
      constructor <;> linarith
    have ht2 : t ^ 2 < (49 / 100 : ℝ) := by nlinarith
    nlinarith [abs_nonneg (-t + Real.eulerMascheroniConstant)]
  · rw [discrepancy_above (lt_of_not_ge hL)]
    have he0 := Real.exp_pos (-t / 4)
    have hp := mul_pos amplitude_pos he0
    have he := mul_lt_mul_of_pos_left exp_neg_two_lt_one_seventh (by norm_num : (0 : ℝ) < 64)
    have hb := square_decay_bound t ht.le
    have hb0 : 0 ≤ t ^ 2 * Real.exp (-t / 4) := mul_nonneg (sq_nonneg _) he0.le
    have ha := amplitude_lt_one_fifth
    have hb1 : amplitude * (t ^ 2 * Real.exp (-t / 4)) < (64 / 35 : ℝ) := by
      have hm := mul_le_mul_of_nonneg_left hb amplitude_pos.le
      nlinarith
    rw [show -Real.eulerMascheroniConstant - amplitude * Real.exp (-t / 4) +
        Real.eulerMascheroniConstant = -(amplitude * Real.exp (-t / 4)) by ring,
      abs_neg, abs_of_pos hp]
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Variant4aa91bb95aab2446803b0d7f5195987f77aa588cf1bdd9d41308ea14dafc9ac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Variant4aa91bb95aab2446803b0d7f5195987f77aa588cf1bdd9d41308ea14dafc9ac4.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b312d425c9fa90ce3f9bc49593c9fc0fff35052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
