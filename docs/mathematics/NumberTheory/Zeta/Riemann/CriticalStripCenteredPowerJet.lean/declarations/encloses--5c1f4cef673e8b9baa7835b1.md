# encloses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e1e4d3e-845c-b526-a71a-1f645aacefed",
  "kind": "theorem",
  "lexical_name": "encloses",
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
  "slug": "encloses--5c1f4cef673e8b9baa7835b1",
  "source": {
    "blob": "e49e42771f17bc7f0ef4fc50564887eb6337408a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCenteredPowerJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c1f4cef673e8b9baa7835b1dbe8fde307c0e4301d04da7af34928c732347c48",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCenteredPowerJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e1e4d3e-845c-b526-a71a-1f645aacefed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encloses {k a δ ε ρ : ℝ} {c q s : ℂ} {n : ℕ}
    (hk : 1 ≤ k) (hk8 : k ≤ 8) (hc : 0 ≤ c.re)
    (hδ : 0 ≤ δ) (hlog : |Real.log k-a| ≤ δ)
    (hε : 0 ≤ ε) (hq : ‖(k : ℂ)^(-c)-q‖ ≤ ε)
    (hdisp : ‖s-c‖ ≤ ρ) (hleft : -(s-c).re ≤ 1)
    (hsmall : ρ*δ ≤ 1)
    (hguard : (ρ*|a|)/((n : ℝ)+1) ≤ 1/2)
    (hverror : 16*ρ*δ+complexExpTaylorRadius n (ρ*|a|) ≤ 1) :
    ‖(k : ℂ)^(-s)-value c q a n s‖ ≤
      16*ρ*δ+complexExpTaylorRadius n (ρ*|a|)+9*ε := by
  let e : RealLogEnclosure k := ⟨a,δ,hδ,hlog⟩
  have hkn := displaced_power_bound hk hk8 hleft
  have ha : ‖(-(s-c))*(a : ℂ)‖ ≤ ρ*|a| := by
    rw [norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul_of_nonneg_right hdisp (abs_nonneg _)
  have ht := realLog_powerTaylor_error (zero_lt_one.trans_le hk) e (-(s-c)) n
    (ρ*|a|) 8
    (by simpa only [e, norm_neg] using (mul_le_mul_of_nonneg_right hdisp hδ).trans hsmall)
    ha hguard hkn
  have ht' : ‖(k : ℂ)^(-(s-c))-complexExpTaylor n (-(s-c)*(a : ℂ))‖ ≤
      16*ρ*δ+complexExpTaylorRadius n (ρ*|a|) := by
    apply ht.trans
    dsimp only [e]
    rw [norm_neg]
    have h := mul_le_mul_of_nonneg_right hdisp hδ
    nlinarith
  have hpoly : ‖complexExpTaylor n (-(s-c)*(a : ℂ))‖ ≤ (9 : ℝ) := by
    have htri := norm_sub_le ((k : ℂ)^(-(s-c)))
      ((k : ℂ)^(-(s-c))-complexExpTaylor n (-(s-c)*(a : ℂ)))
    rw [sub_sub_cancel] at htri
    linarith
  have hcn := positive_base_neg_power_norm_le_one hk hc
  have hid : (k : ℂ)^(-s) = (k : ℂ)^(-c)*(k : ℂ)^(-(s-c)) := by
    rw [←Complex.cpow_add _ _ (Complex.ofReal_ne_zero.mpr (zero_lt_one.trans_le hk).ne')]
    congr 1
    ring
  have heq : (k : ℂ)^(-s)-value c q a n s =
      (k : ℂ)^(-c)*((k : ℂ)^(-(s-c))-complexExpTaylor n (-(s-c)*(a : ℂ))) +
      ((k : ℂ)^(-c)-q)*complexExpTaylor n (-(s-c)*(a : ℂ)) := by
    rw [hid]
    unfold value
    ring
  rw [heq]
  apply (norm_add_le _ _).trans
  rw [norm_mul, norm_mul]
  have h1 := mul_le_mul hcn ht' (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  have h2 := mul_le_mul hq hpoly (norm_nonneg _) hε
  nlinarith

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredPowerJet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCenteredPowerJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCenteredPowerJet.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49e42771f17bc7f0ef4fc50564887eb6337408a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
