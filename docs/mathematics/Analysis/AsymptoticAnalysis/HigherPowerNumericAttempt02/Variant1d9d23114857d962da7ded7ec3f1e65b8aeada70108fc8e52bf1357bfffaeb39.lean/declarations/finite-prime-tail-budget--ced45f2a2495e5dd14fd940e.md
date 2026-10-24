# finite_prime_tail_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:beffb7dd-97ba-200a-126f-d6ad1a055bab",
  "kind": "theorem",
  "lexical_name": "finite_prime_tail_budget",
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
  "slug": "finite-prime-tail-budget--ced45f2a2495e5dd14fd940e",
  "source": {
    "blob": "80bc9570760691e8c72c19b6b555daa05fa8ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 128,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ced45f2a2495e5dd14fd940e6c148b34960294dc1772dd219118fda9bc868204",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beffb7dd-97ba-200a-126f-d6ad1a055bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_prime_tail_budget (P : Finset ℕ) (hP : ∀ p∈P,p.Prime) (N : ℕ) :
    (∑ p∈P,Real.log p*∑ k∈Icc 3 N,((p:ℝ)^(-(1:ℝ)/2))^k) ≤ (51/5:ℝ) := by
  let f : ℕ → ℝ := fun p=>Real.log p*∑ k∈Icc 3 N,((p:ℝ)^(-(1:ℝ)/2))^k
  have hlarge : (∑ p∈P.erase 2,f p) ≤ (12/5:ℝ)*(27/7) := by
    have hge : ∀ p∈P.erase 2,3≤p := by
      intro p hp
      have hh := mem_erase.mp hp
      have := (hP p hh.2).two_le
      omega
    calc
      _ ≤ ∑ p∈P.erase 2,(12/5:ℝ)*logPower p := by
        apply sum_le_sum
        intro p hp
        exact large_prime_tail (hge p hp) N
      _ = (12/5:ℝ)*(∑ p∈P.erase 2,logPower p) := by rw [mul_sum]
      _ ≤ _ := mul_le_mul_of_nonneg_left (finite_log_tail_le _ hge) (by norm_num)
  by_cases h2 : 2∈P
  · have hh := sum_erase_add P f h2
    change (∑ p∈P,f p)≤_
    rw [← hh]
    have ht : f 2≤(7/8:ℝ) := two_prime_tail N
    linarith
  · rw [erase_eq_of_notMem h2] at hlarge
    exact hlarge.trans (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt02/Variant1d9d23114857d962da7ded7ec3f1e65b8aeada70108fc8e52bf1357bfffaeb39.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80bc9570760691e8c72c19b6b555daa05fa8ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
