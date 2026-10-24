# jensenSection_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00068f2c-c82e-4d61-2193-bbffc567234e",
  "kind": "theorem",
  "lexical_name": "jensenSection_error_le",
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
  "slug": "jensensection-error-le--d607a04382409ef3920668bb",
  "source": {
    "blob": "74887238ae4b4f342c7c8994aaccea6667f19843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 120,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d607a04382409ef3920668bb9dbb351480b41b7a2dc472ffc88856d499a30934",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00068f2c-c82e-4d61-2193-bbffc567234e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensenSection_error_le {n : ℕ} (hn : 1 ≤ n) (R : ℝ) (hR : 0 ≤ R)
    (z : ℂ) (hz : ‖z‖ ≤ R) :
    ‖jensenSection n z - spectralXi z‖ ≤
      (∑' k : ℕ, (2 * (k : ℝ)) * (2 * k - 1) * coefficient k * R ^ (2 * k)) /
        (4 * (n : ℝ)) := by
  let b := fun k : ℕ =>
    (2 * (k : ℝ)) * (2 * k - 1) * coefficient k * R ^ (2 * k) / (4 * (n : ℝ))
  have hb : Summable b := (summable_error_majorant R hR).div_const _
  have hterm (k : ℕ) :
      ‖((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k -
        (coefficient k : ℂ) * (-z ^ 2) ^ k‖ ≤ b k := by
    rw [error_term_norm]
    have ha := (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula k).le
    calc
      _ ≤ (1 - weight n k) * coefficient k * R ^ (2 * k) :=
        mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (norm_nonneg z) hz _)
          (mul_nonneg (sub_nonneg.mpr (weight_le_one n k)) ha)
      _ ≤ _ := by
        have h := mul_le_mul_of_nonneg_right (one_sub_weight_le hn k)
          (mul_nonneg ha (pow_nonneg hR (2 * k)))
        simpa only [b, div_mul_eq_mul_div, mul_assoc] using h
  have hs : Summable (fun k => ‖((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k -
      (coefficient k : ℂ) * (-z ^ 2) ^ k‖) :=
    hb.of_nonneg_of_le (fun _ => norm_nonneg _) hterm
  rw [jensenSection_eq_tsum, ← centeredSeries_spectral]
  change ‖(∑' k, ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k) -
    (∑' k, (coefficient k : ℂ) * (-z ^ 2) ^ k)‖ ≤ _
  rw [← (summable_jensen_terms n z).tsum_sub (summable_centered (-z ^ 2))]
  exact (norm_tsum_le_tsum_norm hs).trans
    ((hs.tsum_le_tsum hterm hb).trans_eq (by dsimp [b]; rw [tsum_div_const]))

/-- The quantitative bound yields uniform convergence on every closed complex disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Varianta020e005484a94e665b23f48f3e0209743686515509835790d0e462231678219.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74887238ae4b4f342c7c8994aaccea6667f19843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
