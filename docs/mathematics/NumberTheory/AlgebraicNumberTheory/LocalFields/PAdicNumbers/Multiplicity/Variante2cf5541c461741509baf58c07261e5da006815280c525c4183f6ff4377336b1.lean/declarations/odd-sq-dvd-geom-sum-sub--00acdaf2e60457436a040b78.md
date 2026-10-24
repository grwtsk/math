# odd_sq_dvd_geom_sum₂_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b5536b9-89b7-c5ae-7937-23db88348a14",
  "kind": "theorem",
  "lexical_name": "odd_sq_dvd_geom_sum₂_sub",
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
  "slug": "odd-sq-dvd-geom-sum-sub--00acdaf2e60457436a040b78",
  "source": {
    "blob": "f125784829cceb34a3629adda27d0ec3aec075bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00acdaf2e60457436a040b78bd19d93a96874a0cf50c6f1402771a269e15629c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b5536b9-89b7-c5ae-7937-23db88348a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_sq_dvd_geom_sum₂_sub (hp : Odd p) :
    (p : R) ^ 2 ∣ (∑ i in range p, (a + p * b) ^ i * a ^ (p - 1 - i)) - p * a ^ (p - 1) := by
  have h1 : ∀ (i : ℕ),
      (p : R) ^ 2 ∣ (a + ↑p * b) ^ i - (a ^ (i - 1) * (↑p * b) * i + a ^ i) := by
    intro i
    calc
      ↑p ^ 2 ∣ (↑p * b) ^ 2 := by simp only [mul_pow, dvd_mul_right]
      _ ∣ (a + ↑p * b) ^ i - (a ^ (i - 1) * (↑p * b) * ↑i + a ^ i) := by
        simp only [sq_dvd_add_pow_sub_sub (↑p * b) a i, ← sub_sub]
  simp_rw [← mem_span_singleton, ← Ideal.Quotient.eq] at *
  let s : R := (p : R)^2
  calc
    (Ideal.Quotient.mk (span {s})) (∑ i in range p, (a + (p : R) * b) ^ i * a ^ (p - 1 - i)) =
        ∑ i : ℕ in Finset.range p,
        mk (span {s}) ((a ^ (i - 1) * (↑p * b) * ↑i + a ^ i) * a ^ (p - 1 - i)) :=
      by simp_rw [RingHom.map_geom_sum₂, ← map_pow, h1, ← _root_.map_mul]
    _ =
        mk (span {s})
            (∑ x : ℕ in Finset.range p, a ^ (x - 1) * (a ^ (p - 1 - x) * (↑p * (b * ↑x)))) +
          mk (span {s}) (∑ x : ℕ in Finset.range p, a ^ (x + (p - 1 - x))) := by
      ring_nf
      simp only [← pow_add, map_add, Finset.sum_add_distrib, ← map_sum]
      congr
      simp [pow_add a, mul_assoc]
    _ =
        mk (span {s})
            (∑ x : ℕ in Finset.range p, a ^ (x - 1) * (a ^ (p - 1 - x) * (↑p * (b * ↑x)))) +
          mk (span {s}) (∑ x : ℕ in Finset.range p, a ^ (p - 1)) := by
      rw [add_right_inj]
      have : ∀ (x : ℕ), (hx : x ∈ range p) → a ^ (x + (p - 1 - x)) = a ^ (p - 1) := by
        intro x hx
        rw [← Nat.add_sub_assoc _ x, Nat.add_sub_cancel_left]
        exact Nat.le_pred_of_lt (Finset.mem_range.mp hx)
      rw [Finset.sum_congr rfl this]
    _ =
        mk (span {s})
            (∑ x : ℕ in Finset.range p, a ^ (x - 1) * (a ^ (p - 1 - x) * (↑p * (b * ↑x)))) +
          mk (span {s}) (↑p * a ^ (p - 1)) :=
      by simp only [add_right_inj, Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    _ =
        mk (span {s}) (↑p * b * ∑ x : ℕ in Finset.range p, a ^ (p - 2) * x) +
          mk (span {s}) (↑p * a ^ (p - 1)) := by
      simp only [Finset.mul_sum, ← mul_assoc, ← pow_add]
      rw [Finset.sum_congr rfl]
      rintro (⟨⟩ | ⟨x⟩) hx
      · rw [Nat.cast_zero, mul_zero, mul_zero]
      · have : x.succ - 1 + (p - 1 - x.succ) = p - 2 := by
          rw [← Nat.add_sub_assoc (Nat.le_pred_of_lt (Finset.mem_range.mp hx))]
          exact congr_arg Nat.pred (Nat.add_sub_cancel_left _ _)
        rw [this]
        ring1
    _ = mk (span {s}) (↑p * a ^ (p - 1)) := by
      have : Finset.sum (range p) (fun (x : ℕ) ↦ (x : R)) =
          ((Finset.sum (range p) (fun (x : ℕ) ↦ (x : ℕ)))) := by simp only [Nat.cast_sum]
      simp only [add_left_eq_self, ← Finset.mul_sum, this]
      norm_cast
      simp only [Finset.sum_range_id]
      norm_cast
      simp only [Nat.cast_mul, _root_.map_mul,
          Nat.mul_div_assoc p (even_iff_two_dvd.mp (Nat.Odd.sub_odd hp odd_one))]
      ring_nf
      rw [mul_assoc, mul_assoc]
      refine' mul_eq_zero_of_left _ _
      refine' Ideal.Quotient.eq_zero_iff_mem.mpr _
      simp [mem_span_singleton]
#align odd_sq_dvd_geom_sum₂_sub odd_sq_dvd_geom_sum₂_sub

namespace multiplicity

section IntegralDomain

variable [IsDomain R] [@DecidableRel R (· ∣ ·)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f125784829cceb34a3629adda27d0ec3aec075bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
