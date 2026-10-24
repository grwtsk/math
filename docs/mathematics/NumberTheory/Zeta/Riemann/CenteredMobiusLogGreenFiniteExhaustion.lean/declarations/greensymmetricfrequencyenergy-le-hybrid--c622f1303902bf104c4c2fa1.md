# greenSymmetricFrequencyEnergy_le_hybrid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fa2ec57-7987-536a-27b9-72a06a5af51c",
  "kind": "theorem",
  "lexical_name": "greenSymmetricFrequencyEnergy_le_hybrid",
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
  "slug": "greensymmetricfrequencyenergy-le-hybrid--c622f1303902bf104c4c2fa1",
  "source": {
    "blob": "30eb0ca9235540f1b7b9b7b95832d53d755d41a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 26,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteExhaustion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c622f1303902bf104c4c2fa10dc029ca2da2340f4b0e1e530d0c0a1be4776582",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteExhaustion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa2ec57-7987-536a-27b9-72a06a5af51c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenSymmetricFrequencyEnergy_le_hybrid
    {X M : ℕ} (hX : 2 ≤ X) :
    greenSymmetricFrequencyEnergy X M ≤
      greenFiniteHybridResidualEnergy X
        (greenFrequencyQuotientCutoff X M) := by
  unfold greenSymmetricFrequencyEnergy
  let Q := greenFrequencyQuotientCutoff X M
  -- Map each frequency to a term in one of the three nonnegative hybrid sums.
  apply Finset.sum_le_sum_of_injOn
    (f := fun k : ℤ =>
      if greenFrequencyClass X k = .lowPrincipal then
        (0 : ℕ) × Int.natAbs k × (0 : ℕ)
      else if greenFrequencyClass X k = .exactAlias then
        (1 : ℕ) × Int.natAbs (greenCanonicalQuotient X k) × (0 : ℕ)
      else
        (2 : ℕ) × Int.natAbs (greenCanonicalQuotient X k) ×
          Int.natAbs (greenCanonicalResidue X k))
  · intro k hk
    have hk0 : k ≠ 0 := Finset.ne_of_mem_erase hk
    have hclass :
        greenFrequencyClass X k = .lowPrincipal ∨
        greenFrequencyClass X k = .exactAlias ∨
        greenFrequencyClass X k = .highNonalias := by
      cases h : greenFrequencyClass X k <;> simp [h]
    rcases hclass with hlow | halias | hhigh
    · have hl := (greenFrequencyClass_low_iff (by omega) k).mp hlow
      have hkres := canonical_low_eq_residue (by omega) hl.2
      have hrange := greenCanonicalResidue_range (by omega) k
      unfold GreenCanonicalResidueCondition greenCenteredResidueLower
        greenCenteredResidueUpper at hrange
      have hmem : k ∈ greenLowPrincipalHead X := by
        unfold greenLowPrincipalHead
        apply Finset.mem_erase.mpr
        refine ⟨hk0, Finset.mem_Icc.mpr ?_⟩
        omega
      exact ⟨hmem, le_rfl⟩
    · have ha := (greenFrequencyClass_alias_iff (by omega) k).mp halias
      have hdiv := (canonicalResidue_zero_iff_alias (by omega) k).mp ha
      obtain ⟨qz, hqz⟩ := hdiv
      have hq0 : qz ≠ 0 := by
        intro h
        subst qz
        simp at hqz
        exact hk0 hqz
      have hkM : Int.natAbs k ≤ M := by
        have hkI := Finset.mem_Icc.mp (Finset.mem_of_mem_erase hk)
        omega
      have hqQ : Int.natAbs qz ≤ Q := by
        unfold Q greenFrequencyQuotientCutoff
        have hXpos : 0 < X := by omega
        have habs : Int.natAbs k = Int.natAbs qz * X := by
          rw [hqz]
          simp [Int.natAbs_mul]
        omega
      -- Norm symmetry sends negative aliases to the positive alias term.
      exact ⟨Finset.mem_Icc.mpr ⟨Int.natAbs_pos.mpr hq0, hqQ⟩, by
        by_cases hqsign : 0 ≤ qz
        · have hkpos : k = ((Int.natAbs qz * X : ℕ) : ℤ) := by
            rw [hqz]
            simp [Int.natAbs_of_nonneg hqsign, mul_comm]
          rw [hkpos]
        · have hkneg : k = -((Int.natAbs qz * X : ℕ) : ℤ) := by
            rw [hqz]
            simp [Int.natAbs_of_nonpos (le_of_not_ge hqsign), mul_comm]
          rw [hkneg, sq_norm_greenCenteringResidual_neg]⟩
    · have hh := (greenFrequencyClass_high_iff (by omega) k).mp hhigh
      by_cases hqsign : 0 < greenCanonicalQuotient X k
      · obtain ⟨q, r, hq, hr, hrX, hkform⟩ :=
          canonical_high_positive_quotient_parameterization
            (by omega) hqsign hh.1
        have hqQ : q ≤ Q := by
          unfold Q greenFrequencyQuotientCutoff
          have hkM : Int.natAbs k ≤ M := by
            have hkI := Finset.mem_Icc.mp (Finset.mem_of_mem_erase hk)
            omega
          rcases hkform with hp | hm <;> omega
        exact ⟨⟨Finset.mem_Icc.mpr ⟨hr, hrX⟩,
          Finset.mem_Icc.mpr ⟨hq, hqQ⟩, hkform⟩, le_rfl⟩
      · have hqneg : greenCanonicalQuotient X k < 0 := by omega
        obtain ⟨q, r, hq, hr, hrX, hkform⟩ :=
          canonical_high_negative_quotient_parameterization
            (by omega) hqneg hh.1
        have hqQ : q ≤ Q := by
          unfold Q greenFrequencyQuotientCutoff
          have hkM : Int.natAbs k ≤ M := by
            have hkI := Finset.mem_Icc.mp (Finset.mem_of_mem_erase hk)
            omega
          rcases hkform with hp | hm <;> omega
        exact ⟨⟨Finset.mem_Icc.mpr ⟨hr, hrX⟩,
          Finset.mem_Icc.mpr ⟨hq, hqQ⟩, hkform⟩, by
            rw [sq_norm_greenCenteringResidual_neg]⟩
  · intro a ha b hb hab
    -- Canonical residue/quotient uniqueness makes the class encoding injective
    -- on the finite symmetric source.
    simp only at hab
    by_cases hca : greenFrequencyClass X a = .lowPrincipal <;>
      by_cases hcb : greenFrequencyClass X b = .lowPrincipal <;>
      by_cases haa : greenFrequencyClass X a = .exactAlias <;>
      by_cases habb : greenFrequencyClass X b = .exactAlias <;>
      simp [hca, hcb, haa, habb] at hab
    all_goals
      have da := greenCanonical_decomposition (by omega : 1 ≤ X) a
      have db := greenCanonical_decomposition (by omega : 1 ≤ X) b
      omega

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteExhaustion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteExhaustion.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30eb0ca9235540f1b7b9b7b95832d53d755d41a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
