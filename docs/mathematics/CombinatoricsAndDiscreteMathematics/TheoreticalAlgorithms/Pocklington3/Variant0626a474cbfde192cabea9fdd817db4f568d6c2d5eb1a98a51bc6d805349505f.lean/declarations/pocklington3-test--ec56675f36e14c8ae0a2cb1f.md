# pocklington3_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9add94f1-3dd2-db63-76c3-472da6141bf4",
  "kind": "theorem",
  "lexical_name": "pocklington3_test",
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
  "slug": "pocklington3-test--ec56675f36e14c8ae0a2cb1f",
  "source": {
    "blob": "dce484fbbb37759807ecf0c2069e303a8848841d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec56675f36e14c8ae0a2cb1f277d61f68a0f4dcf2c55112872c65a8eb2708967",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9add94f1-3dd2-db63-76c3-472da6141bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pocklington3_test (N F R m r s : ℕ)
    (R_def : F * R + 1 = N) (r_def : R % (2 * F) = r) (s_def : R / (2 * F) = s)
    (h2n : 2 ≤ N) (odd_n : Odd N) (odd_R : Odd R)
    (primitive : ∀ p ∈ F.primeFactors, ∃ a, a ^ (N - 1) ≡ 1 [MOD N] ∧
      (a ^ ((N - 1) / p) - 1).gcd N = 1)
    (divisors : ∀ l, 1 ≤ l → l < m → ¬ l * F + 1 ∣ N)
    (bound : N + (m * F + 1) * (m * F) < (m * F + 1) * (2 * F ^ 2 + r * F + 1))
    (cert : s = 0 ∨ ¬ IsSquare (r ^ 2 - 8 * s) ∨ r ^ 2 < 8 * s) :
    Nat.Prime N := by
  simp_rw [Nat.prime_iff_not_exists_mul_eq', not_exists, not_and]
  refine ⟨by lia, fun p q h2p hpn h2q hqn hpq ↦ ?_⟩
  have := pocklington_test N F (by lia)
    (by rw [← R_def, Nat.add_sub_cancel_right]; exact dvd_mul_right _ _) primitive
  replace this := Nat.modEq_one_of_dvd_of_prime _ _ this
  have hp := this p (hpq ▸ dvd_mul_right _ _)
  have hq := this q (hpq ▸ dvd_mul_left _ _)
  rw [Nat.modEq_iff_exists_mul_add' (by lia)] at hp hq
  obtain ⟨c, rfl⟩ := hp
  obtain ⟨d, rfl⟩ := hq
  have hmc : m ≤ c := le_of_not_gt fun hcm ↦ by
    obtain hc | hc := le_or_gt 1 c
    · exact divisors c hc hcm (hpq ▸ dvd_mul_right _ _)
    · interval_cases c; rw [zero_mul] at h2p; lia
  have hmd : m ≤ d := le_of_not_gt fun hdm ↦ by
    obtain hd | hd := le_or_gt 1 d
    · exact divisors d hd hdm (hpq ▸ dvd_mul_left _ _)
    · interval_cases d; rw [zero_mul] at h2q; lia
  have hf₀ : F ≠ 0 := by rintro rfl; rw [zero_mul] at R_def; lia
  have hR₂ := Nat.div_add_mod R (2 * F)
  rw [r_def, s_def] at hR₂
  rw [show (c * F + 1) * (d * F + 1) = F * ((c * d) * F + (c + d)) + 1 by ring,
    ← R_def, add_left_inj, Nat.mul_right_inj hf₀] at hpq
  have even_F : Even F := by
    rw [← R_def, Nat.odd_add_one, Nat.not_odd_iff_even, Nat.even_mul] at odd_n
    exact odd_n.resolve_right (Nat.not_even_iff_odd.mpr odd_R)
  have odd_cd : Odd (c + d) := by
    rw [← hpq] at odd_R
    refine (Nat.odd_add'.mp odd_R).mpr <| Even.mul_left even_F _
  have even_cd : Even (c * d) := by
    rw [Nat.odd_add, ← Nat.not_even_iff_odd] at odd_cd
    rw [Nat.even_mul]; exact (em (Even c)).imp id odd_cd.mp
  have hcdr : (c + d) % (2 * F) = r := by
    obtain ⟨q, hq⟩ := even_iff_exists_two_mul.mp even_cd
    replace hpq := congr($hpq % (2 * F))
    rwa [hq, mul_right_comm, Nat.mul_add_mod, r_def] at hpq
  have hcdm : (c + d) * m ≤ c * d + m ^ 2 := by
    rw [add_mul]
    obtain ⟨c, hc⟩ := le_iff_exists_add.mp hmc
    obtain ⟨d, hd⟩ := le_iff_exists_add.mp hmd
    rw [hc, hd]
    lia
  have hcdr₁ : c + d < 2 * F + r := by
    rw [← R_def, ← hpq] at bound
    conv_lhs at bound => exact
      show _ = (c * d + m ^ 2) * F ^ 2 + (c + d) * F + (m * F + 1) by ring
    grw [← hcdm] at bound
    conv_lhs at bound => exact show _ = (m * F + 1) * ((c + d) * F + 1) by ring
    rw [mul_lt_mul_iff_right₀ (by lia), add_lt_add_iff_right] at bound
    conv_rhs at bound => exact show _ = (2 * F + r) * F by ring
    rwa [mul_lt_mul_iff_left₀ (by lia)] at bound
  have hcdr₂ := Nat.div_add_mod (c + d) (2 * F)
  rw [hcdr] at hcdr₂
  rw [← hcdr₂, add_lt_add_iff_right, mul_lt_iff_lt_one_right (by lia), Nat.lt_one_iff] at hcdr₁
  rw [hcdr₁, mul_zero, zero_add] at hcdr₂
  have hscd := hR₂.trans hpq.symm
  rw [← hcdr₂, add_left_inj, mul_right_comm, mul_left_inj' (by lia)] at hscd
  obtain cert | cert := cert
  · -- first case: s = 0
    rw [cert, mul_zero, eq_comm, mul_eq_zero] at hscd
    lia
  · -- second case: r^2-8s is not square
    have square : r ^ 2 = 8 * s + (max c d - min c d) ^ 2 := by
      rw [hcdr₂, show 8 = 4 * 2 by rfl, mul_assoc, hscd, Nat.add_sq_eq_dist_sq_add_four_mul,
        add_comm]
    rw [square, Nat.add_sub_cancel_left] at cert
    obtain cert | cert := cert
    · exact cert ⟨_, sq _⟩
    · lia

-- MOVE
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dce484fbbb37759807ecf0c2069e303a8848841d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
