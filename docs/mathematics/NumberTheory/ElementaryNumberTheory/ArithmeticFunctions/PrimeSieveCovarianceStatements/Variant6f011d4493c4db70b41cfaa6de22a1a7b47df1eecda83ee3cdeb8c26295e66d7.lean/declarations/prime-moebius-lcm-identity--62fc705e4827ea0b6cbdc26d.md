# prime_moebius_lcm_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c14ce7c42c3688d218b6187f18e875c38d0631ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d27c1d6-3f5a-b212-b8bf-b4b4e9220525",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e4e0d53-3ae8-5245-ad8f-aa5da89a9f0a",
  "kind": "theorem",
  "lexical_name": "prime_moebius_lcm_identity",
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
  "slug": "prime-moebius-lcm-identity--62fc705e4827ea0b6cbdc26d",
  "source": {
    "blob": "c14ce7c42c3688d218b6187f18e875c38d0631ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 18,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62fc705e4827ea0b6cbdc26ddf43a1d08bf428cf319aabc1e5b46699bcc9f574",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e4e0d53-3ae8-5245-ad8f-aa5da89a9f0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_moebius_lcm_identity (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) =
      (∑ p ∈ P, w p ^ 2 / (p : ℝ)) + (∑ p ∈ P, w p / (p : ℝ)) ^ 2 -
        ∑ p ∈ P, (w p / (p : ℝ)) ^ 2 := by
  have he (p q : ℕ) (hp : p ∈ P) (hq : q ∈ P) :
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ) =
        (w p / (p : ℝ)) * (w q / (q : ℝ)) +
          if p = q then w p ^ 2 / (p : ℝ) - (w p / (p : ℝ)) ^ 2 else 0 := by
    rw [moebius_apply_prime (hP p hp), moebius_apply_prime (hP q hq),
      prime_lcm p q (hP p hp) (hP q hq)]
    by_cases hpq : p = q
    · subst q
      simp only [ite_true, Int.cast_neg, Int.cast_one]
      ring
    · simp only [if_neg hpq, Nat.cast_mul, Int.cast_neg, Int.cast_one]
      ring
  rw [show (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) =
      ∑ p ∈ P, ∑ q ∈ P,
        ((w p / (p : ℝ)) * (w q / (q : ℝ)) +
          if p = q then w p ^ 2 / (p : ℝ) - (w p / (p : ℝ)) ^ 2 else 0) by
    apply Finset.sum_congr rfl
    intro p hp
    apply Finset.sum_congr rfl
    intro q hq
    exact he p q hp hq]
  simp_rw [Finset.sum_add_distrib]
  have hdiag : (∑ p ∈ P, ∑ q ∈ P,
      if p = q then w p ^ 2 / (p : ℝ) - (w p / (p : ℝ)) ^ 2 else 0) =
      (∑ p ∈ P, w p ^ 2 / (p : ℝ)) - ∑ p ∈ P, (w p / (p : ℝ)) ^ 2 := by
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    simp [hp]
  rw [hdiag]
  have hprod : (∑ p ∈ P, ∑ q ∈ P, (w p / (p : ℝ)) * (w q / (q : ℝ))) =
      (∑ p ∈ P, w p / (p : ℝ)) ^ 2 := by
    simp_rw [← Finset.mul_sum]
    rw [← Finset.sum_mul]
    ring
  rw [hprod]
  ring

/-- An exact finite upper bound on the prime-supported sieve quadratic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c14ce7c42c3688d218b6187f18e875c38d0631ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
