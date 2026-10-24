# feedback_factorial_recurrence_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:613081d0-91a9-a94e-bb28-7425d891391d",
  "kind": "theorem",
  "lexical_name": "feedback_factorial_recurrence_bound",
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
  "slug": "feedback-factorial-recurrence-bound--4a424a3ce601e30e712d441a",
  "source": {
    "blob": "d078417c858db8e26bfd9614a3c83b4acba871f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 72,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a424a3ce601e30e712d441a66a11addf66be507e1897885814933386d750fcf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:613081d0-91a9-a94e-bb28-7425d891391d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem feedback_factorial_recurrence_bound {b : ℕ → ℝ} {a B ρ R L : ℝ}
    (_hb : ∀ k, 0 ≤ b k) (ha : 0 ≤ a) (hB : 0 ≤ B)
    (hρ : 0 < ρ) (hR : 0 < R)
    (hLR : 4 / R ≤ L) (hLB : 2 * (B + 1) / ρ ≤ L)
    (hb0 : b 0 ≤ a)
    (hrec : ∀ k : ℕ, 0 < k →
      b k ≤ a * (2 / R) ^ k + B * ∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * b (k - j)) :
    ∀ k : ℕ, b k ≤ 2 * a * L ^ k := by
  have hL : 0 < L := lt_of_lt_of_le (div_pos (by norm_num) hR) hLR
  obtain ⟨hprod, hratio⟩ := feedback_transport_ratio_le_half hB hρ hLB
  have htwo : 2 / R ≤ L := by
    have H : (2 : ℝ) / R ≤ 4 / R := by gcongr; norm_num
    exact H.trans hLR
  intro k
  induction k using Nat.strong_induction_on with
  | h k ih =>
    by_cases hk : k = 0
    · subst k
      simp only [pow_zero, mul_one]
      linarith
    · have hkpos : 0 < k := Nat.pos_of_ne_zero hk
      have Hsum : (∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * b (k - j)) ≤
          2 * a * ∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * L ^ (k - j) := by
        calc
          _ ≤ ∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * (2 * a * L ^ (k - j)) := by
            apply Finset.sum_le_sum
            intro j hj
            have hjpos : 0 < j := by
              have H := (Finset.mem_Icc.mp hj).1
              omega
            exact mul_le_mul_of_nonneg_left (ih (k - j) (Nat.sub_lt hkpos hjpos))
              (pow_nonneg (inv_nonneg.mpr hρ.le) j)
          _ = _ := by
            rw [Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro j _
            ring
      have Herr : B * (∑ j ∈ Icc 1 k, (ρ⁻¹) ^ j * b (k - j)) ≤ a * L ^ k := by
        calc
          _ ≤ B * (2 * a * (L ^ k / (ρ * L - 1))) := by
            apply mul_le_mul_of_nonneg_left _ hB
            exact Hsum.trans (mul_le_mul_of_nonneg_left
              (feedback_inverse_shift_sum_le hρ hL hprod k) (by positivity))
          _ = (a * L ^ k) * (2 * B / (ρ * L - 1)) := by ring
          _ ≤ (a * L ^ k) * 1 :=
            mul_le_mul_of_nonneg_left hratio (mul_nonneg ha (pow_nonneg hL.le k))
          _ = a * L ^ k := mul_one _
      have Hforce : a * (2 / R) ^ k ≤ a * L ^ k :=
        mul_le_mul_of_nonneg_left
          (pow_le_pow_left₀ (div_nonneg (by norm_num) hR.le) htwo k) ha
      calc
        b k ≤ _ := hrec k hkpos
        _ ≤ a * L ^ k + a * L ^ k := add_le_add Hforce Herr
        _ = 2 * a * L ^ k := by ring

/-- The prescribed maximum in MB16 satisfies both explicit paid costs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d078417c858db8e26bfd9614a3c83b4acba871f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
