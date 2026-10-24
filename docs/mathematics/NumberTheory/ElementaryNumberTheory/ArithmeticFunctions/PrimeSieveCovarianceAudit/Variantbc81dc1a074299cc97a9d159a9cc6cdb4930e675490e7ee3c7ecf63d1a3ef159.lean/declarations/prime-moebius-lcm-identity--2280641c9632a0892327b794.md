# prime_moebius_lcm_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc92bb34-1519-96e0-4708-281179c73a6c",
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
  "slug": "prime-moebius-lcm-identity--2280641c9632a0892327b794",
  "source": {
    "blob": "61aca1334bfc365b402158bdffd59b6536733478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 26,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2280641c9632a0892327b794696e93130c3d63b09343abb0254ca0b89b5e9125",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc92bb34-1519-96e0-4708-281179c73a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–71.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceAudit/Variantbc81dc1a074299cc97a9d159a9cc6cdb4930e675490e7ee3c7ecf63d1a3ef159.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61aca1334bfc365b402158bdffd59b6536733478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
