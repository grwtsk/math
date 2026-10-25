# choose_mul_factorial_mul_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d836a55-fc14-49f8-19ff-f23ad4ffdfed",
  "kind": "theorem",
  "lexical_name": "choose_mul_factorial_mul_factorial",
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
  "slug": "choose-mul-factorial-mul-factorial--a9f36fd50e60fac53b7af952",
  "source": {
    "blob": "7b89fb4ba0559dd3d97a3fdd28e238be0c6756cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9f36fd50e60fac53b7af952fb599052792cf235a13959d837d72705cd86b419",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d836a55-fc14-49f8-19ff-f23ad4ffdfed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_mul_factorial_mul_factorial : ∀ {n k}, k ≤ n → choose n k * k ! * (n - k)! = n !
  | 0, _, hk => by simp [Nat.eq_zero_of_le_zero hk]
  | n + 1, 0, _ => by simp
  | n + 1, succ k, hk => by
    cases' lt_or_eq_of_le hk with hk₁ hk₁
    · have h : choose n k * k.succ ! * (n - k)! = (k + 1) * n ! := by
        rw [← choose_mul_factorial_mul_factorial (le_of_succ_le_succ hk)]
        simp [factorial_succ, mul_comm, mul_left_comm, mul_assoc]
      have h₁ : (n - k)! = (n - k) * (n - k.succ)! := by
        rw [← succ_sub_succ, succ_sub (le_of_lt_succ hk₁), factorial_succ]
      have h₂ : choose n (succ k) * k.succ ! * ((n - k) * (n - k.succ)!) = (n - k) * n ! := by
        rw [← choose_mul_factorial_mul_factorial (le_of_lt_succ hk₁)]
        simp [factorial_succ, mul_comm, mul_left_comm, mul_assoc]
      have h₃ : k * n ! ≤ n * n ! := Nat.mul_le_mul_right _ (le_of_succ_le_succ hk)
      rw [choose_succ_succ, add_mul, add_mul, succ_sub_succ, h, h₁, h₂, add_mul, tsub_mul,
        factorial_succ, ← add_tsub_assoc_of_le h₃, add_assoc, ← add_mul, add_tsub_cancel_left,
        add_comm]
    · rw [hk₁]; simp [hk₁, mul_comm, choose, tsub_self]
#align nat.choose_mul_factorial_mul_factorial Nat.choose_mul_factorial_mul_factorial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b89fb4ba0559dd3d97a3fdd28e238be0c6756cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
