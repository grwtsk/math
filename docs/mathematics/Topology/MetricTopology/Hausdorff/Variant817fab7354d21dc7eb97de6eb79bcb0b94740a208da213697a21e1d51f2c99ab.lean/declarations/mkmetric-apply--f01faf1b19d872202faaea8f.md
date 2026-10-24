# mkMetric_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acced7b7-11a1-7180-f08c-02beb543e22a",
  "kind": "theorem",
  "lexical_name": "mkMetric_apply",
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
  "slug": "mkmetric-apply--f01faf1b19d872202faaea8f",
  "source": {
    "blob": "e83fe34bf6c8572092724fd8cf11f2c54e7b1080",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 472,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f01faf1b19d872202faaea8f7dadfdb9cbbcbb758f104f652f56f47754306112",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acced7b7-11a1-7180-f08c-02beb543e22a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkMetric_apply (m : ℝ≥0∞ → ℝ≥0∞) (s : Set X) :
    mkMetric m s =
      ⨆ (r : ℝ≥0∞) (_ : 0 < r),
        ⨅ (t : ℕ → Set X) (_ : s ⊆ iUnion t) (_ : ∀ n, ediam (t n) ≤ r),
          ∑' n, ⨆ _ : (t n).Nonempty, m (ediam (t n)) := by
  classical
  -- We mostly unfold the definitions but we need to switch the order of `∑'` and `⨅`
  simp only [← OuterMeasure.coe_mkMetric, OuterMeasure.mkMetric, OuterMeasure.mkMetric',
    OuterMeasure.iSup_apply, OuterMeasure.mkMetric'.pre, OuterMeasure.boundedBy_apply, extend]
  refine
    surjective_id.iSup_congr id fun r =>
      iSup_congr_Prop Iff.rfl fun _ =>
        surjective_id.iInf_congr _ fun t => iInf_congr_Prop Iff.rfl fun ht => ?_
  dsimp
  by_cases htr : ∀ n, ediam (t n) ≤ r
  · rw [iInf_eq_if, ite_eq_left htr]
    congr 1 with n : 1
    simp only [iInf_eq_if, htr n, ite_true]
  · rw [iInf_eq_if, ite_eq_right htr]
    push Not at htr; rcases htr with ⟨n, hn⟩
    refine ENNReal.tsum_eq_top_of_eq_top ⟨n, ?_⟩
    rw [iSup_eq_if, ite_eq_left, iInf_eq_if, ite_eq_right]
    · exact hn.not_ge
    rcases ediam_pos_iff.1 hn.pos with ⟨x, hx, -⟩
    exact ⟨x, hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e83fe34bf6c8572092724fd8cf11f2c54e7b1080` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
