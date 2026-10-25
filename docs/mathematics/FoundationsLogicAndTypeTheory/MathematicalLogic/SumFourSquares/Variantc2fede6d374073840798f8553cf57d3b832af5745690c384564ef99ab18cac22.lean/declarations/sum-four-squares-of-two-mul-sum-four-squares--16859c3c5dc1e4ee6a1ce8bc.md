# sum_four_squares_of_two_mul_sum_four_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcfb3a66d7b09739275228c410ce999097002ea3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5029b918-ef9e-d6c2-134f-446ac7c68b32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26dbc994-4ed1-4fda-76eb-1542ec0ecbf8",
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
  "slug": "sum-four-squares-of-two-mul-sum-four-squares--16859c3c5dc1e4ee6a1ce8bc",
  "source": {
    "blob": "bcfb3a66d7b09739275228c410ce999097002ea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16859c3c5dc1e4ee6a1ce8bc9ef7f1aa045cdc6685853bc92f47ef9686a10218",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26dbc994-4ed1-4fda-76eb-1542ec0ecbf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–108.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SumFourSquares/Variantc2fede6d374073840798f8553cf57d3b832af5745690c384564ef99ab18cac22.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcfb3a66d7b09739275228c410ce999097002ea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
