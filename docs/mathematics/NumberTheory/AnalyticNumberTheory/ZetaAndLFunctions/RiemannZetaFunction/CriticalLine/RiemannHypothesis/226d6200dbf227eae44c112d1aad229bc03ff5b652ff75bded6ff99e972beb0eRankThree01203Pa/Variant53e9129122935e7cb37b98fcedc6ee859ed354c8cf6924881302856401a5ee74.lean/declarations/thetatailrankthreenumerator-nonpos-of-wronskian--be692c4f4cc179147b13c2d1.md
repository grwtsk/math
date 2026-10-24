# thetaTailRankThreeNumerator_nonpos_of_wronskian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eaa64caf-ed06-e9c2-48c8-570be0eadd24",
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
  "slug": "thetatailrankthreenumerator-nonpos-of-wronskian--be692c4f4cc179147b13c2d1",
  "source": {
    "blob": "de6f846da682600aefc5b1f98d99912a8a5f5a4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be692c4f4cc179147b13c2d1686e5d80ce956d75c33de3290e8845bc2731a5f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaa64caf-ed06-e9c2-48c8-570be0eadd24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–241.

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
    simpa [Nat.factorial] using thetaTailGap_source_integrand_integrable 2 ht
  have hwC : IntegrableOn (fun u => w u * C u) (Ici t) := by
    rw [heqC]
    simpa [Nat.factorial] using thetaTailGap_source_deriv_integrand_integrable 2 ht
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
    simpa [Nat.factorial] using (thetaTailGap_zero_succ_succ_integral 2 ht).symm
  have hIwC : (∫ u in Ici t, w u * C u) = deriv (thetaTailGap 0 4) t := by
    rw [heqC]
    simpa [Nat.factorial] using (thetaTailGap_zero_succ_succ_deriv_integral 2 ht).symm
  rw [hIA, hIC, hIwA, hIwC,
    (hasDerivAt_thetaTailGap_zero_succ_succ 2 ht).deriv,
    (hasDerivAt_thetaTailGap_zero_succ_succ 0 ht).deriv] at h
  simpa [thetaTailRankThreeNumerator, thetaTail_zero, pow_two] using h

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6f846da682600aefc5b1f98d99912a8a5f5a4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
