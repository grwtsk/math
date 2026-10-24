# FiniteField.isSquare_neg_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83d4a832-5a78-5ee6-76f4-e726ca765973",
  "kind": "theorem",
  "lexical_name": "FiniteField.isSquare_neg_two_iff",
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
  "slug": "finitefield-issquare-neg-two-iff--41d26136689bc26c03e09948",
  "source": {
    "blob": "af9710f9b838fd118dc2b938194e75e5ded715fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 66,
    "path": "GRWTSK/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41d26136689bc26c03e09948bf923d5d287396119c848c725d5f12c5d0d92ebb",
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

Occurrence: `result:83d4a832-5a78-5ee6-76f4-e726ca765973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteField.isSquare_neg_two_iff :
    IsSquare (-2 : F) ↔ Fintype.card F % 8 ≠ 5 ∧ Fintype.card F % 8 ≠ 7 := by
  classical
  by_cases hF : ringChar F = 2
  · have h := FiniteField.even_card_of_char_two hF
    simp only [FiniteField.isSquare_of_char_two hF, true_iff]
    omega
  · have h := FiniteField.odd_card_of_char_ne_two hF
    rw [← quadraticChar_one_iff_isSquare (neg_ne_zero.mpr (Ring.two_ne_zero hF)),
      quadraticChar_neg_two hF, χ₈'_nat_eq_if_mod_eight]
    omega

/-- The relation between the values of the quadratic character of one field `F` at the
cardinality of another field `F'` and of the quadratic character of `F'` at the cardinality
of `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variantbf687e54991569116d331131bd6ba3073a9f9746c1a8405db374923c863cc918.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af9710f9b838fd118dc2b938194e75e5ded715fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
