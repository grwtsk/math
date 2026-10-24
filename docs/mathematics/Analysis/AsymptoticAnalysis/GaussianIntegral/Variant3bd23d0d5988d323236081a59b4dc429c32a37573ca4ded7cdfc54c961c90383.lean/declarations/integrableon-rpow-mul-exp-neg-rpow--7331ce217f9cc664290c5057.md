# integrableOn_rpow_mul_exp_neg_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caeaa8c1-64fe-f5d6-2e51-ae9148366c4a",
  "kind": "theorem",
  "lexical_name": "integrableOn_rpow_mul_exp_neg_rpow",
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
  "slug": "integrableon-rpow-mul-exp-neg-rpow--7331ce217f9cc664290c5057",
  "source": {
    "blob": "a94d72c9740fed99264b4035e198daae3d55bad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 68,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7331ce217f9cc664290c5057a0e56a710453e91ce95d1a07f32385fc0f25ba99",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caeaa8c1-64fe-f5d6-2e51-ae9148366c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_rpow_mul_exp_neg_rpow {p s : ℝ} (hs : -1 < s) (hp : 1 ≤ p) :
    IntegrableOn (fun x : ℝ => x ^ s * exp (- x ^ p)) (Ioi 0) := by
  obtain hp | hp := le_iff_lt_or_eq.mp hp
  · have h_exp : ∀ x, ContinuousAt (fun x => exp (- x)) x := fun x => continuousAt_neg.rexp
    rw [← Ioc_union_Ioi_eq_Ioi zero_le_one, integrableOn_union]
    constructor
    · rw [← integrableOn_Icc_iff_integrableOn_Ioc]
      refine IntegrableOn.mul_continuousOn ?_ ?_ isCompact_Icc
      · refine (intervalIntegrable_iff_integrableOn_Icc_of_le zero_le_one).mp ?_
        exact intervalIntegral.intervalIntegrable_rpow' hs
      · intro x _
        change ContinuousWithinAt ((fun x => exp (- x)) ∘ (fun x => x ^ p)) (Icc 0 1) x
        refine ContinuousAt.comp_continuousWithinAt (h_exp _) ?_
        exact continuousWithinAt_id.rpow_const (Or.inr (le_of_lt (lt_trans zero_lt_one hp)))
    · have h_rpow : ∀ (x r : ℝ), x ∈ Ici 1 → ContinuousWithinAt (fun x => x ^ r) (Ici 1) x := by
        intro _ _ hx
        refine continuousWithinAt_id.rpow_const (Or.inl ?_)
        exact ne_of_gt (lt_of_lt_of_le zero_lt_one hx)
      refine integrable_of_isBigO_exp_neg (by norm_num : (0 : ℝ) < 1 / 2)
        (ContinuousOn.mul (fun x hx => h_rpow x s hx) (fun x hx => ?_)) (IsLittleO.isBigO ?_)
      · change ContinuousWithinAt ((fun x => exp (- x)) ∘ (fun x => x ^ p)) (Ici 1) x
        exact ContinuousAt.comp_continuousWithinAt (h_exp _) (h_rpow x p hx)
      · convert rpow_mul_exp_neg_mul_rpow_isLittleO_exp_neg s hp (by norm_num : (0 : ℝ) < 1) using 3
        rw [neg_mul, one_mul]
  · simp_rw [← hp, Real.rpow_one]
    convert Real.GammaIntegral_convergent (by linarith : 0 < s + 1) using 2
    rw [add_sub_cancel_right, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a94d72c9740fed99264b4035e198daae3d55bad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
