# positive_traces_eventual_overlap_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4f2c36e-a0a3-9613-4797-2bec6f6f1282",
  "kind": "theorem",
  "lexical_name": "positive_traces_eventual_overlap_lower_bound",
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
  "slug": "positive-traces-eventual-overlap-lower-bound--9cab9ea19cec67c7366f7391",
  "source": {
    "blob": "f691b7e401eb6f4a825fc8e14ad7e17105ecb09f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 100,
    "path": "GRWTSK/Analysis/Convolution/CompactSupportContact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cab9ea19cec67c7366f739150a17e47c1cfd8e7fed3dc48e418832b4298b0fe",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactSupportContact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4f2c36e-a0a3-9613-4797-2bec6f6f1282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_traces_eventual_overlap_lower_bound {a b : ℝ} {p : ℝ → ℝ}
    (intervalPositive : a < b) (continuousLeft : ContinuousAt p a)
    (continuousRight : ContinuousAt p b) (traceLeft : 0 < p a) (traceRight : 0 < p b)
    (productIntegrable : ∀ t : ℝ, Integrable (fun x : ℝ ↦ closedProfile a b p x *
      closedProfile a b p (x - t))) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ h : ℝ, 0 < h → h < ε →
      (min (p a) (p b) / 2) ^ 2 * h ≤ ∫ x : ℝ, closedProfile a b p x *
        closedProfile a b p (x - (b - a - h)) := by
  let c := min (p a) (p b) / 2
  have heightPositive : 0 < c := div_pos (lt_min traceLeft traceRight) (by norm_num)
  have leftStrict : c < p a := by
    have bound := min_le_left (p a) (p b)
    dsimp [c]
    linarith
  have rightStrict : c < p b := by
    have bound := min_le_right (p a) (p b)
    dsimp [c]
    linarith
  obtain ⟨δa, positiveδa, leftNear⟩ := Metric.eventually_nhds_iff.mp
    (continuousLeft.eventually (Ioi_mem_nhds leftStrict))
  obtain ⟨δb, positiveδb, rightNear⟩ := Metric.eventually_nhds_iff.mp
    (continuousRight.eventually (Ioi_mem_nhds rightStrict))
  refine ⟨min (min δa δb) (b - a),
    lt_min (lt_min positiveδa positiveδb) (by linarith), ?_⟩
  intro h shiftPositive short
  have hδa : h < δa := ((lt_min_iff.mp short).1.trans_le (min_le_left _ _))
  have hδb : h < δb := ((lt_min_iff.mp short).1.trans_le (min_le_right _ _))
  have hInterval : h < b - a := (lt_min_iff.mp short).2
  apply overlap_product_lower_bound shiftPositive hInterval heightPositive.le
    ?_ ?_ (productIntegrable _)
  · intro x lower upper
    have distance : dist x b < δb := by
      rw [Real.dist_eq, abs_of_nonpos (by linarith : x - b ≤ 0)]
      linarith
    exact (rightNear distance).le
  · intro y lower upper
    have distance : dist y a < δa := by
      rw [Real.dist_eq, abs_of_nonneg (by linarith : 0 ≤ y - a)]
      linarith
    exact (leftNear distance).le

end

end GRWTSK.Analysis.Convolution.CompactSupportContact
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactSupportContact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactSupportContact.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f691b7e401eb6f4a825fc8e14ad7e17105ecb09f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
