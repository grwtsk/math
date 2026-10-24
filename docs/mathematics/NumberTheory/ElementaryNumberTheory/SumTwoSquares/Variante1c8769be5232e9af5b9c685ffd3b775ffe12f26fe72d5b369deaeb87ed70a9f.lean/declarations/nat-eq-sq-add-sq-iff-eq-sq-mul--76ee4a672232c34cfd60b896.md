# Nat.eq_sq_add_sq_iff_eq_sq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0840e85e4988f189c10963f04c95e0188ce74254",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:735f2f19-a9e3-f068-3e8a-1c78eb3be8b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:583a918a-786c-750f-eb28-b1c3023e052a",
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
  "slug": "nat-eq-sq-add-sq-iff-eq-sq-mul--76ee4a672232c34cfd60b896",
  "source": {
    "blob": "0840e85e4988f189c10963f04c95e0188ce74254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 184,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76ee4a672232c34cfd60b89672ec7f15f2ecbf79a9d9d32690cb99f2830398b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:583a918a-786c-750f-eb28-b1c3023e052a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–212.

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

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0840e85e4988f189c10963f04c95e0188ce74254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
