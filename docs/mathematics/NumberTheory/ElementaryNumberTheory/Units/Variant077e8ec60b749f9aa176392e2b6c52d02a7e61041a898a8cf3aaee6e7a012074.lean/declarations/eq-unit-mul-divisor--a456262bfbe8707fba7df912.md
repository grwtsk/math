# eq_unit_mul_divisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f88696cf-b515-b549-f609-d5cafda5f92f",
  "kind": "lemma",
  "lexical_name": "eq_unit_mul_divisor",
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
  "slug": "eq-unit-mul-divisor--a456262bfbe8707fba7df912",
  "source": {
    "blob": "1405b498718f1c58eef94e3763def02a970d5bda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 87,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a456262bfbe8707fba7df912572b50771dff2d301959643480b5d3a89efdd469",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f88696cf-b515-b549-f609-d5cafda5f92f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_unit_mul_divisor {N : ℕ} (a : ZMod N) :
    ∃ d : ℕ, d ∣ N ∧ ∃ (u : ZMod N), IsUnit u ∧ a = u * d := by
  rcases eq_or_ne N 0 with rfl | hN
  -- Silly special case : N = 0. Of no mathematical interest, but true, so let's prove it.
  · change ℤ at a
    rcases eq_or_ne a 0 with rfl | ha
    · refine ⟨0, dvd_zero _, 1, isUnit_one, by rw [Nat.cast_zero, mul_zero]⟩
    refine ⟨a.natAbs, dvd_zero _, Int.sign a, ?_, (Int.sign_mul_natAbs a).symm⟩
    rcases lt_or_gt_of_ne ha with h | h
    · simp only [Int.sign_eq_neg_one_of_neg h, IsUnit.neg_iff, isUnit_one]
    · simp only [Int.sign_eq_one_of_pos h, isUnit_one]
  -- now the interesting case
  have : NeZero N := ⟨hN⟩
  -- Define `d` as the GCD of a lift of `a` and `N`.
  let d := a.val.gcd N
  have hd : d ≠ 0 := Nat.gcd_ne_zero_right hN
  obtain ⟨a₀, (ha₀ : _ = d * _)⟩ := a.val.gcd_dvd_left N
  obtain ⟨N₀, (hN₀ : _ = d * _)⟩ := a.val.gcd_dvd_right N
  refine ⟨d, ⟨N₀, hN₀⟩, ?_⟩
  -- Show `a` is a unit mod `N / d`.
  have hu₀ : IsUnit (a₀ : ZMod N₀) := by
    refine (isUnit_iff_coprime _ _).mpr (Nat.isCoprime_iff_coprime.mp ?_)
    obtain ⟨p, q, hpq⟩ : ∃ (p q : ℤ), d = a.val * p + N * q := ⟨_, _, Nat.gcd_eq_gcd_ab _ _⟩
    rw [ha₀, hN₀, Nat.cast_mul, Nat.cast_mul, mul_assoc, mul_assoc, ← mul_add, eq_comm,
      mul_comm _ p, mul_comm _ q] at hpq
    exact ⟨p, q, Int.eq_one_of_mul_eq_self_right (Nat.cast_ne_zero.mpr hd) hpq⟩
  -- Lift it arbitrarily to a unit mod `N`.
  obtain ⟨u, hu⟩ := (ZMod.unitsMap_surjective (⟨d, mul_comm d N₀ ▸ hN₀⟩ : N₀ ∣ N)) hu₀.unit
  rw [unitsMap_def, ← Units.eq_iff, Units.coe_map, IsUnit.unit_spec, MonoidHom.coe_coe] at hu
  refine ⟨u.val, u.isUnit, ?_⟩
  rw [← ZMod.natCast_zmod_val a, ← ZMod.natCast_zmod_val u.1, ha₀, ← Nat.cast_mul,
    ZMod.natCast_eq_natCast_iff, mul_comm _ d, Nat.ModEq]
  simp only [hN₀, Nat.mul_mod_mul_left, Nat.mul_right_inj hd]
  rw [← Nat.ModEq, ← ZMod.natCast_eq_natCast_iff, ← hu, natCast_val, castHom_apply]

end ZMod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1405b498718f1c58eef94e3763def02a970d5bda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
