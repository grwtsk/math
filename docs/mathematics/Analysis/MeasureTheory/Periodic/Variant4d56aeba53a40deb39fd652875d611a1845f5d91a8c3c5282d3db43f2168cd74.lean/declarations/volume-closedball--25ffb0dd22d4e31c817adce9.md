# volume_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b41ae099-6bd9-ace5-4e10-93400da1c38d",
  "kind": "theorem",
  "lexical_name": "volume_closedBall",
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
  "slug": "volume-closedball--25ffb0dd22d4e31c817adce9",
  "source": {
    "blob": "11f88e4f81eff4a22bb313a8a35a02a852844311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 113,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25ffb0dd22d4e31c817adce9d32ac53af80d08e8fa060007f5d6ff4a89720e74",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b41ae099-6bd9-ace5-4e10-93400da1c38d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_closedBall {x : AddCircle T} (ε : ℝ) :
    volume (Metric.closedBall x ε) = ENNReal.ofReal (min T (2 * ε)) := by
  have hT' : |T| = T := abs_eq_self.mpr hT.out.le
  let I := Ioc (-(T / 2)) (T / 2)
  have h₁ : ε < T / 2 → Metric.closedBall (0 : ℝ) ε ∩ I = Metric.closedBall (0 : ℝ) ε := by
    intro hε
    rw [inter_eq_left_iff_subset, Real.closedBall_eq_Icc, zero_sub, zero_add]
    rintro y ⟨hy₁, hy₂⟩; constructor <;> linarith
  have h₂ : (↑) ⁻¹' Metric.closedBall (0 : AddCircle T) ε ∩ I =
      if ε < T / 2 then Metric.closedBall (0 : ℝ) ε else I := by
    conv_rhs => rw [← if_ctx_congr (Iff.rfl : ε < T / 2 ↔ ε < T / 2) h₁ fun _ => rfl, ← hT']
    apply coe_real_preimage_closedBall_inter_eq
    simpa only [hT', Real.closedBall_eq_Icc, zero_add, zero_sub] using Ioc_subset_Icc_self
  rw [addHaar_closedBall_center]
  simp only [restrict_apply' measurableSet_Ioc, (by linarith : -(T / 2) + T = T / 2), h₂, ←
    (AddCircle.measurePreserving_mk T (-(T / 2))).measure_preimage measurableSet_closedBall]
  by_cases hε : ε < T / 2
  · simp [hε, min_eq_right (by linarith : 2 * ε ≤ T)]
  · simp [hε, min_eq_left (by linarith : T ≤ 2 * ε)]
#align add_circle.volume_closed_ball AddCircle.volume_closedBall

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f88e4f81eff4a22bb313a8a35a02a852844311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
