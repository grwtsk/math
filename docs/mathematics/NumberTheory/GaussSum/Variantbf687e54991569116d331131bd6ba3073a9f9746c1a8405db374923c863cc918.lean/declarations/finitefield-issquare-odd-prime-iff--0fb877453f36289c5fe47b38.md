# FiniteField.isSquare_odd_prime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b557a50-3ab5-5e66-4fa4-4d0bb410394e",
  "kind": "theorem",
  "lexical_name": "FiniteField.isSquare_odd_prime_iff",
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
  "slug": "finitefield-issquare-odd-prime-iff--0fb877453f36289c5fe47b38",
  "source": {
    "blob": "af9710f9b838fd118dc2b938194e75e5ded715fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fb877453f36289c5fe47b3830b9916442314307a378e9fc11fb9ea43b4ad8fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b557a50-3ab5-5e66-4fa4-4d0bb410394e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteField.isSquare_odd_prime_iff (hF : ringChar F ≠ 2) {p : ℕ} [Fact p.Prime]
    (hp : p ≠ 2) :
    IsSquare (p : F) ↔ quadraticChar (ZMod p) (χ₄ (Fintype.card F) * Fintype.card F) ≠ -1 := by
  classical
  by_cases hFp : ringChar F = p
  · rw [show (p : F) = 0 by rw [← hFp]; exact ringChar.Nat.cast_ringChar]
    simp only [IsSquare.zero, Ne, true_iff, map_mul]
    obtain ⟨n, _, hc⟩ := FiniteField.card F (ringChar F)
    have hchar : ringChar F = ringChar (ZMod p) := by rw [hFp]; exact (ringChar_zmod_n p).symm
    conv => enter [1, 1, 2]; rw [hc, Nat.cast_pow, map_pow, hchar, map_ringChar]
    simp only [zero_pow n.ne_zero, mul_zero, zero_eq_neg, one_ne_zero, not_false_iff]
  · rw [← Iff.not_left (@quadraticChar_neg_one_iff_not_isSquare F _ _ _ _),
      quadraticChar_odd_prime hF hp]
    exact hFp

end SpecialValues
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af9710f9b838fd118dc2b938194e75e5ded715fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
