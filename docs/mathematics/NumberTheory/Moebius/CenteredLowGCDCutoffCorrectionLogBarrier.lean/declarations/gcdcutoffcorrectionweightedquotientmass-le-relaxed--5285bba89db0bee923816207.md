# gcdCutoffCorrectionWeightedQuotientMass_le_relaxed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51111966-1791-24a7-a50b-8a2c12fe4ffc",
  "kind": "theorem",
  "lexical_name": "gcdCutoffCorrectionWeightedQuotientMass_le_relaxed",
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
  "slug": "gcdcutoffcorrectionweightedquotientmass-le-relaxed--5285bba89db0bee923816207",
  "source": {
    "blob": "2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 230,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5285bba89db0bee923816207581e3df350fdab3b74879afe27700ee7b39108ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51111966-1791-24a7-a50b-8a2c12fe4ffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcdCutoffCorrectionWeightedQuotientMass_le_relaxed
    {X Y : ℕ}
    (hY : 1 ≤ Y) :
    gcdCutoffCorrectionWeightedQuotientMass X Y ≤
      gcdCutoffCorrectionRelaxedFactorMass X Y := by
  have hhigh :
      highGCDCutoffIndexSet X Y =
        Finset.Ioc Y (4 * X) := by
    ext r
    simp [highGCDCutoffIndexSet, modulusIndexSet]
    omega
  rw [gcdCutoffCorrectionWeightedQuotientMass, hhigh]
  calc
    (∑ r ∈ Finset.Ioc Y (4 * X),
      |gcdCutoffCorrectionCoefficient Y r| *
        (((4 * X / r : ℕ) : ℝ)^2)) ≤
      ∑ r ∈ Finset.Ioc Y (4 * X),
        ((gcdCutoffCorrectionDivisorSet Y r).card : ℝ) *
          (((4 * X / r : ℕ) : ℝ)^2) := by
      apply Finset.sum_le_sum
      intro r hr
      have hrpos : 0 < r := by
        have := Finset.mem_Ioc.mp hr
        omega
      exact mul_le_mul_of_nonneg_right
        (abs_gcdCutoffCorrectionCoefficient_le_card hY hrpos)
        (sq_nonneg _)
    _ =
      ∑ p : {p : Σ _r : ℕ, ℕ //
          p ∈ gcdCutoffCorrectionIncidenceSet X Y},
        (((4 * X / p.1.1 : ℕ) : ℝ)^2) := by
      rw [← Finset.sum_sigma']
      simp [gcdCutoffCorrectionIncidenceSet,
        Finset.card_eq_sum_ones, Finset.mul_sum]
    _ =
      ∑ q : {q : Σ _a : ℕ, ℕ //
          q ∈ gcdCutoffCorrectionFactorSet X Y},
        (((4 * X / (q.1.1 * q.1.2) : ℕ) : ℝ)^2) := by
      exact Fintype.sum_equiv
        gcdCutoffCorrectionIncidenceEquivFactor
        (fun p =>
          (((4 * X / p.1.1 : ℕ) : ℝ)^2))
        (fun q =>
          (((4 * X / (q.1.1 * q.1.2) : ℕ) : ℝ)^2))
        (by
          intro p
          change
            (((4 * X / p.1.1 : ℕ) : ℝ)^2) =
              (((4 * X /
                (p.1.2 * (p.1.1 / p.1.2)) : ℕ) : ℝ)^2)
          have hp := Finset.mem_sigma.mp p.2
          have ha := Finset.mem_filter.mp hp.2
          have hadiv := (Nat.mem_divisors.mp ha.1).1
          rw [Nat.mul_div_cancel' hadiv])
    _ ≤ gcdCutoffCorrectionRelaxedFactorMass X Y := by
      unfold gcdCutoffCorrectionRelaxedFactorMass
      rw [← Finset.sum_coe_sort
        (gcdCutoffCorrectionFactorSet X Y)
        (fun q : Σ _a : ℕ, ℕ =>
          (((4 * X / (q.1 * q.2) : ℕ) : ℝ)^2))]
      rw [← Finset.sum_sigma']
      apply Finset.sum_le_sum
      intro a ha
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · intro k hk
        have hk' := Finset.mem_filter.mp hk
        have hprod := hk'.2
        have hapos : 0 < a := by
          have := Finset.mem_Icc.mp ha
          omega
        have hkpos : 0 < k := (Finset.mem_Ioc.mp hk'.1).1
        have hkLower : Y / a < k := by
          apply (Nat.div_lt_iff_lt_mul hapos).2
          simpa [Nat.mul_comm] using hprod.1
        exact Finset.mem_Ioo.mpr
          ⟨hkLower, by
            have := Finset.mem_Ioc.mp hk'.1
            omega⟩
      · intro k hkBig hkSmall
        positivity
      · intro k hk
        have hapos : 0 < a := by
          have := Finset.mem_Icc.mp ha
          omega
        have hkpos : 0 < k := by
          have := Finset.mem_Ioo.mp hk
          omega
        have hcast :
            ((4 * X / (a * k) : ℕ) : ℝ) ≤
              ((4 * X : ℕ) : ℝ) /
                ((a * k : ℕ) : ℝ) := by
          exact Nat.cast_div_le
        have hsq :=
          mul_self_le_mul_self
            (by positivity :
              0 ≤ ((4 * X / (a * k) : ℕ) : ℝ))
            hcast
        calc
          (((4 * X / (a * k) : ℕ) : ℝ)^2) ≤
              ((((4 * X : ℕ) : ℝ) /
                ((a * k : ℕ) : ℝ))^2) := by
                  simpa [pow_two] using hsq
          _ =
              16 * (X : ℝ)^2 *
                (((a : ℝ)^2)⁻¹) *
                (((k : ℝ)^2)⁻¹) := by
                  field_simp [show (a : ℝ) ≠ 0 by
                    exact_mod_cast (Nat.ne_of_gt hapos),
                    show (k : ℝ) ≠ 0 by
                    exact_mod_cast (Nat.ne_of_gt hkpos)]
                  ring

/-- Elementary reciprocal comparison generated by integer division. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
