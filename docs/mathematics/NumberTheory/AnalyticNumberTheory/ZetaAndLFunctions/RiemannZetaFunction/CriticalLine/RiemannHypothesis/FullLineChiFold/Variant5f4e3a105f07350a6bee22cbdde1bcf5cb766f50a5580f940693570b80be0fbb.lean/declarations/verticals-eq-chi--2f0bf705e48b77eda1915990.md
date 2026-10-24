# verticals_eq_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0091aebaa9bb2aedbbde68bbb5b12377654cc3d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f4e3a105f07350a6bee22cbdde1bcf5cb766f50a5580f940693570b80be0fbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:630b4938-c049-5b9e-ce24-d5c799dcfd58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22e452ee-bd45-561b-655b-0da09626a063",
  "kind": "theorem",
  "lexical_name": "verticals_eq_chi",
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
  "slug": "verticals-eq-chi--2f0bf705e48b77eda1915990",
  "source": {
    "blob": "0091aebaa9bb2aedbbde68bbb5b12377654cc3d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiFold/Variant5f4e3a105f07350a6bee22cbdde1bcf5cb766f50a5580f940693570b80be0fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f0bf705e48b77eda19159907c3ebfa4b07b9d7d30d6a546b5775163d436f668",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiFold/Variant5f4e3a105f07350a6bee22cbdde1bcf5cb766f50a5580f940693570b80be0fbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22e452ee-bd45-561b-655b-0da09626a063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verticals_eq_chi (hq : 1 < q) (hprim : χ.IsPrimitive) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) {c : ℝ} (hc1 : 1 < c) (_hc2 : c ≤ 3/2) (R : ℝ) :
    VIntegral (fun s => Hfn k s * logDeriv (completedLSym χ) s) c (-R) R
      - VIntegral (fun s => Hfn k s * logDeriv (completedLSym χ) s) (1 - c) (-R) R
      = I • ∫ t in (-R)..R, FlineChi χ k c t := by
  have hχ1 := ne_one_of_primitive hq hprim
  have hprim' : χ⁻¹.IsPrimitive := isPrimitive_inv hprim
  set L := logDeriv (completedLSym χ) with hL
  set L' := logDeriv (completedLSym χ⁻¹) with hL'
  have hLc : Continuous (fun t : ℝ => L ((c : ℂ) + t * I)) :=
    continuous_logDeriv_completedLSym_line hq hprim hc1
  have hL'c : Continuous (fun t : ℝ => L' ((c : ℂ) + t * I)) :=
    continuous_logDeriv_completedLSym_line (χ := χ⁻¹) hq hprim' hc1
  have hHc := continuous_Hfn_line hk hkc c
  have hH2 : Continuous (fun t : ℝ => Hfn k (1 - c - t * I)) := by
    have h := continuous_Hfn_line hk hkc (1 - c)
    have : (fun t : ℝ => Hfn k (1 - c - t * I))
        = (fun t : ℝ => Hfn k (((1 - c : ℝ) : ℂ) + t * I)) ∘ fun t : ℝ => -t := by
      funext t; simp only [Function.comp_apply, one_sub_cast]
    rw [this]; exact h.comp continuous_neg
  -- the left-line integrand, pointwise: L((1−c)+iy,χ) = −L'(c−iy,χ⁻¹)
  have hleft : ∀ y : ℝ, Hfn k (((1 - c : ℝ) : ℂ) + y * I) * L (((1 - c : ℝ) : ℂ) + y * I)
      = -(Hfn k (1 - c - ((-y : ℝ) : ℂ) * I) * L' ((c : ℂ) + ((-y : ℝ) : ℂ) * I)) := by
    intro y
    have hs : ((1 - c : ℝ) : ℂ) + y * I = 1 - conj ((c : ℂ) + y * I) := by
      apply Complex.ext <;> simp
    have hval : L (((1 - c : ℝ) : ℂ) + y * I) = -L' ((c : ℂ) + ((-y : ℝ) : ℂ) * I) := by
      rw [hs, hL, logDeriv_completedLSym_one_sub_conj hq hprim, hL',
        ← logDeriv_completedLSym_inv_conj hq hχ1]
      congr 2
      apply Complex.ext <;> simp
    have hH : Hfn k (((1 - c : ℝ) : ℂ) + y * I) = Hfn k (1 - c - ((-y : ℝ) : ℂ) * I) := by
      congr 1; push_cast; ring
    rw [hval, hH]; ring
  have hI1 : IntervalIntegrable (fun t : ℝ => Hfn k ((c : ℂ) + t * I) * L ((c : ℂ) + t * I))
      volume (-R) R := (hHc.mul hLc).intervalIntegrable _ _
  have hI2 : IntervalIntegrable (fun t : ℝ => Hfn k (1 - c - t * I) * L' ((c : ℂ) + t * I))
      volume (-R) R := (hH2.mul hL'c).intervalIntegrable _ _
  have hfold : (∫ y in (-R)..R, Hfn k (((1 - c : ℝ) : ℂ) + y * I) * L (((1 - c : ℝ) : ℂ) + y * I))
      = -∫ t in (-R)..R, Hfn k (1 - c - t * I) * L' ((c : ℂ) + t * I) := by
    simp_rw [hleft]
    rw [intervalIntegral.integral_neg]
    have h := intervalIntegral.integral_comp_neg (a := -R) (b := R)
      (fun t : ℝ => Hfn k (1 - c - t * I) * L' ((c : ℂ) + t * I))
    simp only [neg_neg] at h
    rw [← h]
  dsimp only [VIntegral]
  rw [hfold, ← smul_sub, sub_neg_eq_add, ← intervalIntegral.integral_add hI1 hI2]
  congr 1

/-! ## (Z) the zero-sum limit -/

/-- **(Z) zero-sum limit for χ.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiFold/Variant5f4e3a105f07350a6bee22cbdde1bcf5cb766f50a5580f940693570b80be0fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiFold/Variant5f4e3a105f07350a6bee22cbdde1bcf5cb766f50a5580f940693570b80be0fbb.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0091aebaa9bb2aedbbde68bbb5b12377654cc3d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
