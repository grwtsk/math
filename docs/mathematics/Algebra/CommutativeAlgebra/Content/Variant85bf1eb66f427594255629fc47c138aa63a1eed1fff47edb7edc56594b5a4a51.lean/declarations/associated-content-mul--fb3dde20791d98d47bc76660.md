# associated_content_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b317f3e1371b32d47162d04e20a03d11533894c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:895d2b4c-460f-d446-d464-70bbe5838839",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7819a83-1345-43c5-b938-8b117b089a1f",
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
  "slug": "associated-content-mul--fb3dde20791d98d47bc76660",
  "source": {
    "blob": "8b317f3e1371b32d47162d04e20a03d11533894c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 321,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb3dde20791d98d47bc76660190977097c9be6f65845525f75b0a39512aae2e8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7819a83-1345-43c5-b938-8b117b089a1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–368.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variant85bf1eb66f427594255629fc47c138aa63a1eed1fff47edb7edc56594b5a4a51.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b317f3e1371b32d47162d04e20a03d11533894c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
