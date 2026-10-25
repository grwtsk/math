# sum_four_squares_of_two_mul_sum_four_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffd53e37-4f0a-4448-fb02-46baca49d2b1",
  "kind": "theorem",
  "lexical_name": "sum_four_squares_of_two_mul_sum_four_squares",
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
  "slug": "sum-four-squares-of-two-mul-sum-four-squares--6b739ef6e11b46e743bfb537",
  "source": {
    "blob": "57d963e10ba2381dd5c37eb4cd0cf1a0baa5237b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b739ef6e11b46e743bfb537347916f894f15694fd7b9da500de1b83d2ac92e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd53e37-4f0a-4448-fb02-46baca49d2b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_four_squares_of_two_mul_sum_four_squares {m a b c d : ℤ}
    (h : a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = 2 * m) :
    ∃ w x y z : ℤ, w ^ 2 + x ^ 2 + y ^ 2 + z ^ 2 = m := by
  have : ∀ f : Fin 4 → ZMod 2, f 0 ^ 2 + f 1 ^ 2 + f 2 ^ 2 + f 3 ^ 2 = 0 → ∃ i : Fin 4,
      f i ^ 2 + f (swap i 0 1) ^ 2 = 0 ∧ f (swap i 0 2) ^ 2 + f (swap i 0 3) ^ 2 = 0 := by
    decide
  set f : Fin 4 → ℤ := ![a, b, c, d]
  obtain ⟨i, hσ⟩ := this (fun x => ↑(f x)) <| by
    rw [← @zero_mul (ZMod 2) _ m, ← show ((2 : ℤ) : ZMod 2) = 0 from rfl, ← Int.cast_mul, ← h]
    simp only [Int.cast_add, Int.cast_pow]
    rfl
  set σ := swap i 0
  obtain ⟨x, hx⟩ : (2 : ℤ) ∣ f (σ 0) ^ 2 + f (σ 1) ^ 2 :=
    (CharP.intCast_eq_zero_iff (ZMod 2) 2 _).1 <| by
      simpa only [σ, Int.cast_pow, Int.cast_add, Equiv.swap_apply_right, ZMod.pow_card] using hσ.1
  obtain ⟨y, hy⟩ : (2 : ℤ) ∣ f (σ 2) ^ 2 + f (σ 3) ^ 2 :=
    (CharP.intCast_eq_zero_iff (ZMod 2) 2 _).1 <| by
      simpa only [Int.cast_pow, Int.cast_add, ZMod.pow_card] using hσ.2
  refine ⟨(f (σ 0) - f (σ 1)) / 2, (f (σ 0) + f (σ 1)) / 2, (f (σ 2) - f (σ 3)) / 2,
    (f (σ 2) + f (σ 3)) / 2, ?_⟩
  rw [← Int.sq_add_sq_of_two_mul_sq_add_sq hx.symm, add_assoc,
    ← Int.sq_add_sq_of_two_mul_sq_add_sq hy.symm, ← mul_right_inj' two_ne_zero, ← h, mul_add]
  have : (∑ x, f (σ x) ^ 2) = ∑ x, f x ^ 2 := Equiv.sum_comp σ (f · ^ 2)
  simpa only [← hx, ← hy, Fin.sum_univ_four, add_assoc] using this

/-- Lagrange's **four squares theorem** for a prime number. Use `Nat.sum_four_squares` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variant4322ba7fbac7ad02c07def2cdb0b818a7f610ef1810753540900f045b358052d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d963e10ba2381dd5c37eb4cd0cf1a0baa5237b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
