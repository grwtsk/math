# exists_infinite_pseudoprimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7ab78ff65ee83ba68b27eec272f829a971f7316",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58c67996-ff05-6fcc-5c87-7ee8af75d091",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9afe0d35-4968-74b1-2dfa-0880fcfbf6ed",
  "kind": "theorem",
  "lexical_name": "exists_infinite_pseudoprimes",
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
  "slug": "exists-infinite-pseudoprimes--2574eeaa80d334580c7c436a",
  "source": {
    "blob": "d7ab78ff65ee83ba68b27eec272f829a971f7316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 310,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2574eeaa80d334580c7c436a94bb36842c3ab3ea823eaa99c9d3320b399f1dcd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9afe0d35-4968-74b1-2dfa-0880fcfbf6ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_infinite_pseudoprimes {b : ℕ} (h : 1 ≤ b) (m : ℕ) :
    ∃ n : ℕ, FermatPsp n b ∧ m ≤ n := by
  by_cases b_ge_two : 2 ≤ b
  -- If `2 ≤ b`, then because there exist infinite prime numbers, there is a prime number p with
  -- `m ≤ p` and `¬p ∣ b*(b^2 - 1)`. We pick a prime number `b*(b^2 - 1) + 1 + m ≤ p` because we
  -- automatically know that `p` is greater than m and that it does not divide `b*(b^2 - 1)`
  -- (because `p` can't divide a number less than `p`).
  -- From `p`, we can use the lemmas we proved earlier to show that
  -- `((b^p - 1)/(b - 1)) * ((b^p + 1)/(b + 1))` is a pseudoprime to base `b`.
  · have h := Nat.exists_infinite_primes (b * (b ^ 2 - 1) + 1 + m)
    obtain ⟨p, ⟨hp₁, hp₂⟩⟩ := h
    have h₁ : 0 < b := pos_of_gt (Nat.succ_le_iff.mp b_ge_two)
    have h₂ : 4 ≤ b ^ 2 := pow_le_pow_left' b_ge_two 2
    have h₃ : 0 < b ^ 2 - 1 := tsub_pos_of_lt (lt_of_lt_of_le (by simp) h₂)
    have h₄ : 0 < b * (b ^ 2 - 1) := mul_pos h₁ h₃
    have h₅ : b * (b ^ 2 - 1) < p := by lia
    have h₆ : ¬p ∣ b * (b ^ 2 - 1) := Nat.not_dvd_of_pos_of_lt h₄ h₅
    have h₇ : b ≤ b * (b ^ 2 - 1) := Nat.le_mul_of_pos_right _ h₃
    have h₈ : 2 ≤ b * (b ^ 2 - 1) := le_trans b_ge_two h₇
    have h₉ : 2 < p := lt_of_le_of_lt h₈ h₅
    have h₁₀ := psp_from_prime_gt_p b_ge_two h₉
    use psp_from_prime b p
    constructor
    · exact psp_from_prime_psp b_ge_two hp₂ h₉ h₆
    · exact le_trans (show m ≤ p by lia) (le_of_lt h₁₀)
  -- If `¬2 ≤ b`, then `b = 1`. Since all composite numbers are pseudoprimes to base 1, we can pick
  -- any composite number greater than m. We choose `2 * (m + 2)` because it is greater than `m` and
  -- is composite for all natural numbers `m`.
  · have h₁ : b = 1 := by lia
    rw [h₁]
    use 2 * (m + 2)
    have : ¬Nat.Prime (2 * (m + 2)) := Nat.not_prime_mul (by lia) (by lia)
    exact ⟨fermatPsp_base_one (by lia) this, by lia⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ab78ff65ee83ba68b27eec272f829a971f7316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
