# mod_right'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29e832b2e7e192e645e15bfaee4edd025fef522a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 468,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5db90309-2942-0864-b1c2-05f5f5d7f9b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c2ff150-9ac9-ecd8-c060-99d2eaa8b467",
  "kind": "theorem",
  "lexical_name": "mod_right'",
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
  "slug": "mod-right--a6a4c604a55d0e8283d6c28b",
  "source": {
    "blob": "29e832b2e7e192e645e15bfaee4edd025fef522a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 468,
    "path": "GRWTSK/NumberTheory/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6a4c604a55d0e8283d6c28b75bfad5732a514ca3b7dc38d1d0bd89ff21a4682",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c2ff150-9ac9-ecd8-c060-99d2eaa8b467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_right' (a : ℕ) {b : ℕ} (hb : Odd b) : J(a | b) = J(a | b % (4 * a)) := by
  rcases eq_or_ne a 0 with (rfl | ha₀)
  · rw [mul_zero, mod_zero]
  have hb' : Odd (b % (4 * a)) := hb.mod_even (Even.mul_right (by norm_num) _)
  rcases exists_eq_pow_mul_and_not_dvd ha₀ 2 (by norm_num) with ⟨e, a', ha₁', ha₂⟩
  have ha₁ := odd_iff.mpr (two_dvd_ne_zero.mp ha₁')
  nth_rw 2 [ha₂]; nth_rw 1 [ha₂]
  rw [Nat.cast_mul, mul_left, mul_left, quadratic_reciprocity' ha₁ hb,
    quadratic_reciprocity' ha₁ hb', Nat.cast_pow, pow_left, pow_left, Nat.cast_two, at_two hb,
    at_two hb']
  congr 1; swap; congr 1
  · simp_rw [qrSign]
    rw [χ₄_nat_mod_four, χ₄_nat_mod_four (b % (4 * a)), mod_mod_of_dvd b (dvd_mul_right 4 a)]
  · rw [mod_left ↑(b % _), mod_left b, Int.coe_nat_mod, Int.emod_emod_of_dvd b]
    simp only [ha₂, Nat.cast_mul, ← mul_assoc]
    exact dvd_mul_left (a' : ℤ) (↑4 * ↑(2 ^ e))
  -- porting note: In mathlib3, it was written `cases' e`. In Lean 4, this resulted in the choice
  -- of a name other than e (for the case distinction of line 482) so we indicate the name
  -- to use explicitly.
  cases' e with e; · rfl
  · rw [χ₈_nat_mod_eight, χ₈_nat_mod_eight (b % (4 * a)), mod_mod_of_dvd b]
    use 2 ^ e * a'; rw [ha₂, Nat.pow_succ]; ring
#align jacobi_sym.mod_right' jacobiSym.mod_right'

/-- The Jacobi symbol `J(a | b)` depends only on `b` mod `4*a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e832b2e7e192e645e15bfaee4edd025fef522a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
