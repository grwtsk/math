# prime_moebius_lcm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb84a9bf-b8ab-4c67-c85b-620e7c11c83e",
  "kind": "theorem",
  "lexical_name": "prime_moebius_lcm_le",
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
  "slug": "prime-moebius-lcm-le--877e99eee02d9e9cc9c551d6",
  "source": {
    "blob": "deeea52ef9e4047039945e49e32eef544d90d35a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 72,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:877e99eee02d9e9cc9c551d64ca5c95d44b3ec95c76a2fa2a27f0207503e04af",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb84a9bf-b8ab-4c67-c85b-620e7c11c83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_moebius_lcm_le (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) (N W : ℝ) (hN : 0 < N) (hW : 0 ≤ W)
    (hNp : ∀ p ∈ P, N ≤ (p : ℝ)) (hw : ∀ p ∈ P, 0 ≤ w p ∧ w p ≤ W) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) ≤
      W ^ 2 * ((P.card : ℝ) / N + ((P.card : ℝ) / N) ^ 2) := by
  rw [prime_moebius_lcm_identity P hP w]
  have h1 : (∑ p ∈ P, w p / (p : ℝ)) ≤ W * ((P.card : ℝ) / N) := by
    calc
      _ ≤ ∑ _p ∈ P, W / N := by
        apply Finset.sum_le_sum
        intro p hp
        have hp0 : 0 < (p : ℝ) := lt_of_lt_of_le hN (hNp p hp)
        exact (div_le_div_of_nonneg_right (hw p hp).2 hp0.le).trans
          (div_le_div_of_nonneg_left hW hN (hNp p hp))
      _ = _ := by simp; ring
  have h10 : 0 ≤ ∑ p ∈ P, w p / (p : ℝ) := by
    apply Finset.sum_nonneg
    intro p hp
    exact div_nonneg (hw p hp).1 (le_trans hN.le (hNp p hp))
  have h2 : (∑ p ∈ P, w p ^ 2 / (p : ℝ)) ≤ W ^ 2 * ((P.card : ℝ) / N) := by
    calc
      _ ≤ ∑ _p ∈ P, W ^ 2 / N := by
        apply Finset.sum_le_sum
        intro p hp
        have hp0 : 0 < (p : ℝ) := lt_of_lt_of_le hN (hNp p hp)
        have hs : w p ^ 2 ≤ W ^ 2 := by nlinarith [(hw p hp).1, (hw p hp).2]
        exact (div_le_div_of_nonneg_right hs hp0.le).trans
          (div_le_div_of_nonneg_left (sq_nonneg W) hN (hNp p hp))
      _ = _ := by simp; ring
  have h3 : 0 ≤ ∑ p ∈ P, (w p / (p : ℝ)) ^ 2 := by positivity
  have hs : (∑ p ∈ P, w p / (p : ℝ)) ^ 2 ≤
      (W * ((P.card : ℝ) / N)) ^ 2 := by nlinarith
  nlinarith

/-- When the prime block has at most N entries, the sieve upper bound is linear in its size. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variant9d968587376f4e97f32f9679b210872571bf2da11e32cc31213e24bc0fb3918e.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deeea52ef9e4047039945e49e32eef544d90d35a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
