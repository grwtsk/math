# tendsto_mul_L2_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edc5c5039aad733ad0afb8dda12029f6595dc25c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf3bcd0f-b287-c186-5745-0ec24b52cdd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94514283-9450-795e-bc8d-08405e12c0cf",
  "kind": "theorem",
  "lexical_name": "tendsto_mul_L2_one",
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
  "slug": "tendsto-mul-l2-one--f9dc34342b789d32d1fb233f",
  "source": {
    "blob": "edc5c5039aad733ad0afb8dda12029f6595dc25c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9dc34342b789d32d1fb233f612c33dfde8cd5db1064065c2f19e1f97333d76f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94514283-9450-795e-bc8d-08405e12c0cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mul_L2_one : Tendsto (fun s : ℂ => (s - 1) * L2 s) (𝓝[≠] 1) (𝓝 (1 / 2 : ℂ)) := by
  have hG1 : Gammaℝ 1 ≠ 0 := by simp [Gammaℝ_one]
  have hcontG : ContinuousAt (logDeriv invGammaℝ) 1 :=
    continuousAt_logDeriv (analyticAt_invGammaℝ 1) (invGammaℝ_ne_zero_iff.mpr hG1)
  -- the Γℝ(1−·) half: (s−1)·logDeriv(Γℝ∘(1−·)) s = −((1−s)·logDeriv G (1−s)) → −1
  have hev : ∀ᶠ s in 𝓝[≠] (1:ℂ), (s - 1) * L2 s
      = -(1/2) * (-((1 - s) * logDeriv invGammaℝ (1 - s)) + (s - 1) * logDeriv invGammaℝ s) := by
    filter_upwards [eventually_Gammaℝ_one_sub_ne_zero_nhdsWithin_one,
      mem_nhdsWithin_of_mem_nhds eventually_Gammaℝ_ne_zero_nhds_one] with s h1 h0
    rw [L2, logDeriv_chiFE_eq h1 h0, logDeriv_Gammaℝ_one_sub_eq h1]
    have hcomp : logDeriv (fun z => invGammaℝ (1 - z)) s = logDeriv invGammaℝ (1 - s) * (-1) := by
      have e : (fun z => invGammaℝ (1 - z)) = invGammaℝ ∘ (fun z : ℂ => 1 - z) := rfl
      rw [e, logDeriv_comp (differentiable_invGammaℝ _) (by fun_prop)]
      congr 1
      rw [deriv_const_sub, deriv_id'']
    rw [hcomp]; ring
  have hlim1 : Tendsto (fun s : ℂ => (1 - s) * logDeriv invGammaℝ (1 - s)) (𝓝[≠] 1) (𝓝 1) :=
    tendsto_mul_logDeriv_invGammaℝ_zero.comp tendsto_one_sub_nhdsWithin
  have hlim2 : Tendsto (fun s : ℂ => (s - 1) * logDeriv invGammaℝ s) (𝓝[≠] 1) (𝓝 0) := by
    have h : Tendsto (fun s : ℂ => (s - 1) * logDeriv invGammaℝ s) (𝓝 1)
        (𝓝 ((1 - 1) * logDeriv invGammaℝ 1)) :=
      ((tendsto_id (x := 𝓝 (1:ℂ))).sub_const 1).mul hcontG.tendsto
    have h' := h.mono_left (nhdsWithin_le_nhds (s := {(1:ℂ)}ᶜ))
    simpa using h'
  have hlim : Tendsto (fun s : ℂ => -(1/2) * (-((1 - s) * logDeriv invGammaℝ (1 - s))
      + (s - 1) * logDeriv invGammaℝ s)) (𝓝[≠] 1) (𝓝 (-(1/2) * (-1 + 0))) :=
    (hlim1.neg.add hlim2).const_mul _
  rw [show (1 / 2 : ℂ) = -(1/2) * (-1 + 0) by ring]
  exact hlim.congr' (hev.mono fun _ h => h.symm)

/-- the regular part of ζ at 1 in Mathlib's normalisation: F := ζ − (Γℝ)⁻¹/(s−1) is differentiable AT 1
(HurwitzZeta.differentiableAt_hurwitzZetaEven_sub_one_div) and near 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc5c5039aad733ad0afb8dda12029f6595dc25c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
