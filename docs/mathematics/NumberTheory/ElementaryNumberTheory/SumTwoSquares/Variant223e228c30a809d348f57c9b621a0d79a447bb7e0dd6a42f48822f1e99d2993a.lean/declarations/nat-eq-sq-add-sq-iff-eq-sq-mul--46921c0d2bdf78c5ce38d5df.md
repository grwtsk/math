# Nat.eq_sq_add_sq_iff_eq_sq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14c24dcc-395c-5015-f011-9aaabbc0f8f4",
  "kind": "theorem",
  "lexical_name": "Nat.eq_sq_add_sq_iff_eq_sq_mul",
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
  "slug": "nat-eq-sq-add-sq-iff-eq-sq-mul--46921c0d2bdf78c5ce38d5df",
  "source": {
    "blob": "a00b526b78c60cabdec3570501b6aaf21f665caa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 192,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46921c0d2bdf78c5ce38d5df48234af2c34d7477ae9d5668ce24d3e04fdc1bee",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14c24dcc-395c-5015-f011-9aaabbc0f8f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.eq_sq_add_sq_iff_eq_sq_mul {n : ℕ} :
    (∃ x y : ℕ, n = x ^ 2 + y ^ 2) ↔ ∃ a b : ℕ, n = a ^ 2 * b ∧ IsSquare (-1 : ZMod b) := by
  constructor
  · rintro ⟨x, y, h⟩
    by_cases hxy : x = 0 ∧ y = 0
    · exact ⟨0, 1, by rw [h, hxy.1, hxy.2, zero_pow zero_lt_two, add_zero, zero_mul],
        ⟨0, by rw [zero_mul, neg_eq_zero, Fin.one_eq_zero_iff]⟩⟩
    · have hg := Nat.pos_of_ne_zero (mt Nat.gcd_eq_zero_iff.mp hxy)
      obtain ⟨g, x₁, y₁, _, h₂, h₃, h₄⟩ := Nat.exists_coprime' hg
      exact ⟨g, x₁ ^ 2 + y₁ ^ 2, by rw [h, h₃, h₄]; ring,
        ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_coprime rfl h₂⟩
  · rintro ⟨a, b, h₁, h₂⟩
    obtain ⟨x', y', h⟩ := Nat.eq_sq_add_sq_of_isSquare_mod_neg_one h₂
    exact ⟨a * x', a * y', by rw [h₁, h]; ring⟩
#align nat.eq_sq_add_sq_iff_eq_sq_mul Nat.eq_sq_add_sq_iff_eq_sq_mul

end NegOneSquare

/-!
### Characterization in terms of the prime factorization
-/


section Main

/-- A (positive) natural number `n` is a sum of two squares if and only if the exponent of
every prime `q` such that `q % 4 = 3` in the prime factorization of `n` is even.
(The assumption `0 < n` is not present, since for `n = 0`, both sides are satisfied;
the right hand side holds, since `padicValNat q 0 = 0` by definition.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00b526b78c60cabdec3570501b6aaf21f665caa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
