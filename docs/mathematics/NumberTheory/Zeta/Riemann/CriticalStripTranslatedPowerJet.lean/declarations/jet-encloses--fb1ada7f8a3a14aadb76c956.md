# jet_encloses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aea66198-cbf3-7fd8-3a20-30073f2fd421",
  "kind": "theorem",
  "lexical_name": "jet_encloses",
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
  "slug": "jet-encloses--fb1ada7f8a3a14aadb76c956",
  "source": {
    "blob": "6f0f9d4865816456615a9d30d698f7c6c2c26c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 148,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb1ada7f8a3a14aadb76c9565e1a6916670fd3baffdeac5ecaebeb142ea00209",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aea66198-cbf3-7fd8-3a20-30073f2fd421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jet_encloses (k : Fin 3) {s : ℂ} (hs : ‖s - center‖ ≤ (3 / 4 : ℝ)) :
    ‖(base k : ℂ) ^ (-s) - jet k s‖ ≤ (1 / 2048 : ℝ) := by
  let w : ℂ := -(s - center)
  let E : ℂ := complexExpTaylor 9 (w * (logCenter k : ℂ))
  have harg : ‖w * (logCenter k : ℂ)‖ ≤ (9 / 8 : ℝ) := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
    have hw : ‖w‖ ≤ (3 / 4 : ℝ) := by simpa [w] using hs
    exact (mul_le_mul hw (logCenter_bound k) (abs_nonneg _) (by norm_num)).trans_eq (by norm_num)
  have hC : ‖(base k : ℂ) ^ w‖ ≤ (4 : ℝ) := by
    rw [Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans_le (base_bounds k).1)]
    have hr : w.re ≤ 1 := by
      have h := Complex.re_le_norm w
      have hn : ‖w‖ ≤ (3 / 4 : ℝ) := by simpa [w] using hs
      linarith
    exact (Real.rpow_le_rpow_of_exponent_le (base_bounds k).1 hr).trans
      (by simpa using (base_bounds k).2)
  have hsmall : ‖w‖ * (logRecord k).radius ≤ 1 := by
    have hw : ‖w‖ ≤ (3 / 4 : ℝ) := by simpa [w] using hs
    change ‖w‖ * (1 / 1048576 : ℝ) ≤ 1
    nlinarith
  have he := realLog_powerTaylor_error (zero_lt_one.trans_le (base_bounds k).1)
    (logRecord k) w 9 (9 / 8) 4 hsmall harg (by norm_num) hC
  have hw : ‖w‖ ≤ (3 / 4 : ℝ) := by simpa [w] using hs
  have herror : ‖(base k : ℂ) ^ w - E‖ ≤
      6 / 1048576 + complexExpTaylorRadius 9 (9 / 8) := by
    change ‖(base k : ℂ) ^ w - E‖ ≤ 4 * (2 * (‖w‖ * (1 / 1048576))) +
      complexExpTaylorRadius 9 (9 / 8) at he
    linarith
  have hA : ‖(base k : ℂ) ^ (-center)‖ ≤ 1 :=
    positive_base_neg_power_norm_le_one (base_bounds k).1 (by norm_num [center])
  have hE : ‖E‖ ≤ 4 := taylor_norm_le_four harg
  have hid : (base k : ℂ) ^ (-s) = (base k : ℂ) ^ (-center) * (base k : ℂ) ^ w := by
    rw [← Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr
      (zero_lt_one.trans_le (base_bounds k).1).ne')]
    congr 1
    dsimp [w]
    ring
  have hdecomp : (base k : ℂ) ^ (-s) - sample k * E =
      (base k : ℂ) ^ (-center) * ((base k : ℂ) ^ w - E) +
        ((base k : ℂ) ^ (-center) - sample k) * E := by rw [hid]; ring
  have h1 : ‖(base k : ℂ) ^ (-s) - sample k * E‖ ≤
      6 / 1048576 + complexExpTaylorRadius 9 (9 / 8) + 4 / 16384 := by
    rw [hdecomp]
    apply (norm_add_le _ _).trans
    simp only [norm_mul]
    have hm1 := mul_le_mul hA herror (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
    have hm2 := mul_le_mul (sample_encloses k) hE (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 16384)
    linarith
  have hr := rounded_jet_error k hs
  change ‖sample k * E - jet k s‖ ≤ _ at hr
  have ht := (norm_sub_triangle ((base k : ℂ) ^ (-s)) (sample k * E) (jet k s)).trans (add_le_add h1 hr)
  exact ht.trans (by norm_num [complexExpTaylorRadius])

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FourteenJet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f0f9d4865816456615a9d30d698f7c6c2c26c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
