# ConvexOn.lipschitzOnWith_of_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c8e5b7c-2ea1-ecc9-acb8-e265b7eb72fd",
  "kind": "lemma",
  "lexical_name": "ConvexOn.lipschitzOnWith_of_abs_le",
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
  "slug": "convexon-lipschitzonwith-of-abs-le--f6856bc5849969ecfd46c886",
  "source": {
    "blob": "e436ad9b2677486583a0924486a1323593bea052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 34,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6856bc5849969ecfd46c886fefe4a1ea91eba8931850ef5dd873e14c9816a26",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c8e5b7c-2ea1-ecc9-acb8-e265b7eb72fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConvexOn.lipschitzOnWith_of_abs_le (hf : ConvexOn ℝ (ball x₀ r) f) (hε : 0 < ε)
    (hM : ∀ a, dist a x₀ < r → |f a| ≤ M) :
    LipschitzOnWith (2 * M / ε).toNNReal f (ball x₀ (r - ε)) := by
  set K := 2 * M / ε with hK
  have oneside {x y : E} (hx : x ∈ ball x₀ (r - ε)) (hy : y ∈ ball x₀ (r - ε)) :
      f x - f y ≤ K * ‖x - y‖ := by
    obtain rfl | hxy := eq_or_ne x y
    · simp
    have hx₀r : ball x₀ (r - ε) ⊆ ball x₀ r := ball_subset_ball <| by linarith
    have hx' : x ∈ ball x₀ r := hx₀r hx
    have hy' : y ∈ ball x₀ r := hx₀r hy
    let z := x + (ε / ‖x - y‖) • (x - y)
    replace hxy : 0 < ‖x - y‖ := by rwa [norm_sub_pos_iff]
    have hz : z ∈ ball x₀ r := mem_ball_iff_norm.2 <| by
      calc
        _ = ‖(x - x₀) + (ε / ‖x - y‖) • (x - y)‖ := by simp only [z, add_sub_right_comm]
        _ ≤ ‖x - x₀‖ + ‖(ε / ‖x - y‖) • (x - y)‖ := norm_add_le ..
        _ < r - ε + ε :=
          add_lt_add_of_lt_of_le (mem_ball_iff_norm.1 hx) <| by
            simp [norm_smul, abs_of_nonneg, hε.le, hxy.ne']
        _ = r := by simp
    let a := ε / (ε + ‖x - y‖)
    let b := ‖x - y‖ / (ε + ‖x - y‖)
    have hab : a + b = 1 := by simp [field, a, b]
    have hxyz : x = a • y + b • z := by
      calc
        x = a • x + b • x := by rw [Convex.combo_self hab]
        _ = a • y + b • z := by simp [z, a, b, smul_smul, hxy.ne', smul_sub]; abel
    rw [hK, mul_comm, ← mul_div_assoc, le_div_iff₀' hε]
    calc
      ε * (f x - f y) ≤ ‖x - y‖ * (f z - f x) := by
        have h := hf.2 hy' hz (by positivity) (by positivity) hab
        simp only [← hxyz, smul_eq_mul, a, b] at h
        field_simp at h
        linear_combination h
      _ ≤ _ := by
        rw [sub_eq_add_neg (f _), two_mul]
        gcongr
        · exact (le_abs_self _).trans <| hM _ hz
        · exact (neg_le_abs _).trans <| hM _ hx'
  refine .of_dist_le' fun x hx y hy ↦ ?_
  simp_rw [dist_eq_norm_sub, Real.norm_eq_abs, abs_sub_le_iff]
  exact ⟨oneside hx hy, norm_sub_rev x _ ▸ oneside hy hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e436ad9b2677486583a0924486a1323593bea052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
