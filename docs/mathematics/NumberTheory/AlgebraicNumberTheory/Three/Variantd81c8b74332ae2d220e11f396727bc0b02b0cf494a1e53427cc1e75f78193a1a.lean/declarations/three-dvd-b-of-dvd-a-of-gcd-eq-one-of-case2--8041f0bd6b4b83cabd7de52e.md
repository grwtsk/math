# three_dvd_b_of_dvd_a_of_gcd_eq_one_of_case2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eba943f-0867-337f-e3d5-d4e720c6d046",
  "kind": "lemma",
  "lexical_name": "three_dvd_b_of_dvd_a_of_gcd_eq_one_of_case2",
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
  "slug": "three-dvd-b-of-dvd-a-of-gcd-eq-one-of-case2--8041f0bd6b4b83cabd7de52e",
  "source": {
    "blob": "86eac8ca69a001fbbafadc15da5546a575c62124",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variantd81c8b74332ae2d220e11f396727bc0b02b0cf494a1e53427cc1e75f78193a1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8041f0bd6b4b83cabd7de52e789fd505773a6402d482aa09b4f84950b878e505",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Three/Variantd81c8b74332ae2d220e11f396727bc0b02b0cf494a1e53427cc1e75f78193a1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eba943f-0867-337f-e3d5-d4e720c6d046`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma three_dvd_b_of_dvd_a_of_gcd_eq_one_of_case2 {a b c : ℤ} (ha : a ≠ 0)
    (Hgcd : Finset.gcd {a, b, c} id = 1) (h3a : 3 ∣ a) (HF : a ^ 3 + b ^ 3 + c ^ 3 = 0)
    (H : ∀ a b c : ℤ, c ≠ 0 → ¬ 3 ∣ a → ¬ 3 ∣ b  → 3 ∣ c → IsCoprime a b → a ^ 3 + b ^ 3 ≠ c ^ 3) :
    3 ∣ b := by
  have hbc : IsCoprime (-b) (-c) := by
    refine IsCoprime.neg_neg ?_
    rw [add_comm (a ^ 3), add_assoc, add_comm (a ^ 3), ← add_assoc] at HF
    refine isCoprime_of_gcd_eq_one_of_FLT ?_ HF
    convert Hgcd using 2
    rw [Finset.pair_comm, Finset.insert_comm]
  by_contra! h3b
  by_cases h3c : 3 ∣ c
  · apply h3b
    rw [add_assoc, add_comm (b ^ 3), ← add_assoc] at HF
    exact dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT Int.prime_three h3a h3c HF
  · refine H (-b) (-c) a ha (by simp [h3b]) (by simp [h3c]) h3a hbc ?_
    rw [add_eq_zero_iff_eq_neg, ← (show Odd 3 by decide).neg_pow] at HF
    rw [← HF]
    ring

open Finset in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Three/Variantd81c8b74332ae2d220e11f396727bc0b02b0cf494a1e53427cc1e75f78193a1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variantd81c8b74332ae2d220e11f396727bc0b02b0cf494a1e53427cc1e75f78193a1a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86eac8ca69a001fbbafadc15da5546a575c62124` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
