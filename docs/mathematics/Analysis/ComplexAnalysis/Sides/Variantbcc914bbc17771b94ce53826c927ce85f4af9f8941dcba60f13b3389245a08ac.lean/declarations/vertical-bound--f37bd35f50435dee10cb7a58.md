# vertical_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6befe86b10230e4d760832461349890375289e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ad99024-184d-f539-ec3b-c017981c974f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d75f198f-83d3-cd56-f0fd-dfd7db5a1c0e",
  "kind": "theorem",
  "lexical_name": "vertical_bound",
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
  "slug": "vertical-bound--f37bd35f50435dee10cb7a58",
  "source": {
    "blob": "c6befe86b10230e4d760832461349890375289e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 126,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f37bd35f50435dee10cb7a5842ff0cb1ccd53d725941e3333313fd375ffaea58",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d75f198f-83d3-cd56-f0fd-dfd7db5a1c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertical_bound : ∃ t₁ : ℝ, 2 ≤ t₁ ∧ ∀ T₁ T₂ : ℝ, t₁ ≤ T₁ → T₁ ≤ T₂ →
    |(∫ t in T₁..T₂, logDeriv Yfn (2 + t * I) * I).im| ≤ 3 * Real.pi := by
  obtain ⟨t₁, ht₁, hlow⟩ := two_line_lower
  refine ⟨t₁, ht₁, fun T₁ T₂ hT₁ h12 => ?_⟩
  have hfacts : ∀ t ∈ Icc T₁ T₂, 2 ≤ |t| ∧ 3 ≤ (Gfn (2 + t * I)).re ∧ 0 < (Pneg (2 + t * I)).re := by
    intro t ht
    have ht2 : 2 ≤ t := by linarith [ht.1]
    have ht' : t₁ ≤ |t| := le_trans (by linarith [ht.1]) (le_abs_self t)
    refine ⟨le_trans ht2 (le_abs_self t), (hlow t ht').1, ?_⟩
    rw [re_Pneg_two]
    nlinarith
  have hGne : ∀ t ∈ Icc T₁ T₂, Gfn (2 + t * I) ≠ 0 := fun t ht h => by
    have := (hfacts t ht).2.1; rw [h] at this; simp at this; linarith
  have hPne : ∀ t ∈ Icc T₁ T₂, Pneg (2 + t * I) ≠ 0 := fun t ht h => by
    have := (hfacts t ht).2.2; rw [h] at this; simp at this
  -- pointwise split
  have hcongr : EqOn (fun t : ℝ => logDeriv Yfn (2 + t * I) * I)
      (fun t : ℝ => (logDeriv Pneg (2 + t * I) * I + logDeriv riemannZeta (2 + t * I) * I)
        + logDeriv Gfn (2 + t * I) * I) (uIcc T₁ T₂) := by
    intro t ht
    rw [uIcc_of_le h12] at ht
    simp only
    rw [logDeriv_Yfn_two (hGne t ht) (hfacts t ht).1]
    ring
  have hIP : IntervalIntegrable (fun t : ℝ => logDeriv Pneg (2 + t * I) * I) volume T₁ T₂ :=
    intervalIntegrable_logDeriv_two fun t ht => by
      rw [uIcc_of_le h12] at ht
      exact ⟨Pneg_analyticAt _, hPne t ht⟩
  have hIZ : IntervalIntegrable (fun t : ℝ => logDeriv riemannZeta (2 + t * I) * I) volume T₁ T₂ :=
    intervalIntegrable_logDeriv_two fun t _ =>
      ⟨Zeta23.WeilEF.analyticAt_riemannZeta (two_line_ne_one t), zeta_two_line_ne_zero t⟩
  have hIG : IntervalIntegrable (fun t : ℝ => logDeriv Gfn (2 + t * I) * I) volume T₁ T₂ :=
    intervalIntegrable_logDeriv_two fun t ht => by
      rw [uIcc_of_le h12] at ht
      exact ⟨Gfn_analyticAt_two t, hGne t ht⟩
  rw [integral_congr hcongr, integral_add (hIP.add hIZ) hIG, integral_add hIP hIZ]
  simp only [Complex.add_im]
  -- the three bounds
  have e2 : ∀ t : ℝ, (((2 : ℝ) : ℂ) + t * I) = (2 : ℂ) + t * I := fun t => by push_cast; ring
  have b1 : |(∫ t in T₁..T₂, logDeriv Pneg (2 + t * I) * I).im| ≤ Real.pi := by
    have := abs_im_integral_logDeriv_vertical_le_pi (f := Pneg) (σ := 2) h12
      (fun t _ => by rw [e2]; exact Pneg_analyticAt _) (fun t ht => by rw [e2]; exact (hfacts t ht).2.2)
    simpa only [e2] using this
  have b2 : |(∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I) * I).im| ≤ Real.pi :=
    Zeta23.RvM.vertical_two T₁ T₂
  have b3 : |(∫ t in T₁..T₂, logDeriv Gfn (2 + t * I) * I).im| ≤ Real.pi := by
    have := abs_im_integral_logDeriv_vertical_le_pi (f := Gfn) (σ := 2) h12
      (fun t _ => by rw [e2]; exact Gfn_analyticAt_two t)
      (fun t ht => by rw [e2]; linarith [(hfacts t ht).2.1])
    simpa only [e2] using this
  calc |(∫ t in T₁..T₂, logDeriv Pneg (2 + t * I) * I).im
        + (∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I) * I).im
        + (∫ t in T₁..T₂, logDeriv Gfn (2 + t * I) * I).im|
      ≤ |(∫ t in T₁..T₂, logDeriv Pneg (2 + t * I) * I).im|
        + |(∫ t in T₁..T₂, logDeriv riemannZeta (2 + t * I) * I).im|
        + |(∫ t in T₁..T₂, logDeriv Gfn (2 + t * I) * I).im| := abs_add_three _ _ _
    _ ≤ Real.pi + Real.pi + Real.pi := by gcongr
    _ = 3 * Real.pi := by ring

end ZeroCount
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Sides/Variantbcc914bbc17771b94ce53826c927ce85f4af9f8941dcba60f13b3389245a08ac.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6befe86b10230e4d760832461349890375289e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
