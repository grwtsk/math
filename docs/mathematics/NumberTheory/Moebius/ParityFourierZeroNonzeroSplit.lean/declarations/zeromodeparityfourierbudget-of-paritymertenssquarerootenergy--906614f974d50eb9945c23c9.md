# zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e0331d2-1f15-5ab2-4313-d3fe0b259cd5",
  "kind": "theorem",
  "lexical_name": "zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy",
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
  "slug": "zeromodeparityfourierbudget-of-paritymertenssquarerootenergy--906614f974d50eb9945c23c9",
  "source": {
    "blob": "94e323e1acfbe7953960e1f507636a8d486aa8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 309,
    "path": "GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:906614f974d50eb9945c23c90ceb6588daea19c501642cafd7f0dff20c5d4525",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e0331d2-1f15-5ab2-4313-d3fe0b259cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy
    (hM : DyadicParityMertensSquareRootEnergy) :
    DyadicNaturalScaleZeroModeParityFourierBudget := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hM δ hδ
  refine ⟨2 * (C + 2), by positivity, ?_⟩
  intro j b hb
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 1 ≤ X := by
    dsimp [X]
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (pow_ne_zero _ two_ne_zero))
  have hXδ : 1 ≤ X ^ δ := by
    exact Real.one_le_rpow hX hδ.le
  have hbtop : (b : ℝ) ≤ 2 * X := by
    have hI := Finset.mem_Ico.mp hb
    dsimp [X]
    rw [pow_succ] at hI
    have h := Nat.le_of_lt hI.2
    exact_mod_cast (by simpa [mul_comm] using h : b ≤ 2 * 2 ^ j)
  have hquad :
      parityFourierZeroModeQuadraticMajorant b ≤
        (C + 2) * X * (X ^ δ) := by
    unfold parityFourierZeroModeQuadraticMajorant
    have hm0 := hscale j b 0 hb (by norm_num)
    have hm1 := hscale j b 1 hb (by norm_num)
    have hq0 := paritySquarefreeDiagonal_le_endpoint b 0
    have hq1 := paritySquarefreeDiagonal_le_endpoint b 1
    have hq0n := paritySquarefreeDiagonal_nonneg b 0
    have hq1n := paritySquarefreeDiagonal_nonneg b 1
    have hz0 :
        ‖((parityMertensPrefix b 0 : ℂ) ^ 2 -
            (paritySquarefreeDiagonal b 0 : ℂ))‖ ≤
          C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
      rw [← Complex.ofReal_pow, ← Complex.ofReal_sub, Complex.norm_real]
      apply abs_le.2
      constructor <;> nlinarith
    have hz1 :
        ‖((parityMertensPrefix b 1 : ℂ) ^ 2 -
            (paritySquarefreeDiagonal b 1 : ℂ))‖ ≤
          C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
      rw [← Complex.ofReal_pow, ← Complex.ofReal_sub, Complex.norm_real]
      apply abs_le.2
      constructor <;> nlinarith
    nlinarith
  unfold parityFourierZeroModeEndpointMajorant
  calc
    (∑ d ∈ effectiveEndpointSquareModulusSet b,
      if hd : 0 < d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          parityFourierZeroModeQuadraticMajorant b
      else 0) ≤
      effectiveSquareModulusReciprocalMass b *
        ((C + 2) * X * (X ^ δ)) := by
          unfold effectiveSquareModulusReciprocalMass
          rw [Finset.sum_mul]
          apply Finset.sum_le_sum
          intro d hd
          have hdpos :
              0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
          simp only [dif_pos hdpos]
          exact mul_le_mul_of_nonneg_left hquad (by positivity)
    _ ≤ 2 * ((C + 2) * X * (X ^ δ)) := by
          exact mul_le_mul_of_nonneg_right
            (effectiveSquareModulusReciprocalMass_le_two b)
            (by positivity)
    _ = (2 * (C + 2)) * X * (X ^ δ) := by ring
    _ = (2 * (C + 2)) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by rfl

/-- Zero and nonzero natural-scale suppliers together recover the complete
parity/Fourier quadratic budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94e323e1acfbe7953960e1f507636a8d486aa8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
