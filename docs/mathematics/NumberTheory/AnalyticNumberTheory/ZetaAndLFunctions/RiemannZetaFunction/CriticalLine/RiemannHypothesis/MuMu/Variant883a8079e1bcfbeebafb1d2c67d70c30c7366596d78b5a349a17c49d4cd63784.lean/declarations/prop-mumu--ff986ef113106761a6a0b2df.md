# prop_mumu

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f5f8e530f86783026d26a6a32bf33740922896a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d4b165c-c564-ebcf-d1e2-3d52e1f7b7b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2e99e56-6bc1-919a-7fb9-b0e57cf67e08",
  "kind": "theorem",
  "lexical_name": "prop_mumu",
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
  "slug": "prop-mumu--ff986ef113106761a6a0b2df",
  "source": {
    "blob": "6f5f8e530f86783026d26a6a32bf33740922896a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 224,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variant883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff986ef113106761a6a0b2dff3bb6ed996a48f24314497a461d8e66b2505a7ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variant883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2e99e56-6bc1-919a-7fb9-b0e57cf67e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_mumu (hΓ : Zeta23.GammaFacts) (hcheb : Zeta23.ChebyshevMertens)
    (hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      |Mform F.Phi p.T Zeta23.mu Zeta23.mu
          - 2 * π * F.b * p.L * ∫ τ in p.T..(2 * p.T), Zeta23.mu τ ^ 2|
        ≤ C * (p.l ^ 2 * Real.log p.L)) := by
  obtain ⟨K, hK0, hKinc⟩ := mu_increment_bound hΓ
  obtain ⟨T₀μ, hT₀μ⟩ := mu_abs_le_l hΓ
  refine ⟨(1 + K) * (12 + 4 * max 0 (Real.log cϱ)) + 5 * (8 + 2 * cϱ ^ 2),
    max T₀μ 2, fun p F hplam hT hF => ?_⟩
  have hT2 : 2 ≤ p.T := le_trans (le_max_right _ _) hT
  have hμl := hT₀μ p (le_trans (le_max_left _ _) hT)
  have hcore := mumu_core hΓ hF hT2 hμl hK0 hKinc
  have hI1 := hF.integral_Phi_sq_mul_abs_le
  have hI2 := hF.integral_Phi_sq_mul_sq_le
  have hL8 : 8 ≤ p.L := hF.eight_le_L
  have hlog2 : 2 ≤ Real.log p.L := by
    rw [Real.le_log_iff_exp_le (by linarith)]
    have h1 := Real.exp_one_lt_d9
    calc Real.exp 2 = Real.exp 1 * Real.exp 1 := by rw [← Real.exp_add]; norm_num
      _ ≤ 2.7182818286 * 2.7182818286 := by nlinarith [Real.exp_pos 1]
      _ ≤ 8 := by norm_num
      _ ≤ p.L := hL8
  have hlogpos : 0 < Real.log p.L := by linarith
  have hcϱ4 : 4 ≤ cϱ := hF.four_le_cϱ
  have hw1 : 1 ≤ p.w := hF.one_le_w
  have hl1 : 1 ≤ p.l := hF.one_le_l
  have hm0 : 0 ≤ max 0 (Real.log cϱ) := le_max_left _ _
  have hlogbound : Real.log (cϱ * p.L / (4 * p.w)) ≤ max 0 (Real.log cϱ) + Real.log p.L := by
    calc Real.log (cϱ * p.L / (4 * p.w)) ≤ Real.log (cϱ * p.L) := by
          apply Real.log_le_log (by positivity)
          apply div_le_self (by positivity)
          linarith
      _ = Real.log cϱ + Real.log p.L := Real.log_mul (by positivity) (by positivity)
      _ ≤ max 0 (Real.log cϱ) + Real.log p.L := by
          have := le_max_right (0 : ℝ) (Real.log cϱ)
          linarith
  have hA : ∫ x, F.Phi x ^ 2 * |x| ≤ (12 + 4 * max 0 (Real.log cϱ)) * Real.log p.L := by
    refine hI1.trans ?_
    have h8 : 8 + 8 * Real.log (cϱ * p.L / (4 * p.w))
        ≤ 8 + 8 * (max 0 (Real.log cϱ) + Real.log p.L) := by linarith
    refine h8.trans ?_
    nlinarith [mul_nonneg hm0 (by linarith : (0 : ℝ) ≤ Real.log p.L - 2)]
  have hB : ∫ x, F.Phi x ^ 2 * x ^ 2 ≤ 8 + 2 * cϱ ^ 2 := by
    refine hI2.trans ?_
    have hdiv : cϱ / p.w ≤ cϱ := div_le_self (by linarith) hw1
    have hdivnn : 0 ≤ cϱ / p.w := by positivity
    nlinarith
  have hI1nn : 0 ≤ ∫ x, F.Phi x ^ 2 * |x| := integral_nonneg fun x => by positivity
  have hI2nn : 0 ≤ ∫ x, F.Phi x ^ 2 * x ^ 2 := integral_nonneg fun x => by positivity
  refine hcore.trans ?_
  have hstep : (1 + K) * p.l ^ 2 * (∫ x, F.Phi x ^ 2 * |x|)
        + 10 * p.l * ∫ x, F.Phi x ^ 2 * x ^ 2
      ≤ (1 + K) * p.l ^ 2 * ((12 + 4 * max 0 (Real.log cϱ)) * Real.log p.L)
        + 10 * p.l * (8 + 2 * cϱ ^ 2) := by
    gcongr
  refine hstep.trans ?_
  have hlt : (0 : ℝ) ≤ p.l * Real.log p.L - 2 := by
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ p.l - 1) (by linarith : (0 : ℝ) ≤ Real.log p.L)]
  have h82 : (0 : ℝ) ≤ 8 + 2 * cϱ ^ 2 := by positivity
  have hfin : 10 * p.l * (8 + 2 * cϱ ^ 2)
      ≤ 5 * (8 + 2 * cϱ ^ 2) * (p.l ^ 2 * Real.log p.L) := by
    nlinarith [mul_nonneg (mul_nonneg (by linarith : (0 : ℝ) ≤ p.l) h82) hlt]
  nlinarith [hfin]

end PrimeSide
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variant883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MuMu/Variant883a8079e1bcfbeebafb1d2c67d70c30c7366596d78b5a349a17c49d4cd63784.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f5f8e530f86783026d26a6a32bf33740922896a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
