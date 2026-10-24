# C_p_pow_dvd_bind₁_rename_wittPolynomial_sub_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bebdc73-ecb0-bd8f-9592-6e3e773d98c8",
  "kind": "theorem",
  "lexical_name": "C_p_pow_dvd_bind₁_rename_wittPolynomial_sub_sum",
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
  "slug": "c-p-pow-dvd-bind-rename-wittpolynomial-sub-sum--1fef37920ab9c1b589aaff9e",
  "source": {
    "blob": "1cc0432206657a0d0e63f24b6dfbf4bfcccf25e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 237,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fef37920ab9c1b589aaff9e15bcf64cd68d63da42bef6e3e1337e5eb0b15e41",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bebdc73-ecb0-bd8f-9592-6e3e773d98c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem C_p_pow_dvd_bind₁_rename_wittPolynomial_sub_sum (Φ : MvPolynomial idx ℤ) (n : ℕ)
    (IH :
      ∀ m : ℕ,
        m < n →
          map (Int.castRingHom ℚ) (wittStructureInt p Φ m) =
            wittStructureRat p (map (Int.castRingHom ℚ) Φ) m) :
    (C (p ^ n : ℤ) : MvPolynomial (idx × ℕ) ℤ) ∣
      bind₁ (fun b : idx => rename (fun i => (b, i)) (wittPolynomial p ℤ n)) Φ -
        ∑ i in range n, C ((p : ℤ) ^ i) * wittStructureInt p Φ i ^ p ^ (n - i) := by
  cases' n with n
  · simp only [isUnit_one, Int.ofNat_zero, Int.ofNat_succ, zero_add, pow_zero, C_1, IsUnit.dvd,
      Nat.cast_one, Nat.zero_eq]
  -- prepare a useful equation for rewriting
  have key := bind₁_rename_expand_wittPolynomial Φ n IH
  apply_fun map (Int.castRingHom (ZMod (p ^ (n + 1)))) at key
  conv_lhs at key => simp only [map_bind₁, map_rename, map_expand, map_wittPolynomial]
  -- clean up and massage
  rw [Nat.succ_eq_add_one, C_dvd_iff_zmod, RingHom.map_sub, sub_eq_zero, map_bind₁]
  simp only [map_rename, map_wittPolynomial, wittPolynomial_zmod_self]
  rw [key]; clear key IH
  rw [bind₁, aeval_wittPolynomial, map_sum, map_sum, Finset.sum_congr rfl]
  intro k hk
  rw [Finset.mem_range, Nat.lt_succ_iff] at hk
  -- Porting note: was much slower
  -- simp only [← sub_eq_zero, ← RingHom.map_sub, ← C_dvd_iff_zmod, C_eq_coe_nat, ← mul_sub, ←
  --   Nat.cast_pow]
  rw [← sub_eq_zero, ← RingHom.map_sub, ← C_dvd_iff_zmod, C_eq_coe_nat, ← Nat.cast_pow,
    ← Nat.cast_pow, C_eq_coe_nat, ← mul_sub]
  have : p ^ (n + 1) = p ^ k * p ^ (n - k + 1) := by
    rw [← pow_add, ← add_assoc]; congr 2; rw [add_comm, ← tsub_eq_iff_eq_add_of_le hk]
  rw [this]
  simp only -- Porting note: without this, the next `rw` doesn't do anything
  rw [Nat.cast_mul, Nat.cast_pow, Nat.cast_pow]
  apply mul_dvd_mul_left ((p : MvPolynomial (idx × ℕ) ℤ) ^ k)
  rw [show p ^ (n + 1 - k) = p * p ^ (n - k) by rw [← pow_succ, ← tsub_add_eq_add_tsub hk]]
  rw [pow_mul]
  rw [← Nat.cast_pow] -- Porting note: added
  -- the machine!
  apply dvd_sub_pow_of_dvd_sub
  rw [← C_eq_coe_nat, C_dvd_iff_zmod, RingHom.map_sub, sub_eq_zero, map_expand, RingHom.map_pow,
    MvPolynomial.expand_zmod]
set_option linter.uppercaseLean3 false in
#align C_p_pow_dvd_bind₁_rename_witt_polynomial_sub_sum C_p_pow_dvd_bind₁_rename_wittPolynomial_sub_sum

variable (p)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cc0432206657a0d0e63f24b6dfbf4bfcccf25e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
