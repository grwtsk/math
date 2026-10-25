# Nat.Prime.mod_6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5e0d24b-f948-cba2-ca15-7c337ca23aa4",
  "kind": "theorem",
  "lexical_name": "Nat.Prime.mod_6",
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
  "slug": "nat-prime-mod-6--e81beb2ba899987c8cca33d5",
  "source": {
    "blob": "3e5b5c6ff27700a46f3118b991dd5da55f20b143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e81beb2ba899987c8cca33d534a8847ae189b9037acaf6ae3194b5bf2c03592e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5e0d24b-f948-cba2-ca15-7c337ca23aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.Prime.mod_6 {p : ℕ} (hp : p.Prime) (hp₂ : p ≠ 2) (hp₃ : p ≠ 3) :
    p % 6 = 1 ∨ p % 6 = 5 := by
  have h₁ := div_add_mod p 6
  have h₂ := mod_lt p (by decide +kernel : 0 < 6)
  generalize p / 6 = k at *
  generalize p % 6 = r at *
  subst p
  interval_cases r
  · rw [add_zero, prime_mul_iff, eq_false (p := Prime 6) (by decide)] at hp; simp at hp
  · left; lia
  · rw [show 6 * k + 2 = 2 * (3 * k + 1) by ring, prime_mul_iff] at hp
    rcases hp with ⟨-, h⟩ | ⟨-, h⟩ <;> lia
  · rw [show 6 * k + 3 = 3 * (2 * k + 1) by ring, prime_mul_iff] at hp
    rcases hp with ⟨-, h⟩ | ⟨-, h⟩ <;> lia
  · rw [show 6 * k + 4 = 2 * (3 * k + 2) by ring, prime_mul_iff] at hp
    rcases hp with ⟨-, h⟩ | ⟨-, h⟩ <;> lia
  · right; lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e5b5c6ff27700a46f3118b991dd5da55f20b143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
