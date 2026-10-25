# dyadic_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7ae99a3-469c-3a84-a145-e5458fb889e4",
  "kind": "theorem",
  "lexical_name": "dyadic_aux",
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
  "slug": "dyadic-aux--c6e07c28ea9bc9e934eb9ebe",
  "source": {
    "blob": "7c35af30d71ce99cd9fad1931b1d9ffcac711011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6e07c28ea9bc9e934eb9ebeb5b2c3a527b44c8bce134d071aa22c9e1294c6c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7ae99a3-469c-3a84-a145-e5458fb889e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_aux {m₁ m₂ : ℤ} {y₁ y₂ : ℕ} (h₂ : m₁ * 2 ^ y₁ = m₂ * 2 ^ y₂) :
    m₁ * powHalf y₂ = m₂ * powHalf y₁ := by
  revert m₁ m₂
  wlog h : y₁ ≤ y₂
  · intro m₁ m₂ aux; exact (this (le_of_not_le h) aux.symm).symm
  intro m₁ m₂ h₂
  obtain ⟨c, rfl⟩ := le_iff_exists_add.mp h
  rw [add_comm, pow_add, ← mul_assoc, mul_eq_mul_right_iff] at h₂
  rcases h₂ with h₂ | h₂
  · rw [h₂, add_comm]
    simp_rw [Int.cast_mul, Int.cast_pow, Int.cast_ofNat, zsmul_pow_two_powHalf m₂ c y₁]
  · have := Nat.one_le_pow y₁ 2 Nat.succ_pos'
    norm_cast at h₂; omega

/-- The additive monoid morphism `dyadicMap` sends ⟦⟨m, 2^n⟩⟧ to m • half ^ n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c35af30d71ce99cd9fad1931b1d9ffcac711011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
