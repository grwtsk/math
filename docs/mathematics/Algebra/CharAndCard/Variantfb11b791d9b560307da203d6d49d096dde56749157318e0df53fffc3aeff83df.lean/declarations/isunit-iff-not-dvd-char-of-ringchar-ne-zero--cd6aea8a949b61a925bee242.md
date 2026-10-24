# isUnit_iff_not_dvd_char_of_ringChar_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eabb03dd-bcac-d678-33c7-8a5e3ea5ebc6",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_not_dvd_char_of_ringChar_ne_zero",
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
  "slug": "isunit-iff-not-dvd-char-of-ringchar-ne-zero--cd6aea8a949b61a925bee242",
  "source": {
    "blob": "6054e2d9142eb2c2555d7c22cea62b83c82ed8bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 31,
    "path": "GRWTSK/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd6aea8a949b61a925bee242b3ca279240ca7885dd912058859c3d8f32f63fda",
  "verification": {
    "reference": "docs/verification/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eabb03dd-bcac-d678-33c7-8a5e3ea5ebc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_not_dvd_char_of_ringChar_ne_zero (R : Type*) [CommRing R] (p : ℕ) [Fact p.Prime]
    (hR : ringChar R ≠ 0) : IsUnit (p : R) ↔ ¬p ∣ ringChar R := by
  have hch := CharP.cast_eq_zero R (ringChar R)
  have hp : p.Prime := Fact.out
  constructor
  · rintro h₁ ⟨q, hq⟩
    rcases IsUnit.exists_left_inv h₁ with ⟨a, ha⟩
    have h₃ : ¬ringChar R ∣ q := by
      rintro ⟨r, hr⟩
      rw [hr, ← mul_assoc, mul_comm p, mul_assoc] at hq
      nth_rw 1 [← mul_one (ringChar R)] at hq
      exact Nat.Prime.not_dvd_one hp ⟨r, mul_left_cancel₀ hR hq⟩
    have h₄ := mt (CharP.int_cast_eq_zero_iff R (ringChar R) q).mp
    apply_fun ((↑) : ℕ → R) at hq
    apply_fun (· * ·) a at hq
    rw [Nat.cast_mul, hch, mul_zero, ← mul_assoc, ha, one_mul] at hq
    norm_cast at h₄
    exact h₄ h₃ hq.symm
  · intro h
    rcases(hp.coprime_iff_not_dvd.mpr h).isCoprime with ⟨a, b, hab⟩
    apply_fun ((↑) : ℤ → R) at hab
    push_cast at hab
    rw [hch, mul_zero, add_zero, mul_comm] at hab
    exact isUnit_of_mul_eq_one (p : R) a hab
#align is_unit_iff_not_dvd_char_of_ring_char_ne_zero isUnit_iff_not_dvd_char_of_ringChar_ne_zero

/-- A prime `p` is a unit in a finite commutative ring `R`
iff it does not divide the characteristic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharAndCard/Variantfb11b791d9b560307da203d6d49d096dde56749157318e0df53fffc3aeff83df.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6054e2d9142eb2c2555d7c22cea62b83c82ed8bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
