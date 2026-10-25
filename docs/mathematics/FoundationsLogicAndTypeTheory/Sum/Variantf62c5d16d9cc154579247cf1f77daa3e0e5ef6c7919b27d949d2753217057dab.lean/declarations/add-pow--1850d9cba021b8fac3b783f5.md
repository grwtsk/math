# add_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcbf0090-207b-4f9b-8f4f-87c9fee3ccbc",
  "kind": "theorem",
  "lexical_name": "add_pow",
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
  "slug": "add-pow--1850d9cba021b8fac3b783f5",
  "source": {
    "blob": "48a72b18dd1389212a40252652b9d1709e75bd31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1850d9cba021b8fac3b783f5e5d9a10d3539f3e600f66bcad779fb3502c439fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcbf0090-207b-4f9b-8f4f-87c9fee3ccbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_pow (h : Commute x y) (n : ℕ) :
    (x + y) ^ n = ∑ m ∈ range (n + 1), x ^ m * y ^ (n - m) * n.choose m := by
  let t : ℕ → ℕ → R := fun n m ↦ x ^ m * y ^ (n - m) * n.choose m
  change (x + y) ^ n = ∑ m ∈ range (n + 1), t n m
  have h_first : ∀ n, t n 0 = y ^ n := fun n ↦ by
    simp only [t, choose_zero_right, pow_zero, cast_one, mul_one, one_mul, Nat.sub_zero]
  have h_last : ∀ n, t n n.succ = 0 := fun n ↦ by
    simp only [t, choose_succ_self, cast_zero, mul_zero]
  have h_middle :
      ∀ n i : ℕ, i ∈ range n.succ → (t n.succ i.succ) = x * t n i + y * t n i.succ := by
    intro n i h_mem
    have h_le : i ≤ n := le_of_lt_succ (mem_range.mp h_mem)
    dsimp only [t]
    rw [choose_succ_succ, cast_add, mul_add]
    congr 1
    · rw [pow_succ' x, succ_sub_succ, mul_assoc, mul_assoc, mul_assoc]
    · rw [← mul_assoc y, ← mul_assoc y, (h.symm.pow_right i.succ).eq]
      by_cases h_eq : i = n
      · rw [h_eq, choose_succ_self, cast_zero, mul_zero, mul_zero]
      · rw [succ_sub (lt_of_le_of_ne h_le h_eq)]
        rw [pow_succ' y, mul_assoc, mul_assoc, mul_assoc, mul_assoc]
  induction n with
  | zero =>
    rw [pow_zero, sum_range_succ, range_zero, sum_empty, zero_add]
    dsimp only [t]
    rw [pow_zero, pow_zero, choose_self, cast_one, mul_one, mul_one]
  | succ n ih =>
    rw [sum_range_succ', h_first, sum_congr rfl (h_middle n), sum_add_distrib, add_assoc,
      pow_succ' (x + y), ih, add_mul, mul_sum, mul_sum]
    congr 1
    rw [sum_range_succ', sum_range_succ, h_first, h_last, mul_zero, add_zero, _root_.pow_succ']

/-- A version of `Commute.add_pow` that avoids ℕ-subtraction by summing over the antidiagonal and
also with the binomial coefficient applied via scalar action of ℕ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a72b18dd1389212a40252652b9d1709e75bd31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
