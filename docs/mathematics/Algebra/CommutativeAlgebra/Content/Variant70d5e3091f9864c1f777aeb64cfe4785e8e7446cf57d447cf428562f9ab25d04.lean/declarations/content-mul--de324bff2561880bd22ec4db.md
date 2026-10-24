# content_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0764c9f-3f31-a0fc-f397-8b1b8f4d9ee0",
  "kind": "theorem",
  "lexical_name": "content_mul",
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
  "slug": "content-mul--de324bff2561880bd22ec4db",
  "source": {
    "blob": "69359f8cb32856f27864d0d70177d22b20b6daf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 366,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de324bff2561880bd22ec4db42b5a7b72c5d5352f2a51a00807eecb69ccc18a6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0764c9f-3f31-a0fc-f397-8b1b8f4d9ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem content_mul {p q : R[X]} : (p * q).content = p.content * q.content := by
  classical
    suffices h :
      ∀ (n : ℕ) (p q : R[X]), (p * q).degree < n → (p * q).content = p.content * q.content
    · apply h
      apply lt_of_le_of_lt degree_le_natDegree (WithBot.coe_lt_coe.2 (Nat.lt_succ_self _))
    intro n
    induction' n with n ih
    · intro p q hpq
      dsimp at hpq
      rw [Nat.cast_withBot, WithBot.coe_zero,
        Nat.WithBot.lt_zero_iff, degree_eq_bot, mul_eq_zero] at hpq
      rcases hpq with (rfl | rfl) <;> simp
    intro p q hpq
    by_cases p0 : p = 0
    · simp [p0]
    by_cases q0 : q = 0
    · simp [q0]
    rw [degree_eq_natDegree (mul_ne_zero p0 q0), Nat.cast_withBot,
      Nat.cast_withBot, WithBot.coe_lt_coe, Nat.lt_succ_iff_lt_or_eq, ←
      WithBot.coe_lt_coe, ←Nat.cast_withBot, ← degree_eq_natDegree (mul_ne_zero p0 q0),
      natDegree_mul p0 q0] at hpq
    rcases hpq with (hlt | heq)
    · apply ih _ _ hlt
    rw [← p.natDegree_primPart, ← q.natDegree_primPart, ← WithBot.coe_eq_coe,
      WithBot.coe_add, ← Nat.cast_withBot, ←degree_eq_natDegree p.primPart_ne_zero,
      ← Nat.cast_withBot, ← degree_eq_natDegree q.primPart_ne_zero] at heq
    rw [p.eq_C_content_mul_primPart, q.eq_C_content_mul_primPart]
    suffices h : (q.primPart * p.primPart).content = 1
    · rw [mul_assoc, content_C_mul, content_C_mul, mul_comm p.primPart, mul_assoc, content_C_mul,
        content_C_mul, h, mul_one, content_primPart, content_primPart, mul_one, mul_one]
    rw [← normalize_content, normalize_eq_one, isUnit_iff_dvd_one,
      content_eq_gcd_leadingCoeff_content_eraseLead, leadingCoeff_mul, gcd_comm]
    apply (gcd_mul_dvd_mul_gcd _ _ _).trans
    rw [content_mul_aux, ih, content_primPart, mul_one, gcd_comm, ←
      content_eq_gcd_leadingCoeff_content_eraseLead, content_primPart, one_mul,
      mul_comm q.primPart, content_mul_aux, ih, content_primPart, mul_one, gcd_comm, ←
      content_eq_gcd_leadingCoeff_content_eraseLead, content_primPart]
    · rw [Nat.cast_withBot, ← heq, degree_mul, WithBot.add_lt_add_iff_right]
      · apply degree_erase_lt p.primPart_ne_zero
      · rw [Ne.def, degree_eq_bot]
        apply q.primPart_ne_zero
    · rw [mul_comm, Nat.cast_withBot, ← heq, degree_mul, WithBot.add_lt_add_iff_left]
      · apply degree_erase_lt q.primPart_ne_zero
      · rw [Ne.def, degree_eq_bot]
        apply p.primPart_ne_zero
#align polynomial.content_mul Polynomial.content_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69359f8cb32856f27864d0d70177d22b20b6daf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
