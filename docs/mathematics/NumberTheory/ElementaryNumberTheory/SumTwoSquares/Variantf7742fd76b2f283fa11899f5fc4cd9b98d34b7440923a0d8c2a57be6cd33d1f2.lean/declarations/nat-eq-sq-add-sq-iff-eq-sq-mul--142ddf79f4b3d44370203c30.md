# Nat.eq_sq_add_sq_iff_eq_sq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a88c53e302d526422d755e1ac3cb350e6b67047",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad0c20b0-e405-cfc7-1f0b-0fa29dd3f9ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be9e1980-b5e4-3835-42b3-b8ed6336b416",
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
  "slug": "nat-eq-sq-add-sq-iff-eq-sq-mul--142ddf79f4b3d44370203c30",
  "source": {
    "blob": "3a88c53e302d526422d755e1ac3cb350e6b67047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 174,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:142ddf79f4b3d44370203c30e7a136949ad63f9b02bc132ad085581cd40148ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be9e1980-b5e4-3835-42b3-b8ed6336b416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.eq_sq_add_sq_iff_eq_sq_mul {n : ℕ} :
    (∃ x y : ℕ, n = x ^ 2 + y ^ 2) ↔ ∃ a b : ℕ, n = a ^ 2 * b ∧ IsSquare (-1 : ZMod b) := by
  constructor
  · rintro ⟨x, y, h⟩
    by_cases hxy : x = 0 ∧ y = 0
    · exact ⟨0, 1, by rw [h, hxy.1, hxy.2, zero_pow two_ne_zero, add_zero, zero_mul],
        ⟨0, by rw [zero_mul, neg_eq_zero, Fin.one_eq_zero_iff]⟩⟩
    · have hg := Nat.pos_of_ne_zero (mt Nat.gcd_eq_zero_iff.mp hxy)
      obtain ⟨g, x₁, y₁, _, h₂, h₃, h₄⟩ := Nat.exists_coprime' hg
      exact ⟨g, x₁ ^ 2 + y₁ ^ 2, by rw [h, h₃, h₄]; ring,
        ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_coprime rfl h₂⟩
  · rintro ⟨a, b, h₁, h₂⟩
    obtain ⟨x', y', h⟩ := Nat.eq_sq_add_sq_of_isSquare_mod_neg_one h₂
    exact ⟨a * x', a * y', by rw [h₁, h]; ring⟩

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

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a88c53e302d526422d755e1ac3cb350e6b67047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
