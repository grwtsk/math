# thetaTailRankThreeNumerator_nonpos_of_wronskian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01f86d12a5c37ac26c725caefd047a11b87222c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee47b080-cdcd-153b-4eb4-e8c1f836500b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:939d97ed-e976-5f14-88aa-ec9ae3b14f9f",
  "kind": "theorem",
  "lexical_name": "thetaTailRankThreeNumerator_nonpos_of_wronskian",
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
  "slug": "thetatailrankthreenumerator-nonpos-of-wronskian--2432181ed005dbc8986679ad",
  "source": {
    "blob": "01f86d12a5c37ac26c725caefd047a11b87222c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2432181ed005dbc8986679ad8f6ea4be8fee7ab7d99513c9c5b1cbd9f600908f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:939d97ed-e976-5f14-88aa-ec9ae3b14f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailRankThreeNumerator_nonpos_of_wronskian
    (hw : ∀ t : ℝ, 0 ≤ t → Matrix.det
      !![thetaPhi t, deriv thetaPhi t, deriv (deriv thetaPhi) t;
        deriv thetaPhi t, deriv (deriv thetaPhi) t, thetaPhiRawD3 t;
        deriv (deriv thetaPhi) t, thetaPhiRawD3 t, thetaPhiRawD4 t] ≤ 0)
    {t : ℝ} (ht : 0 ≤ t) : thetaTailRankThreeNumerator t ≤ 0 := by
  let A := fun u => (u - t) * (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u)
  let C := fun u => (u - t) *
    (deriv (deriv thetaPhi) t * thetaPhi u - thetaPhi t * deriv (deriv thetaPhi) u)
  let w := fun u => (u - t) ^ 2 / 6
  have hA : IntegrableOn A (Ici t) := by
    simpa [A] using thetaTailGap_source_integrand_integrable 0 ht
  have hC : IntegrableOn C (Ici t) := by
    simpa [C] using thetaTailGap_source_deriv_integrand_integrable 0 ht
  have heqA : (fun u => w u * A u) = fun u => (u - t) ^ 3 / 6 *
      (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u) := by
    funext u; dsimp [w, A]; ring
  have heqC : (fun u => w u * C u) = fun u => (u - t) ^ 3 / 6 *
      (deriv (deriv thetaPhi) t * thetaPhi u - thetaPhi t * deriv (deriv thetaPhi) u) := by
    funext u; dsimp [w, C]; ring
  have hwA : IntegrableOn (fun u => w u * A u) (Ici t) := by
    rw [heqA]
    simpa using thetaTailGap_source_integrand_integrable 2 ht
  have hwC : IntegrableOn (fun u => w u * C u) (Ici t) := by
    rw [heqC]
    simpa using thetaTailGap_source_deriv_integrand_integrable 2 ht
  have hpair (u v : ℝ) (hu : t ≤ u) (huv : u ≤ v) : C v * A u - C u * A v ≤ 0 := by
    rcases hu.eq_or_lt with rfl | htu
    · simp [A, C]
    rcases huv.eq_or_lt with rfl | huv
    · simp
    have hp := residual_cross_nonpos_of_source_jet_det thetaPhi (deriv thetaPhi)
      (deriv (deriv thetaPhi)) t u v (thetaPhi_positive t ht).le
      (thetaPhi_jet_det_nonpos_of_wronskian hw ht htu huv)
    calc
      C v * A u - C u * A v = (v - t) * (u - t) *
          ((deriv (deriv thetaPhi) t * thetaPhi v - thetaPhi t * deriv (deriv thetaPhi) v) *
            (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u) -
          (deriv (deriv thetaPhi) t * thetaPhi u - thetaPhi t * deriv (deriv thetaPhi) u) *
            (deriv thetaPhi t * thetaPhi v - thetaPhi t * deriv thetaPhi v)) := by
        dsimp [A, C]; ring
      _ ≤ 0 := mul_nonpos_of_nonneg_of_nonpos
        (mul_nonneg (sub_nonneg.mpr (htu.le.trans huv.le)) (sub_nonneg.mpr htu.le)) hp
  have hwmono (u v : ℝ) (hu : t ≤ u) (huv : u ≤ v) : w u ≤ w v := by
    dsimp [w]
    exact div_le_div_of_nonneg_right
      (pow_le_pow_left₀ (sub_nonneg.mpr hu) (sub_le_sub_right huv t) 2) (by norm_num)
  have hcross : ∀ᵐ v ∂(volume.restrict (Ici t)), ∀ᵐ u ∂(volume.restrict (Ici t)),
      (w u - w v) * (C u * A v - A u * C v) ≤ 0 := by
    filter_upwards [ae_restrict_mem measurableSet_Ici] with v hv
    filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    rcases le_total u v with huv | hvu
    · exact mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr (hwmono u v hu huv))
        (by nlinarith only [hpair u v hu huv])
    · exact mul_nonpos_of_nonneg_of_nonpos (sub_nonneg.mpr (hwmono v u hv hvu))
        (by nlinarith only [hpair v u hv hvu])
  have h := integral_moment_cross_nonpos (volume.restrict (Ici t)) A C w hA hC hwA hwC hcross
  have hIA : (∫ u in Ici t, A u) = thetaTailGap 0 2 t := by
    simpa [A] using (thetaTailGap_zero_succ_succ_integral 0 ht).symm
  have hIC : (∫ u in Ici t, C u) = deriv (thetaTailGap 0 2) t := by
    simpa [C] using (thetaTailGap_zero_succ_succ_deriv_integral 0 ht).symm
  have hIwA : (∫ u in Ici t, w u * A u) = thetaTailGap 0 4 t := by
    rw [heqA]
    simpa using (thetaTailGap_zero_succ_succ_integral 2 ht).symm
  have hIwC : (∫ u in Ici t, w u * C u) = deriv (thetaTailGap 0 4) t := by
    rw [heqC]
    simpa using (thetaTailGap_zero_succ_succ_deriv_integral 2 ht).symm
  rw [hIA, hIC, hIwA, hIwC,
    (hasDerivAt_thetaTailGap_zero_succ_succ 2 ht).deriv,
    (hasDerivAt_thetaTailGap_zero_succ_succ 0 ht).deriv] at h
  simpa [thetaTailRankThreeNumerator, thetaTail_zero, pow_two] using h

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01f86d12a5c37ac26c725caefd047a11b87222c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
