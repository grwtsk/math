# eq_one_or_neg_one_of_unit_of_congruent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68c4f5d1-21bb-acb1-7ea6-f50f53e36659",
  "kind": "theorem",
  "lexical_name": "eq_one_or_neg_one_of_unit_of_congruent",
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
  "slug": "eq-one-or-neg-one-of-unit-of-congruent--c2c18dccd49b3e8e5a8f83b5",
  "source": {
    "blob": "60210ab3a64884e590b421544045b0fad89637b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c18dccd49b3e8e5a8f83b5d38d5474b87cc1303aebe9d1dd3c84e38f269090",
  "verification": {
    "reference": "docs/verification/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c4f5d1-21bb-acb1-7ea6-f50f53e36659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_one_or_neg_one_of_unit_of_congruent
    [NumberField K] [IsCyclotomicExtension {3} ℚ K] (hcong : ∃ n : ℤ, λ ^ 2 ∣ (u - n : 𝓞 K)) :
    u = 1 ∨ u = -1 := by
  replace hcong : ∃ n : ℤ, (3 : 𝓞 K) ∣ (↑u - n : 𝓞 K) := by
    obtain ⟨n, x, hx⟩ := hcong
    exact ⟨n, -η * x, by rw [← mul_assoc, mul_neg, ← neg_mul, ← lambda_sq, hx]⟩
  have hζ := IsCyclotomicExtension.zeta_spec 3 ℚ K
  have := Units.mem hζ u
  fin_cases this
  · left; rfl
  · right; rfl
  all_goals exfalso
  · exact hζ.not_exists_int_prime_dvd_sub_of_prime_ne_two' (by decide) hcong
  · apply hζ.not_exists_int_prime_dvd_sub_of_prime_ne_two' (by decide)
    obtain ⟨n, x, hx⟩ := hcong
    rw [sub_eq_iff_eq_add] at hx
    refine ⟨-n, -x, sub_eq_iff_eq_add.2 ?_⟩
    simp only [PNat.val_ofNat, Nat.cast_ofNat, mul_neg, Int.cast_neg, ← neg_add, ← hx,
      Units.val_neg, IsUnit.unit_spec, RingOfIntegers.neg_mk, neg_neg]
  · exact (hζ.pow_of_coprime 2 (by decide)).not_exists_int_prime_dvd_sub_of_prime_ne_two'
      (by decide) hcong
  · apply (hζ.pow_of_coprime 2 (by decide)).not_exists_int_prime_dvd_sub_of_prime_ne_two'
      (by decide)
    obtain ⟨n, x, hx⟩ := hcong
    refine ⟨-n, -x, sub_eq_iff_eq_add.2 ?_⟩
    have : (hζ.pow_of_coprime 2 (by decide)).toInteger = hζ.toInteger ^ 2 := by ext; simp
    simp only [this, PNat.val_ofNat, Nat.cast_ofNat, mul_neg, Int.cast_neg, ← neg_add, ←
      sub_eq_iff_eq_add.1 hx, Units.val_neg, val_pow_eq_pow_val, IsUnit.unit_spec, neg_neg]

variable (x : 𝓞 K)

/-- Let `(x : 𝓞 K)`. Then we have that `λ` divides one amongst `x`, `x - 1` and `x + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60210ab3a64884e590b421544045b0fad89637b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
