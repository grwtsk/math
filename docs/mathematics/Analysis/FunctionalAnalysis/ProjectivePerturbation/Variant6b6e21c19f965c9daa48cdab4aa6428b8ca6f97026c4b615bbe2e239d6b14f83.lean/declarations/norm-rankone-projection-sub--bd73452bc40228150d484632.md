# norm_rankOne_projection_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:783f46ce-bd7c-a4d5-3791-c752a8579897",
  "kind": "theorem",
  "lexical_name": "norm_rankOne_projection_sub",
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
  "slug": "norm-rankone-projection-sub--bd73452bc40228150d484632",
  "source": {
    "blob": "de1b6533ca5944bc38e85eb0e1f5bd351911ce5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 164,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd73452bc40228150d4846325159c37f669ba8c08a426bd36b9ebf7e0ff40c7e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:783f46ce-bd7c-a4d5-3791-c752a8579897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_rankOne_projection_sub (x y : H) (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    ‖rankOne ℂ x x - rankOne ℂ y y‖ =
      Real.sqrt (1 - ‖inner ℂ x y‖ ^ 2) := by
  let T : H →L[ℂ] H := rankOne ℂ x x - rankOne ℂ y y
  let s2 : ℝ := 1 - ‖inner ℂ x y‖ ^ 2
  have hoverlap : ‖inner ℂ x y‖ ≤ 1 := by
    simpa [hx, hy] using norm_inner_le_norm x y
  have hs2 : 0 ≤ s2 := by
    dsimp [s2]
    nlinarith [norm_nonneg (inner ℂ x y)]
  have hTadj : T† = T := by
    simp [T]
  have hcube : T ^ 3 = (s2 : ℂ) • T := by
    simpa [T, s2] using rankOne_projection_sub_cube x y hx hy
  have hfour : T ^ 4 = (s2 : ℂ) • T ^ 2 := by
    calc
      T ^ 4 = T ^ 3 * T := by noncomm_ring
      _ = ((s2 : ℂ) • T) * T := by rw [hcube]
      _ = (s2 : ℂ) • T ^ 2 := by
        rw [pow_two]
        exact Algebra.smul_mul_assoc _ _ _
  have hnormPolynomial : ‖T‖ ^ 4 = s2 * ‖T‖ ^ 2 := by
    have hnorm2 : ‖T ^ 2‖ = ‖T‖ ^ 2 := by
      calc
        ‖T ^ 2‖ = ‖T† ∘L T‖ := by rw [pow_two, hTadj]; rfl
        _ = ‖T‖ * ‖T‖ := ContinuousLinearMap.norm_adjoint_comp_self T
        _ = ‖T‖ ^ 2 := by ring
    have hT2adj : (T ^ 2)† = T ^ 2 := by
      rw [pow_two]
      change (T ∘L T)† = T ∘L T
      rw [ContinuousLinearMap.adjoint_comp, hTadj]
    have hnorm4 : ‖T ^ 4‖ = ‖T‖ ^ 4 := by
      calc
        ‖T ^ 4‖ = ‖(T ^ 2) ^ 2‖ := by noncomm_ring
        _ = ‖(T ^ 2)† ∘L (T ^ 2)‖ := by rw [pow_two, hT2adj]; rfl
        _ = ‖T ^ 2‖ * ‖T ^ 2‖ :=
          ContinuousLinearMap.norm_adjoint_comp_self (T ^ 2)
        _ = ‖T‖ ^ 4 := by rw [hnorm2]; ring
    have hnorm := congrArg norm hfour
    rw [hnorm4, norm_smul, Complex.norm_real, Real.norm_of_nonneg hs2, hnorm2] at hnorm
    exact hnorm
  have hsqrt : Real.sqrt s2 ≤ ‖T‖ := by
    simpa [T, s2, sin_angleBaseUnit_eq_norm_remainder x y hx hy,
      ProjectiveFubiniStudy.angleBaseUnit, Real.sin_arccos,
      ProjectiveFubiniStudy.norm_orthogonalRemainder_unit x y hx hy]
      using sin_angleBaseUnit_le_norm_projection_sub x y hx hy
  have hsqrt_sq : (Real.sqrt s2) ^ 2 = s2 := Real.sq_sqrt hs2
  have hfactor : ‖T‖ ^ 2 * (‖T‖ ^ 2 - s2) = 0 := by
    nlinarith
  rcases mul_eq_zero.mp hfactor with hzero | heq
  · have hTzero : ‖T‖ = 0 := (sq_eq_zero_iff).mp hzero
    have hsqrt_zero : Real.sqrt s2 = 0 := by
      nlinarith [Real.sqrt_nonneg s2]
    simp [T, s2, hTzero, hsqrt_zero]
  · have hsq : ‖T‖ ^ 2 = (Real.sqrt s2) ^ 2 := by nlinarith
    have hequal : ‖T‖ = Real.sqrt s2 :=
      (sq_eq_sq₀ (norm_nonneg T) (Real.sqrt_nonneg s2)).mp hsq
    simpa [T, s2] using hequal

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant6b6e21c19f965c9daa48cdab4aa6428b8ca6f97026c4b615bbe2e239d6b14f83.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1b6533ca5944bc38e85eb0e1f5bd351911ce5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
