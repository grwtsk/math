# literal_two_mode_near_two_after_every_threshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:045e852d-f064-8656-94fc-956b1b54e4f7",
  "kind": "theorem",
  "lexical_name": "literal_two_mode_near_two_after_every_threshold",
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
  "slug": "literal-two-mode-near-two-after-every-threshold--4ee98768f75820b18a050581",
  "source": {
    "blob": "335bc0be5347a89faf3eb694ee305b44ee8ead47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 20,
    "path": "GRWTSK/NumberTheory/CriticalTwoModeSupremum/Variant3931bd1b0ba8032d0de8d4dbab15193a452b0a1a46fb004359037fcb6ce7b145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ee98768f75820b18a050581df6010cf1a7c9a81d3226a85fb8a175de76507a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/CriticalTwoModeSupremum/Variant3931bd1b0ba8032d0de8d4dbab15193a452b0a1a46fb004359037fcb6ce7b145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:045e852d-f064-8656-94fc-956b1b54e4f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_two_mode_near_two_after_every_threshold {α : ℝ}
    (hα : BadlyApproximable α) (ε R : ℝ) (hε : 0 < ε) :
    ∃ t : ℝ, R < t ∧ 0 < t ∧ 2-ε < twoMode α t := by
  obtain ⟨c,hc,hbad⟩ := hα
  let p : ℝ := 2*Real.pi
  have hp : 0 < p := by dsimp [p]; positivity
  obtain ⟨N,hN⟩ := exists_nat_gt (max 1 (max (R/(p*c)) (p^2/ε)))
  have hN1 : (1 : ℝ) < (N : ℝ) := (le_max_left _ _).trans_lt hN
  have hNR : R/(p*c) < (N : ℝ) :=
    (le_max_left _ _).trans_lt ((le_max_right _ _).trans_lt hN)
  have hNE : p^2/ε < (N : ℝ) :=
    (le_max_right _ _).trans_lt ((le_max_right _ _).trans_lt hN)
  have hNpos : 0 < N := by exact_mod_cast (by linarith : (0 : ℝ) < (N : ℝ))
  obtain ⟨j,hj,_hjN,herr⟩ := Real.exists_nat_abs_mul_sub_round_le α hNpos
  have hjR : (0 : ℝ) < (j : ℝ) := by exact_mod_cast hj
  have hjZ : (j : ℤ) ≠ 0 := by exact_mod_cast hj.ne'
  have hb := hbad (j : ℤ) hjZ (round ((j : ℝ)*α))
  simp only [Int.cast_natCast,abs_of_pos hjR] at hb
  have he : |α*(j : ℝ)-(round ((j : ℝ)*α) : ℝ)| =
      |(j : ℝ)*α-(round ((j : ℝ)*α) : ℝ)| := by rw [mul_comm α]
  rw [he] at hb
  have hpaid : c*((N : ℝ)+1) ≤ (j : ℝ) := by
    have h := hb.trans herr
    simpa only [one_mul] using
      (div_le_div_iff₀ hjR (by linarith : (0 : ℝ) < (N : ℝ)+1)).mp h
  have hRpaid := (div_lt_iff₀ (mul_pos hp hc)).mp hNR
  have hlate : R < p*(j : ℝ) := by nlinarith
  have hNEpaid := (div_lt_iff₀ hε).mp hNE
  have hdom : (N : ℝ) ≤ ((N : ℝ)+1)^2 := by nlinarith
  have hcost : p^2/((N : ℝ)+1)^2 < ε := by
    apply (div_lt_iff₀ (sq_pos_of_pos (by linarith : (0 : ℝ) < (N : ℝ)+1))).mpr
    have h := mul_le_mul_of_nonneg_left hdom hε.le
    nlinarith
  have he2 := pow_le_pow_left₀ (abs_nonneg _) herr 2
  rw [sq_abs,div_pow,one_pow] at he2
  have hscaled := mul_le_mul_of_nonneg_left he2 (sq_nonneg p)
  let r : ℝ := p*((j : ℝ)*α-(round ((j : ℝ)*α) : ℝ))
  have hr2 : r^2 < ε := by
    dsimp [r]
    rw [mul_pow]
    exact hscaled.trans_lt (by simpa only [mul_one_div] using hcost)
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
  have hcoslow := Real.one_sub_sq_div_two_le_cos (x := r)
  refine ⟨p*(j : ℝ),hlate,mul_pos hp hjR,?_⟩
  rw [hvalue]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CriticalTwoModeSupremum/Variant3931bd1b0ba8032d0de8d4dbab15193a452b0a1a46fb004359037fcb6ce7b145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CriticalTwoModeSupremum/Variant3931bd1b0ba8032d0de8d4dbab15193a452b0a1a46fb004359037fcb6ce7b145.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335bc0be5347a89faf3eb694ee305b44ee8ead47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
