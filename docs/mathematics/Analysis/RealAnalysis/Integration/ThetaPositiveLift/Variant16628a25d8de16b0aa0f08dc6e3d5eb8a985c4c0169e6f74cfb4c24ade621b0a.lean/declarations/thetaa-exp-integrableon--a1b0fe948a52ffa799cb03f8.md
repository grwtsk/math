# thetaA_exp_integrableOn

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
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:112ba352-a546-c001-0110-406a28d81544",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b563a7c-e107-b224-5493-15397c88c720",
  "kind": "theorem",
  "lexical_name": "thetaA_exp_integrableOn",
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
  "slug": "thetaa-exp-integrableon--a1b0fe948a52ffa799cb03f8",
  "source": {
    "blob": "a7031867c241b9d9a76622952e585ceddbeb3917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 280,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1b0fe948a52ffa799cb03f8dc5f3a2fe80743caf95b42ad252c9246bd5848a5",
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

Occurrence: `result:4b563a7c-e107-b224-5493-15397c88c720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaA_exp_integrableOn (u : ℂ) :
    IntegrableOn
      (fun t : ℝ => (thetaA t : ℂ) * Complex.exp (2 * u * t))
      (Ioi (0 : ℝ)) := by
  let s : ℂ := (1 : ℂ) / 4 + u / 2
  let g : ℝ → ℂ := fun x =>
    (x : ℂ) ^ (s - 1) * (((2 : ℝ) * thetaPsi x : ℝ) : ℂ)
  have hupper := thetaUpperSource_mellinConvergent s
  have hsubset : Ioi (1 : ℝ) ⊆ Ioi (0 : ℝ) := by
    intro x hx
    exact zero_lt_one.trans (mem_Ioi.mp hx)
  have hg : IntegrableOn g (Ioi (1 : ℝ)) := by
    unfold MellinConvergent at hupper
    have hrest := hupper.mono_set hsubset
    apply hrest.congr_fun
    · intro x hx
      unfold g
      dsimp only
      rw [thetaUpperSource_of_one_lt hx,
        thetaStrongPair_f_eq_two_thetaPsi hx]
      simp only [smul_eq_mul]
    · exact measurableSet_Ioi
  have hexp :
      IntegrableOn
        (fun r : ℝ => Real.exp r • g (Real.exp r))
        (Ioi (0 : ℝ)) := by
    exact (integrableOn_comp_exp_Ioi g 0).2 (by simpa using hg)
  have hscale :
      IntegrableOn
        (fun t : ℝ => Real.exp (4 * t) • g (Real.exp (4 * t)))
        (Ioi (0 : ℝ)) := by
    have h :=
      (integrableOn_Ioi_comp_mul_left_iff
        (fun r : ℝ => Real.exp r • g (Real.exp r))
        0 (by norm_num : (0 : ℝ) < 4)).2
        (by simpa using hexp)
    simpa using h
  have hpoint :
      EqOn
        (fun t : ℝ => Real.exp (4 * t) • g (Real.exp (4 * t)))
        (fun t : ℝ => (2 : ℂ) *
          ((thetaA t : ℂ) * Complex.exp (2 * u * t)))
        (Ioi (0 : ℝ)) := by
    intro t _
    unfold g s thetaA
    simp only [Complex.real_smul]
    convert! congrArg
      (fun z : ℂ => z * (((2 : ℝ) * thetaPsi (Real.exp (4 * t)) : ℝ) : ℂ))
      (exp_four_cpow_centered t u) using 1 <;> push_cast <;> ring
  have htwo :
      IntegrableOn
        (fun t : ℝ => (2 : ℂ) *
          ((thetaA t : ℂ) * Complex.exp (2 * u * t)))
        (Ioi (0 : ℝ)) :=
    hscale.congr_fun hpoint measurableSet_Ioi
  unfold IntegrableOn at htwo ⊢
  exact (integrable_const_mul_iff
    (isUnit_iff_ne_zero.mpr (by norm_num : (2 : ℂ) ≠ 0)) _).mp htwo

/-- Cosh is the integrable recombination of the positive and negative
exponential halves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7031867c241b9d9a76622952e585ceddbeb3917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
