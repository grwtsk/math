# coeff_mul_antidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b628859-a32f-3a8a-6e77-6eaac2109a0f",
  "kind": "lemma",
  "lexical_name": "coeff_mul_antidiag",
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
  "slug": "coeff-mul-antidiag--85dd3037572727676d309a9f",
  "source": {
    "blob": "2e737d979213502792bd6d26fb6def1cf6ffe393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 533,
    "path": "GRWTSK/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85dd3037572727676d309a9f7ced30b07c2a4d8479d42f1aaeb2c3cd2e9990fc",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b628859-a32f-3a8a-6e77-6eaac2109a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_mul_antidiag (x y : R[M]) (m : M) (s : Finset (M × M))
    (hs : ∀ {p}, p ∈ s ↔ p.1 * p.2 = m) : (x * y).coeff m = ∑ p ∈ s, x.coeff p.1 * y.coeff p.2 := by
  classical
  let F (p : M × M) : R := if p.1 * p.2 = m then x.coeff p.1 * y.coeff p.2 else 0
  calc
    (x * y).coeff m = ∑ m₁ ∈ x.coeff.support, ∑ m₂ ∈ y.coeff.support, F (m₁, m₂) := coeff_mul ..
    _ = ∑ p ∈ x.coeff.support ×ˢ y.coeff.support with p.1 * p.2 = m, x.coeff p.1 * y.coeff p.2 := by
      rw [Finset.sum_filter, Finset.sum_product]
    _ = ∑ p ∈ s with p.1 ∈ x.coeff.support ∧ p.2 ∈ y.coeff.support, x.coeff p.1 * y.coeff p.2 := by
      congr! 1; ext; simp only [mem_filter, mem_product, hs, and_comm]
    _ = ∑ p ∈ s, x.coeff p.1 * y.coeff p.2 :=
      sum_subset (filter_subset _ _) fun p hps hp => by
        simp only [mem_filter, mem_support_iff, not_and, Classical.not_not] at hp ⊢
        by_cases h1 : x.coeff p.1 = 0
        · rw [h1, zero_mul]
        · rw [hp hps h1, mul_zero]

@[to_additive (attr := deprecated coeff_mul_antidiag (since := "2026-06-18")) (dont_translate := R)
  mul_apply_antidiagonal]
alias mul_apply_antidiagonal := coeff_mul_antidiag

@[to_additive (attr := simp) (dont_translate := R) single_mul_single]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e737d979213502792bd6d26fb6def1cf6ffe393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
