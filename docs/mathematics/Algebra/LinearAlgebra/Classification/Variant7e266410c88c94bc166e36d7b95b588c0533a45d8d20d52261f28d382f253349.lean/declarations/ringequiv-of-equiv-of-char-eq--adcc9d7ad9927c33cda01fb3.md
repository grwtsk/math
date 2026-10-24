# ringEquiv_of_equiv_of_char_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4106f1faa6e3a506efcdbbfb47cce44ddb3307d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88e525b7-976b-93c9-b47d-4273e55dadcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86b8ffab-2ce1-8249-6c0a-530f12ab394a",
  "kind": "theorem",
  "lexical_name": "ringEquiv_of_equiv_of_char_eq",
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
  "slug": "ringequiv-of-equiv-of-char-eq--adcc9d7ad9927c33cda01fb3",
  "source": {
    "blob": "e4106f1faa6e3a506efcdbbfb47cce44ddb3307d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adcc9d7ad9927c33cda01fb35002bc1612690c1dd88214a91a05e541fe3e1ee7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86b8ffab-2ce1-8249-6c0a-530f12ab394a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringEquiv_of_equiv_of_char_eq (p : ℕ) [CharP K p] [CharP L p] (hK : ℵ₀ < #K)
    (hKL : Nonempty (K ≃ L)) : Nonempty (K ≃+* L) := by
  rcases CharP.char_is_prime_or_zero K p with (hp | hp)
  · haveI : Fact p.Prime := ⟨hp⟩
    exact ringEquiv_of_Cardinal_eq_of_charP p hK hKL
  · simp only [hp] at *
    letI : CharZero K := CharP.charP_to_charZero K
    letI : CharZero L := CharP.charP_to_charZero L
    exact ringEquiv_of_equiv_of_charZero hK hKL

end IsAlgClosed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4106f1faa6e3a506efcdbbfb47cce44ddb3307d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
