# RS_cauchy_of_continuous_bv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1941c34d-98d8-a930-b6db-305dff45942e",
  "kind": "lemma",
  "lexical_name": "RS_cauchy_of_continuous_bv",
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
  "slug": "rs-cauchy-of-continuous-bv--b357f7cd3f098ae7d970f5c0",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1153,
    "line": 1114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b357f7cd3f098ae7d970f5c0c2e3ec7b1ef0e75c301bc2c939078d7ad342bc18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1941c34d-98d8-a930-b6db-305dff45942e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1114–1153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RS_cauchy_of_continuous_bv
  {f g : ℝ → ℝ} {a b : ℝ} (hab : a < b)
  (hf : ContinuousOn f (Set.Icc a b))
  (hg : BoundedVariationOn g (Set.Icc a b)) :
  RSCauchyCondition f g a b := by
    intro ε hε
    let V := (eVariationOn g (Set.Icc a b)).toReal
    let ε' := ε / (3 * (V + 1));
    -- Choose δ such that |x - y| ≤ δ implies |f x - f y| ≤ ε'.
    obtain ⟨δ, hδ_pos, hδ⟩ : ∃ δ > 0, ∀ x y : ℝ, x ∈ Set.Icc a b → y ∈ Set.Icc a b → |x - y| ≤ δ → |f x - f y| ≤ ε' := by
      have := Metric.uniformContinuousOn_iff.mp ( isCompact_Icc.uniformContinuousOn_of_continuous hf ) ε' ( by exact div_pos hε ( by linarith [ show 0 ≤ V by exact ENNReal.toReal_nonneg ] ) );
      exact ⟨ this.choose / 2, half_pos this.choose_spec.1, fun x y hx hy hxy => le_of_lt ( this.choose_spec.2 x hx y hy ( by rw [ Real.dist_eq ] ; exact lt_of_le_of_lt hxy ( half_lt_self this.choose_spec.1 ) ) ) ⟩;
    refine' ⟨ δ, hδ_pos, fun P Q hP hQ => _ ⟩;
    -- Let R_untagged = IPart.union P.toIPart.IPartition Q.toIPart.IPartition.
    set R_untagged := IPart.union P.toIPartition Q.toIPartition;
    -- Apply RSSum_diff_bound to (P, R) and (Q, R) to get |S(P) - S(R)| ≤ ε' * V and |S(Q) - S(R)| ≤ ε' * V.
    have h_diff_P_R : |RSSum f g P - RSSum f g (tagLeft R_untagged)| ≤ ε' * V := by
      apply RSSum_diff_bound;
      exact Classical.choose_spec ( IPart.refinement_index_map P.toIPartition R_untagged ( IPart.union_refines_left P.toIPartition Q.toIPartition ) ) |>.1;
      · exact Classical.choose_spec ( IPart.refinement_index_map P.toIPartition R_untagged ( IPart.union_refines_left P.toIPartition Q.toIPartition ) ) |>.2;
      · apply IPart.index_map_zero;
        · exact IPart.union_strictMono P.toIPartition Q.toIPartition
        · exact Classical.choose_spec ( IPart.refinement_index_map P.toIPartition R_untagged ( IPart.union_refines_left P.toIPartition Q.toIPartition ) ) |>.2;
      · exact div_nonneg hε.le ( mul_nonneg zero_le_three ( add_nonneg ( ENNReal.toReal_nonneg ) zero_le_one ) );
      · apply oscillation_bound_of_mesh P hP hδ;
      · assumption
    have h_diff_Q_R : |RSSum f g Q - RSSum f g (tagLeft R_untagged)| ≤ ε' * V := by
      apply RSSum_diff_bound;
      any_goals assumption;
      case k => exact fun i => ( IPart.refinement_index_map _ _ ( IPart.union_refines_right _ _ ) ) |> Classical.choose |> fun k => k i;
      · exact Classical.choose_spec ( IPart.refinement_index_map _ _ ( IPart.union_refines_right _ _ ) ) |>.1;
      · exact Classical.choose_spec ( IPart.refinement_index_map _ _ ( IPart.union_refines_right _ _ ) ) |>.2;
      · exact IPart.index_map_zero ( IPart.union_strictMono _ _ ) _ ( Classical.choose_spec ( IPart.refinement_index_map _ _ ( IPart.union_refines_right _ _ ) ) |>.2 );
      · positivity;
      · apply oscillation_bound_of_mesh Q hQ hδ;
    exact abs_lt.mpr ⟨ by nlinarith [ abs_le.mp h_diff_P_R, abs_le.mp h_diff_Q_R, show 0 ≤ ε' by positivity, show 0 ≤ V by exact ENNReal.toReal_nonneg, mul_div_cancel₀ ε ( by linarith [ show 0 ≤ V by exact ENNReal.toReal_nonneg ] : ( 3 * ( V + 1 ) ) ≠ 0 ) ], by nlinarith [ abs_le.mp h_diff_P_R, abs_le.mp h_diff_Q_R, show 0 ≤ ε' by positivity, show 0 ≤ V by exact ENNReal.toReal_nonneg, mul_div_cancel₀ ε ( by linarith [ show 0 ≤ V by exact ENNReal.toReal_nonneg ] : ( 3 * ( V + 1 ) ) ≠ 0 ) ] ⟩

/-
Auxiliary definitions for the swapped partition points and tags.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L1114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
