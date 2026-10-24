# appr_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:605d2ffd-8206-5170-88ba-4ed5f076faa5",
  "kind": "theorem",
  "lexical_name": "appr_spec",
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
  "slug": "appr-spec--b4fa49e871d12b8471cf9fb9",
  "source": {
    "blob": "3d6e63e6774a1826ab35c35833354a3029a48d17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 353,
    "path": "GRWTSK/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4fa49e871d12b8471cf9fb9abbca97c3e8e0d9fc4b745066ac0386b9f3c487b",
  "verification": {
    "reference": "docs/verification/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:605d2ffd-8206-5170-88ba-4ed5f076faa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem appr_spec (n : ℕ) : ∀ x : ℤ_[p], x - appr x n ∈ Ideal.span {(p : ℤ_[p]) ^ n} := by
  simp only [Ideal.mem_span_singleton]
  induction n with
  | zero => simp only [zero_eq, _root_.pow_zero, isUnit_one, IsUnit.dvd, forall_const]
  | succ n ih =>
    intro x
    dsimp only [appr]
    split_ifs with h
    · rw [h]
      apply dvd_zero
    push_cast
    rw [sub_add_eq_sub_sub]
    obtain ⟨c, hc⟩ := ih x
    simp only [map_natCast, ZMod.natCast_self, RingHom.map_pow, RingHom.map_mul, ZMod.natCast_val]
    have hc' : c ≠ 0 := by
      rintro rfl
      simp only [mul_zero] at hc
      contradiction
    conv_rhs =>
      congr
      simp only [hc]
    rw [show (x - (appr x n : ℤ_[p])).valuation = ((p : ℤ_[p]) ^ n * c).valuation by rw [hc]]
    rw [valuation_p_pow_mul _ _ hc', Nat.cast_add, add_sub_cancel_left, _root_.pow_succ, ← mul_sub]
    apply mul_dvd_mul_left
    obtain hc0 | hc0 := eq_or_ne c.valuation 0
    · simp only [hc0, mul_one, _root_.pow_zero, Nat.cast_zero, Int.natAbs_zero]
      rw [mul_comm, unitCoeff_spec h] at hc
      suffices c = unitCoeff h by
        rw [← this, ← Ideal.mem_span_singleton, ← maximalIdeal_eq_span_p]
        apply toZMod_spec
      lift c to ℤ_[p]ˣ using by simp [isUnit_iff, norm_eq_zpow_neg_valuation hc', hc0]
      rw [IsDiscreteValuationRing.unit_mul_pow_congr_unit _ _ _ _ _ hc]
      exact irreducible_p
    · simp only [Int.natAbs_natCast, zero_pow hc0, sub_zero, ZMod.cast_zero, mul_zero]
      rw [unitCoeff_spec hc']
      exact (dvd_pow_self (p : ℤ_[p]) hc0).mul_left _

/-- A ring hom from `ℤ_[p]` to `ZMod (p^n)`, with underlying function `PadicInt.appr n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d6e63e6774a1826ab35c35833354a3029a48d17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
