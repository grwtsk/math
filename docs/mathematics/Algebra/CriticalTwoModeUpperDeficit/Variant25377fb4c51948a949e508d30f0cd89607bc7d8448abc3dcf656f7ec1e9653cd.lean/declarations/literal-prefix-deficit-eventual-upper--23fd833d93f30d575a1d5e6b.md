# literal_prefix_deficit_eventual_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1febedf9-a5d6-368a-2509-cec76f72d34f",
  "kind": "theorem",
  "lexical_name": "literal_prefix_deficit_eventual_upper",
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
  "slug": "literal-prefix-deficit-eventual-upper--23fd833d93f30d575a1d5e6b",
  "source": {
    "blob": "0b5eeb74c37bc728dd220d4b1ab2959504f9e5fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 20,
    "path": "GRWTSK/Algebra/CriticalTwoModeUpperDeficit/Variant25377fb4c51948a949e508d30f0cd89607bc7d8448abc3dcf656f7ec1e9653cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23fd833d93f30d575a1d5e6be45487ac449cce41e62899f8f70c4efd6a3ff2d4",
  "verification": {
    "reference": "docs/verification/Algebra/CriticalTwoModeUpperDeficit/Variant25377fb4c51948a949e508d30f0cd89607bc7d8448abc3dcf656f7ec1e9653cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1febedf9-a5d6-368a-2509-cec76f72d34f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_prefix_deficit_eventual_upper {α t₀ : ℝ}
    (hα : BadlyApproximable α) :
    ∃ C R : ℝ, 0 < C ∧ 0 < R ∧ ∀ T : ℝ, R ≤ T →
      2-prefixMaximum α t₀ T ≤ C/T^2 := by
  obtain ⟨c,hc,hbad⟩ := hα
  let p : ℝ := 2*Real.pi
  have hp : 0 < p := by dsimp [p]; positivity
  let R := max t₀ (max p (t₀/c))
  refine ⟨p^4/2,R,by positivity,?_,?_⟩
  · exact hp.trans_le ((le_max_left _ _).trans (le_max_right _ _))
  intro T hT
  have hTt : t₀ ≤ T := (le_max_left _ _).trans hT
  have hTp : p ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
  have hTc : t₀/c ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
  have hTpos : 0 < T := hp.trans_le hTp
  let N := Nat.floor (T/p)
  have hNp : 0 < N := by
    have hN1 : 1 ≤ N := Nat.le_floor (by simpa using (one_le_div hp).2 hTp)
    omega
  have hNle : (N : ℝ) ≤ T/p := Nat.floor_le (div_nonneg hTpos.le hp.le)
  have hNlt : T/p < (N : ℝ)+1 := Nat.lt_floor_add_one _
  obtain ⟨j,hj,hjN,herr⟩ := Real.exists_nat_abs_mul_sub_round_le α hNp
  have hjR : (0 : ℝ) < (j : ℝ) := by exact_mod_cast hj
  have hjZ : (j : ℤ) ≠ 0 := by exact_mod_cast hj.ne'
  have hb := hbad (j : ℤ) hjZ (round ((j : ℝ)*α))
  simp only [Int.cast_natCast,abs_of_pos hjR] at hb
  rw [mul_comm α] at hb
  have hpaid : c*((N : ℝ)+1) ≤ (j : ℝ) := by
    simpa only [one_mul] using
      (div_le_div_iff₀ hjR (by positivity : (0 : ℝ) < (N : ℝ)+1)).mp (hb.trans herr)
  have hTperiod : T < p*((N : ℝ)+1) := by
    simpa only [mul_comm] using (div_lt_iff₀ hp).mp hNlt
  have hlate : t₀ ≤ p*(j : ℝ) := by
    have hct := (div_le_iff₀ hc).mp hTc
    have h1 := mul_lt_mul_of_pos_left hTperiod hc
    have h2 := mul_le_mul_of_nonneg_left hpaid hp.le
    nlinarith
  have hinside : p*(j : ℝ) ≤ T := by
    have hjNR : (j : ℝ) ≤ (N : ℝ) := by exact_mod_cast hjN
    exact (mul_le_mul_of_nonneg_left hjNR hp.le).trans
      (by simpa only [mul_comm] using (le_div_iff₀ hp).mp hNle)
  let r : ℝ := p*((j : ℝ)*α-(round ((j : ℝ)*α) : ℝ))
  have hcos : Real.cos r = Real.cos (α*(p*(j : ℝ))) := by
    have heq : r = α*(p*(j : ℝ))-(round ((j : ℝ)*α) : ℝ)*(2*Real.pi) := by
      dsimp [r,p]
      ring
    rw [heq,Real.cos_sub_int_mul_two_pi]
  have hvalue : twoMode α (p*(j : ℝ)) = 1+Real.cos r := by
    have h := literal_two_mode_integer_period_value α (j : ℤ)
    simp only [Int.cast_natCast] at h
    calc
      _ = twoMode α ((j : ℝ)*p) := by rw [mul_comm p]
      _ = 1+Real.cos (α*((j : ℝ)*p)) := h
      _ = _ := by rw [mul_comm (j : ℝ) p,← hcos]
  have he2 := pow_le_pow_left₀ (abs_nonneg _) herr 2
  rw [sq_abs,div_pow,one_pow] at he2
  have hr2 : r^2 ≤ p^2/((N : ℝ)+1)^2 := by
    simpa only [r,mul_pow,mul_one_div] using mul_le_mul_of_nonneg_left he2 (sq_nonneg p)
  have hscale : T^2 ≤ p^2*((N : ℝ)+1)^2 := by
    simpa only [mul_pow] using pow_le_pow_left₀ hTpos.le hTperiod.le 2
  have hcost : p^2/(2*((N : ℝ)+1)^2) ≤ p^4/(2*T^2) := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
    calc
      p^2*(2*T^2) = 2*(p^2*T^2) := by ring
      _ ≤ 2*(p^2*(p^2*((N : ℝ)+1)^2)) := by
        exact mul_le_mul_of_nonneg_left
          (mul_le_mul_of_nonneg_left hscale (sq_nonneg p)) (by norm_num)
      _ = p^4*(2*((N : ℝ)+1)^2) := by ring
  have hcoslow := Real.one_sub_sq_div_two_le_cos (x := r)
  have hprefix := literal_prefix_value_le α hTt ⟨hlate,hinside⟩
  rw [hvalue] at hprefix
  have hmid : 2-prefixMaximum α t₀ T ≤ p^2/(2*((N : ℝ)+1)^2) := by
    have h := div_le_div_of_nonneg_right hr2 (by norm_num : (0 : ℝ) ≤ 2)
    rw [div_div] at h
    rw [mul_comm (((N : ℝ)+1)^2) (2 : ℝ)] at h
    linarith
  have heq : p^4/(2*T^2) = (p^4/2)/T^2 := by ring
  exact hmid.trans (by rwa [heq] at hcost)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CriticalTwoModeUpperDeficit/Variant25377fb4c51948a949e508d30f0cd89607bc7d8448abc3dcf656f7ec1e9653cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CriticalTwoModeUpperDeficit/Variant25377fb4c51948a949e508d30f0cd89607bc7d8448abc3dcf656f7ec1e9653cd.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b5eeb74c37bc728dd220d4b1ab2959504f9e5fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
