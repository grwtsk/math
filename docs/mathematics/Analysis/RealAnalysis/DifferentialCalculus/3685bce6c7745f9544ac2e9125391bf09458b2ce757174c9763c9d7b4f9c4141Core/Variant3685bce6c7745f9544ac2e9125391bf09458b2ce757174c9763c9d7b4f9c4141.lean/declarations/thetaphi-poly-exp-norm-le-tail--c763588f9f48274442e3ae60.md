# thetaPhi_poly_exp_norm_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b99f93f0dde6843cda470e71a2f105bd957701d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9edd0df-a500-b8ec-873f-7704b58a3b43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89eede68-d902-fecf-a2b6-0e3b448bbcf6",
  "kind": "theorem",
  "lexical_name": "thetaPhi_poly_exp_norm_le_tail",
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
  "slug": "thetaphi-poly-exp-norm-le-tail--c763588f9f48274442e3ae60",
  "source": {
    "blob": "b99f93f0dde6843cda470e71a2f105bd957701d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 15,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c763588f9f48274442e3ae6061c58e6413978d06accbe99612a262c755430982",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89eede68-d902-fecf-a2b6-0e3b448bbcf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_poly_exp_norm_le_tail (m : ℕ) (R : ℝ) {t : ℝ}
    (ht : 11 + |R| ≤ t) :
    ‖thetaPhi t * t ^ m * Real.exp (R * t)‖ ≤
      (thetaPhiDecayConstant * (m.factorial : ℝ)) * Real.exp (-t) := by
  have hT0 : 0 ≤ 11 + |R| := by positivity
  have ht0 : 0 ≤ t := hT0.trans ht
  have hmul : (11 + |R|) * t ≤ t ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) ht0]
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hsqexp : t ^ 2 ≤ Real.exp (4 * t) := by nlinarith [sq_nonneg t]
  have hpi : 1 ≤ Real.pi / 2 := by nlinarith [Real.pi_gt_three]
  have hdebt : (11 + |R|) * t ≤ (Real.pi / 2) * Real.exp (4 * t) :=
    hmul.trans <| hsqexp.trans (by
      nlinarith [mul_nonneg (sub_nonneg.mpr hpi) (Real.exp_pos (4 * t)).le])
  have hpow : t ^ m ≤ (m.factorial : ℝ) * Real.exp t := by
    have h := Real.pow_div_factorial_le_exp t ht0 m
    have hfac : (0 : ℝ) < m.factorial := by positivity
    nlinarith [(div_le_iff₀ hfac).mp h]
  have hphi : 0 ≤ thetaPhi t := (thetaPhi_positive t ht0).le
  have hC := thetaPhiDecayConstant_positive
  rw [Real.norm_of_nonneg (by positivity)]
  calc
    _ ≤ ((thetaPhiDecayConstant *
        Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t))) *
        ((m.factorial : ℝ) * Real.exp t)) * Real.exp (R * t) := by
      apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
      exact mul_le_mul (thetaPhi_le_superexp ht0) hpow (by positivity) (by positivity)
    _ = (thetaPhiDecayConstant * (m.factorial : ℝ)) *
        Real.exp ((10 + R) * t - (Real.pi / 2) * Real.exp (4 * t)) := by
      rw [show (10 + R) * t - (Real.pi / 2) * Real.exp (4 * t) =
        (9 * t - (Real.pi / 2) * Real.exp (4 * t)) + t + R * t by ring]
      rw [Real.exp_add, Real.exp_add]
      ring
    _ ≤ _ := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply Real.exp_le_exp.mpr
      have hR : R * t ≤ |R| * t := mul_le_mul_of_nonneg_right (le_abs_self R) ht0
      linarith

/-- All literal theta polynomial moments with fixed real exponential weights
are absolutely integrable on the positive half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b99f93f0dde6843cda470e71a2f105bd957701d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
