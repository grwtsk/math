# MellinOfPsi_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf15754d-7df1-c2f7-8d96-a5fd275e5476",
  "kind": "lemma",
  "lexical_name": "MellinOfPsi_aux",
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
  "slug": "mellinofpsi-aux--94eb39d8c1485af7124b1c0a",
  "source": {
    "blob": "fe0aad58186aa1be22aa6f6c63491354d123fa9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 352,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94eb39d8c1485af7124b1c0a689cbf90a44dd9362023b01786f2dc05a405745e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf15754d-7df1-c2f7-8d96-a5fd275e5476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MellinOfPsi_aux {ν : ℝ → ℝ} (diffν : ContDiff ℝ 1 ν)
    (suppν : ν.support ⊆ Set.Icc (1 / 2) 2)
    {s : ℂ} (hs : s ≠ 0) :
    ∫ (x : ℝ) in Ioi 0, (ν x) * (x : ℂ) ^ (s - 1) =
    - (1 / s) * ∫ (x : ℝ) in Ioi 0, (deriv ν x) * (x : ℂ) ^ s := by
  let g (s : ℂ) := fun (x : ℝ)  ↦ x ^ s / s
  have gderiv {s : ℂ} (hs : s ≠ 0) {x: ℝ} (hx : x ∈ Ioi 0) :
      deriv (g s) x = x ^ (s - 1) := by
    have := HasDerivAt.cpow_const (c := s) (hasDerivAt_id (x : ℂ)) (Or.inl hx)
    simp_rw [mul_one, id_eq] at this
    rw [deriv_div_const, deriv.comp_ofReal (e := fun x ↦ x ^ s)]
    · rw [this.deriv, mul_div_right_comm, div_self hs, one_mul]
    · apply hasDerivAt_deriv_iff.mp
      simp only [this.deriv, this]
  calc
    _ =  ∫ (x : ℝ) in Ioi 0, ↑(ν x) * deriv (@g s) x := ?_
    _ = -∫ (x : ℝ) in Ioi 0, deriv (fun x ↦ ↑(ν x)) x * @g s x := ?_
    _ = -∫ (x : ℝ) in Ioi 0, deriv ν x * @g s x := ?_
    _ = -∫ (x : ℝ) in Ioi 0, deriv ν x * x ^ s / s := by simp only [mul_div, g]
    _ = _ := ?_
  · rw [setIntegral_congr_fun (by simp)]
    intro _ hx
    simp only [gderiv hs hx]
  · apply PartialIntegration_of_support_in_Icc (ν ·) (g s)
      (a := 1 / 2) (b := 2) (by norm_num) (by norm_num)
    · simpa only [Function.support_subset_iff, ne_eq, ofReal_eq_zero]
    · exact (Differentiable.ofReal_comp_iff.mpr
        (diffν.differentiable (by norm_num))).differentiableOn
    · refine DifferentiableOn.div_const ?_ s
      intro a ha
      refine DifferentiableAt.comp_ofReal (e := fun x ↦ x ^ s) ?_ |>.differentiableWithinAt
      apply differentiableAt_fun_id.cpow (differentiableAt_const s) <| by exact Or.inl ha
    · simp only [deriv.ofReal_comp']
      exact continuous_ofReal.comp (diffν.continuous_deriv (by norm_num)) |>.continuousOn
    · apply ContinuousOn.congr (f := fun (x : ℝ) ↦ (x : ℂ) ^ (s - 1)) ?_
        fun x hx ↦ gderiv hs hx
      exact Continuous.continuousOn (by continuity) |>.cpow continuousOn_const (by simp)
  · congr; funext; congr
    apply (hasDerivAt_deriv_iff.mpr ?_).ofReal_comp.deriv
    exact diffν.contDiffAt.differentiableAt (by norm_num)
  · simp only [neg_mul, neg_inj]
    conv => lhs; rhs; intro; rw [← mul_one_div, mul_comm]
    rw [integral_const_mul]

-- filter-free version:
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe0aad58186aa1be22aa6f6c63491354d123fa9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
