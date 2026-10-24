# groupPowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6e15d848657bff5cd4632595e95cb1e63b1859a6a63ef59b205ffd8e3bfa02a",
  "kind": "abbrev",
  "lexical_name": "groupPowers",
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
  "slug": "grouppowers--1b5377ddc8360f76fd12b0d5",
  "source": {
    "blob": "19d72c5d010ffe3642fe579eb24329da6f7a9ad3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 325,
    "path": "GRWTSK/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b5377ddc8360f76fd12b0d58ae3cdfa0d51a563d784caacc9f66f58fbca8a0b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6e15d848657bff5cd4632595e95cb1e63b1859a6a63ef59b205ffd8e3bfa02a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev groupPowers {x : M} {n : ℕ} (hpos : 0 < n) (hx : x ^ n = 1) : Group (powers x) where
  inv x := x ^ (n - 1)
  inv_mul_cancel y := Subtype.ext <| by
    obtain ⟨_, k, rfl⟩ := y
    simp only [coe_one, coe_mul, SubmonoidClass.coe_pow]
    rw [← pow_succ, Nat.sub_add_cancel hpos, ← pow_mul, mul_comm, pow_mul, hx, one_pow]
  zpow z x := x ^ z.natMod n
  zpow_zero' z := by simp only [Int.natMod, Int.zero_emod, Int.toNat_zero, pow_zero]
  zpow_neg' m x := Subtype.ext <| by
    obtain ⟨_, k, rfl⟩ := x
    simp only [← pow_mul, Int.natMod, SubmonoidClass.coe_pow]
    rw [Int.negSucc_eq, ← Int.natCast_succ, ← Int.add_mul_emod_self_right (b := (m + 1 : ℕ))]
    nth_rw 1 [← mul_one ((m + 1 : ℕ) : ℤ)]
    rw [← sub_eq_neg_add, ← Int.mul_sub, ← Int.natCast_pred_of_pos hpos]; norm_cast
    simp only [Int.toNat_natCast]
    rw [mul_comm, pow_mul, ← pow_eq_pow_mod _ hx, mul_comm k, mul_assoc, pow_mul _ (_ % _),
      ← pow_eq_pow_mod _ hx, pow_mul, pow_mul]
  zpow_succ' m x := Subtype.ext <| by
    obtain ⟨_, k, rfl⟩ := x
    simp only [← pow_mul, Int.natMod, SubmonoidClass.coe_pow, coe_mul]
    norm_cast
    iterate 2 rw [Int.toNat_natCast, mul_comm, pow_mul, ← pow_eq_pow_mod _ hx]
    rw [← pow_mul _ m, mul_comm, pow_mul, ← pow_succ, ← pow_mul, mul_comm, pow_mul]

/-- Exponentiation map from natural numbers to powers. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Membership/Variantf66c91b8c607893f5ed733215bf1bfed2c19f6970a465a450607c472a5160314.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19d72c5d010ffe3642fe579eb24329da6f7a9ad3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
