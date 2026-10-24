# associated_content_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e425881-a4e6-2cd0-8439-2e6e57d58316",
  "kind": "theorem",
  "lexical_name": "associated_content_mul",
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
  "slug": "associated-content-mul--04aee5d9da9fd6db674b36d9",
  "source": {
    "blob": "8cb7485b26acfec79834e9ff258359d3eb1ab6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 329,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04aee5d9da9fd6db674b36d975a6afe81256cf8d1d06d8ebbc9b2a002498b628",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e425881-a4e6-2cd0-8439-2e6e57d58316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_content_mul (p q : R[X]) :
    Associated ((p * q).content) (p.content * q.content) := by
  nontriviality R
  classical
    suffices h : ∀ (n : ℕ) (p q : R[X]),
        (p * q).degree < n → Associated ((p * q).content) (p.content * q.content) by
      apply h
      apply lt_of_le_of_lt degree_le_natDegree (WithBot.coe_lt_coe.2 (Nat.lt_succ_self _))
    intro n p q hpq
    induction n generalizing p q with
    | zero =>
      rw [Nat.cast_zero, Nat.WithBot.lt_zero_iff, degree_eq_bot, mul_eq_zero] at hpq
      rcases hpq with (rfl | rfl) <;> simp
    | succ n ih => ?_
    by_cases p0 : p = 0
    · simp [p0]
    by_cases q0 : q = 0
    · simp [q0]
    rw [degree_eq_natDegree (mul_ne_zero p0 q0), Nat.cast_lt,
      Nat.lt_succ_iff_lt_or_eq, ← Nat.cast_lt (α := WithBot ℕ),
      ← degree_eq_natDegree (mul_ne_zero p0 q0), natDegree_mul p0 q0] at hpq
    rcases hpq with (hlt | heq)
    · apply ih _ _ hlt
    rw [← p.natDegree_primPart, ← q.natDegree_primPart, ← Nat.cast_inj (R := WithBot ℕ),
      Nat.cast_add, ← degree_eq_natDegree p.primPart_ne_zero,
      ← degree_eq_natDegree q.primPart_ne_zero] at heq
    rw [p.eq_C_content_mul_primPart, q.eq_C_content_mul_primPart]
    suffices h : (q.primPart * p.primPart).content = 1 by
      grw [mul_assoc, associated_content_C_mul, associated_content_C_mul, mul_comm p.primPart,
        mul_assoc, associated_content_C_mul, associated_content_C_mul, h, mul_one,
        content_primPart, content_primPart, mul_one, mul_one]
    rw [← normalize_content, normalize_eq_one, isUnit_iff_dvd_one,
      content_eq_gcd_leadingCoeff_content_eraseLead, leadingCoeff_mul, gcd_comm]
    apply (gcd_mul_dvd_mul_gcd _ _ _).trans
    rw [content_mul_aux, (ih ..).gcd_eq_left, content_primPart, mul_one, gcd_comm, ←
      content_eq_gcd_leadingCoeff_content_eraseLead, content_primPart, one_mul,
      mul_comm q.primPart, content_mul_aux, (ih ..).gcd_eq_left, content_primPart, mul_one,
      gcd_comm, ← content_eq_gcd_leadingCoeff_content_eraseLead, content_primPart]
    · rw [← heq, degree_mul, WithBot.add_lt_add_iff_right]
      · apply degree_erase_lt p.primPart_ne_zero
      · rw [Ne, degree_eq_bot]
        apply q.primPart_ne_zero
    · rw [mul_comm, ← heq, degree_mul, WithBot.add_lt_add_iff_left]
      · apply degree_erase_lt q.primPart_ne_zero
      · rw [Ne, degree_eq_bot]
        apply p.primPart_ne_zero

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb7485b26acfec79834e9ff258359d3eb1ab6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
