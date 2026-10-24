# smallDivisorMobiusMoment_eq_kernel_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1550ef6e-d21f-e2ea-25f3-97892e50510f",
  "kind": "theorem",
  "lexical_name": "smallDivisorMobiusMoment_eq_kernel_sum",
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
  "slug": "smalldivisormobiusmoment-eq-kernel-sum--3d6f2d2b841e2f6f423eaa78",
  "source": {
    "blob": "18becace601b9101db72937bc4b7a39dc8968037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d6f2d2b841e2f6f423eaa78ba46ffae508239b30bbfa378acdf45530a3f1091",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1550ef6e-d21f-e2ea-25f3-97892e50510f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smallDivisorMobiusMoment_eq_kernel_sum (A : ℝ) (hA : 1 ≤ A) :
    smallDivisorMobiusMoment A =
      ∑ d ∈ Finset.Icc 1 ⌊A ^ 2⌋₊, realMoebius d * sourceMobiusKernel A d := by
  symm
  let D := Finset.Icc 1 ⌊A ^ 2⌋₊
  calc
    _ = ∑ d ∈ D, realMoebius d *
        (∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [positive_divisor_integer_agreement A hA d (Finset.mem_Icc.mp hd).1]
    _ = ∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            ∑ d ∈ D, realMoebius d *
              (if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n _
      rw [Finset.sum_comm]
    _ = smallDivisorMobiusMoment A := by
      unfold smallDivisorMobiusMoment mobiusLogTerm realMoebius
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro dk hdk
      have hdpos : 1 ≤ dk.1 :=
        Nat.pos_of_mem_divisors (Nat.fst_mem_divisors_of_mem_antidiagonal hdk)
      have hm : dk.1 ∈ D ↔ (dk.1 : ℝ) ≤ A ^ 2 := by
        simp only [D, Finset.mem_Icc, hdpos, true_and]
        exact Nat.le_floor_iff (sq_nonneg A)
      by_cases hs : (dk.1 : ℝ) ≤ A ^ 2
      · rw [Finset.sum_eq_single dk.1]
        · simp [hs, mul_assoc]
        · intro d _ hne
          simp [Ne.symm hne]
        · simp [hm.mpr hs]
      · have hz : (∑ d ∈ D, ((ArithmeticFunction.moebius d : ℤ) : ℝ) *
            (if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0)) = 0 := by
          apply Finset.sum_eq_zero
          intro d hd
          have hne : dk.1 ≠ d := by
            intro heq
            exact hs (hm.mp (heq ▸ hd))
          simp [hne]
        rw [hz]
        simp [hs]

/-- A telescoping square-root comparison controls every finite inverse-root sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18becace601b9101db72937bc4b7a39dc8968037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
