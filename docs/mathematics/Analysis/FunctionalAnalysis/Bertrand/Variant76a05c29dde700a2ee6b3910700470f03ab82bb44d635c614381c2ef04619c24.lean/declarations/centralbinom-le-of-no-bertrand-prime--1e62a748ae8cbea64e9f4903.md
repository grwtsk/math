# centralBinom_le_of_no_bertrand_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7046550-18ea-3e2a-94d5-58be7432b168",
  "kind": "theorem",
  "lexical_name": "centralBinom_le_of_no_bertrand_prime",
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
  "slug": "centralbinom-le-of-no-bertrand-prime--1e62a748ae8cbea64e9f4903",
  "source": {
    "blob": "baeb745b11750d08d34050e9625d90f410a90b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 177,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e62a748ae8cbea64e9f490362a27c5a0a0acc813f1b7fca0cb8a760378e57f7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7046550-18ea-3e2a-94d5-58be7432b168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centralBinom_le_of_no_bertrand_prime (n : ℕ) (n_big : 2 < n)
    (no_prime : ¬∃ p : ℕ, Nat.Prime p ∧ n < p ∧ p ≤ 2 * n) :
    centralBinom n ≤ (2 * n) ^ sqrt (2 * n) * 4 ^ (2 * n / 3) := by
  have n_pos : 0 < n := (Nat.zero_le _).trans_lt n_big
  have n2_pos : 1 ≤ 2 * n := mul_pos (zero_lt_two' ℕ) n_pos
  let S := (Finset.range (2 * n / 3 + 1)).filter Nat.Prime
  let f x := x ^ n.centralBinom.factorization x
  have : ∏ x : ℕ in S, f x = ∏ x : ℕ in Finset.range (2 * n / 3 + 1), f x := by
    refine' Finset.prod_filter_of_ne fun p _ h => _
    contrapose! h; dsimp only
    rw [factorization_eq_zero_of_non_prime n.centralBinom h, _root_.pow_zero]
  rw [centralBinom_factorization_small n n_big no_prime, ← this, ←
    Finset.prod_filter_mul_prod_filter_not S (· ≤ sqrt (2 * n))]
  apply mul_le_mul'
  · refine' (Finset.prod_le_prod' fun p _ => (_ : f p ≤ 2 * n)).trans _
    · exact pow_factorization_choose_le (mul_pos two_pos n_pos)
    have : (Finset.Icc 1 (sqrt (2 * n))).card = sqrt (2 * n) := by rw [card_Icc, Nat.add_sub_cancel]
    rw [Finset.prod_const]
    refine' pow_le_pow n2_pos ((Finset.card_le_of_subset fun x hx => _).trans this.le)
    obtain ⟨h1, h2⟩ := Finset.mem_filter.1 hx
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_filter.1 h1).2.one_lt.le, h2⟩
  · refine' le_trans _ (primorial_le_4_pow (2 * n / 3))
    refine' (Finset.prod_le_prod' fun p hp => (_ : f p ≤ p)).trans _
    · obtain ⟨h1, h2⟩ := Finset.mem_filter.1 hp
      refine' (pow_le_pow (Finset.mem_filter.1 h1).2.one_lt.le _).trans (pow_one p).le
      exact Nat.factorization_choose_le_one (sqrt_lt'.mp <| not_le.1 h2)
    refine' Finset.prod_le_prod_of_subset_of_one_le' (Finset.filter_subset _ _) _
    exact fun p hp _ => (Finset.mem_filter.1 hp).2.one_lt.le
#align central_binom_le_of_no_bertrand_prime centralBinom_le_of_no_bertrand_prime

namespace Nat

/-- Proves that Bertrand's postulate holds for all sufficiently large `n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baeb745b11750d08d34050e9625d90f410a90b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
