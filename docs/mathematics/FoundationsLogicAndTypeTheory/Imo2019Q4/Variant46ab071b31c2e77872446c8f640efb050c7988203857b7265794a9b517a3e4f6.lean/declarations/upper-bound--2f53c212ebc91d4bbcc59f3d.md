# upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59e60f21-ff0f-5c82-4f6e-e08de10a96c6",
  "kind": "theorem",
  "lexical_name": "upper_bound",
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
  "slug": "upper-bound--2f53c212ebc91d4bbcc59f3d",
  "source": {
    "blob": "ed66df3072d7d96dc2a1524ebe7f1ad690dda2d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo2019Q4/Variant46ab071b31c2e77872446c8f640efb050c7988203857b7265794a9b517a3e4f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f53c212ebc91d4bbcc59f3d6457082e2ddadfddefe4e01458b8d75c05faf824",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo2019Q4/Variant46ab071b31c2e77872446c8f640efb050c7988203857b7265794a9b517a3e4f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59e60f21-ff0f-5c82-4f6e-e08de10a96c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_bound {k n : ℕ} (hk : k > 0)
    (h : (k ! : ℤ) = ∏ i ∈ range n, ((2 : ℤ) ^ n - (2 : ℤ) ^ i)) : n < 6 := by
  have h2 : ∑ i ∈ range n, i < k := by
    suffices emultiplicity 2 (k ! : ℤ) = ↑(∑ i ∈ range n, i : ℕ) by
      rw [← Nat.cast_lt (α := ℕ∞), ← this]; change emultiplicity ((2 : ℕ) : ℤ) _ < _
      simp_rw [Int.natCast_emultiplicity, emultiplicity_two_factorial_lt hk.lt.ne.symm]
    rw [h, Finset.emultiplicity_prod Int.prime_two, Nat.cast_sum]
    apply sum_congr rfl; intro i hi
    rw [emultiplicity_sub_of_gt, emultiplicity_pow_self_of_prime Int.prime_two]
    rwa [emultiplicity_pow_self_of_prime Int.prime_two,
      emultiplicity_pow_self_of_prime Int.prime_two, Nat.cast_lt, ← mem_range]
  rw [← not_le]; intro hn
  apply _root_.ne_of_gt _ h
  calc ∏ i ∈ range n, ((2:ℤ) ^ n - (2:ℤ) ^ i) ≤ ∏ __ ∈ range n, (2:ℤ) ^ n := ?_
    _ < ↑ k ! := ?_
  · gcongr
    · intro i hi
      simp only [mem_range] at hi
      have : (2:ℤ) ^ i ≤ (2:ℤ) ^ n := by gcongr; norm_num
      linarith
    · apply sub_le_self
      positivity
  norm_cast
  calc ∏ __ ∈ range n, 2 ^ n = 2 ^ (n * n) := by rw [prod_const, card_range, ← pow_mul]
    _ < (∑ i ∈ range n, i)! := ?_
    _ ≤ k ! := by gcongr
  clear h h2
  induction' n, hn using Nat.le_induction with n' hn' IH
  · decide
  let A := ∑ i ∈ range n', i
  have le_sum : ∑ i ∈ range 6, i ≤ A := by
    apply sum_le_sum_of_subset
    simpa using hn'
  calc 2 ^ ((n' + 1) * (n' + 1))
      ≤ 2 ^ (n' * n' + 4 * n') := by gcongr <;> linarith
    _ = 2 ^ (n' * n') * (2 ^ 4) ^ n' := by rw [← pow_mul, ← pow_add]
    _ < A ! * (2 ^ 4) ^ n' := by gcongr
    _ = A ! * (15 + 1) ^ n' := rfl
    _ ≤ A ! * (A + 1) ^ n' := by gcongr; exact le_sum
    _ ≤ (A + n')! := factorial_mul_pow_le_factorial
    _ = (∑ i ∈ range (n' + 1), i)! := by rw [sum_range_succ]

end Imo2019Q4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo2019Q4/Variant46ab071b31c2e77872446c8f640efb050c7988203857b7265794a9b517a3e4f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo2019Q4/Variant46ab071b31c2e77872446c8f640efb050c7988203857b7265794a9b517a3e4f6.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed66df3072d7d96dc2a1524ebe7f1ad690dda2d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
