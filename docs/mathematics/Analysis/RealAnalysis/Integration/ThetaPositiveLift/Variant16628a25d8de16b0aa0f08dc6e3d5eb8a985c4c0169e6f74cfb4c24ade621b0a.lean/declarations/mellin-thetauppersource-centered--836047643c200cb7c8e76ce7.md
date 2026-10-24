# mellin_thetaUpperSource_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7031867c241b9d9a76622952e585ceddbeb3917",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60d98a4d-b4c4-9078-9d8e-8877a7dc3434",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:964f3773-a626-95e0-f975-5307a4e80009",
  "kind": "theorem",
  "lexical_name": "mellin_thetaUpperSource_centered",
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
  "slug": "mellin-thetauppersource-centered--836047643c200cb7c8e76ce7",
  "source": {
    "blob": "a7031867c241b9d9a76622952e585ceddbeb3917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 220,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:836047643c200cb7c8e76ce7860a186fd4168eb573b6810ccc5467423cb6608d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:964f3773-a626-95e0-f975-5307a4e80009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_thetaUpperSource_centered (u : ℂ) :
    mellin thetaUpperSource ((1 : ℂ) / 4 + u / 2) =
      8 * ∫ t in Ioi (0 : ℝ),
        (thetaA t : ℂ) * Complex.exp (2 * u * t) := by
  let s : ℂ := (1 : ℂ) / 4 + u / 2
  let g : ℝ → ℂ := fun x =>
    (x : ℂ) ^ (s - 1) * (((2 : ℝ) * thetaPsi x : ℝ) : ℂ)
  have hrestrict :
      mellin thetaUpperSource s = ∫ x in Ioi (1 : ℝ), g x := by
    unfold mellin thetaUpperSource
    simp_rw [← indicator_smul]
    rw [setIntegral_indicator measurableSet_Ioi]
    rw [inter_eq_right.mpr]
    · apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      dsimp only
      rw [thetaStrongPair_f_eq_two_thetaPsi hx]
      rfl
    · intro x hx
      exact zero_lt_one.trans (mem_Ioi.mp hx)
  rw [hrestrict]
  rw [← show (∫ r in Ioi (0 : ℝ), Real.exp r • g (Real.exp r)) =
      ∫ x in Ioi (1 : ℝ), g x by
    simpa only [Real.exp_zero] using integral_comp_exp_Ioi g 0]
  rw [← show (4 : ℝ) •
      (∫ t in Ioi (0 : ℝ), Real.exp (4 * t) • g (Real.exp (4 * t))) =
      ∫ r in Ioi (0 : ℝ), Real.exp r • g (Real.exp r) by
    simpa only [mul_zero] using
      integral_comp_mul_left_Ioi' (fun r : ℝ => Real.exp r • g (Real.exp r))
        0 (by norm_num : (0 : ℝ) < 4)]
  have hpoint :
      ∀ t : ℝ, Real.exp (4 * t) • g (Real.exp (4 * t)) =
        (2 : ℂ) * ((thetaA t : ℂ) * Complex.exp (2 * u * t)) := by
    intro t
    unfold g s thetaA
    simp only [Complex.real_smul]
    convert! congrArg
      (fun z : ℂ => z * (((2 : ℝ) * thetaPsi (Real.exp (4 * t)) : ℝ) : ℂ))
      (exp_four_cpow_centered t u) using 1 <;> push_cast <;> ring
  have hint :
      (∫ t in Ioi (0 : ℝ), Real.exp (4 * t) • g (Real.exp (4 * t))) =
        (2 : ℂ) * ∫ t in Ioi (0 : ℝ),
          (thetaA t : ℂ) * Complex.exp (2 * u * t) := by
    rw [show
      (fun t : ℝ => Real.exp (4 * t) • g (Real.exp (4 * t))) =
        fun t : ℝ => (2 : ℂ) *
          ((thetaA t : ℂ) * Complex.exp (2 * u * t)) by
      funext t
      exact hpoint t]
    exact integral_const_mul _ _
  rw [hint, RCLike.real_smul_eq_coe_mul]
  change (4 : ℂ) * ((2 : ℂ) * ∫ t in Ioi (0 : ℝ),
    (thetaA t : ℂ) * Complex.exp (2 * u * t)) =
      8 * ∫ t in Ioi (0 : ℝ),
        (thetaA t : ℂ) * Complex.exp (2 * u * t)
  ring

/-- The logarithmic theta transform is integrable for every complex spectral
parameter.  This is the integrability transport needed to use linearity when
the two exponential halves are recombined as a cosh. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7031867c241b9d9a76622952e585ceddbeb3917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
