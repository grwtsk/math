# eq_zero_or_eq_zero_of_mul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72bbf065-0923-6393-c094-ad756e2795e2",
  "kind": "theorem",
  "lexical_name": "eq_zero_or_eq_zero_of_mul_eq_zero",
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
  "slug": "eq-zero-or-eq-zero-of-mul-eq-zero--bd87495734e49f856c512db3",
  "source": {
    "blob": "cc9e8950383f77099dc47506ee3e2bf488984424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd87495734e49f856c512db3b28afc63c009b9eb08c3602170c25b0f725be34f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72bbf065-0923-6393-c094-ad756e2795e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem eq_zero_or_eq_zero_of_mul_eq_zero {a b : ℤ} (h : a * b = 0) : a = 0 ∨ b = 0 :=
  match lt_trichotomy 0 a with
  | Or.inl hlt₁ =>
    match lt_trichotomy 0 b with
    | Or.inl hlt₂ => by
      have : 0 < a * b := Int.mul_pos hlt₁ hlt₂
      rw [h] at this
      exact absurd this (lt_irrefl _)
    | Or.inr (Or.inl heq₂) => Or.inr heq₂.symm
    | Or.inr (Or.inr hgt₂) => by
      have : 0 > a * b := Int.mul_neg_of_pos_of_neg hlt₁ hgt₂
      rw [h] at this
      exact absurd this (lt_irrefl _)
  | Or.inr (Or.inl heq₁) => Or.inl heq₁.symm
  | Or.inr (Or.inr hgt₁) =>
    match lt_trichotomy 0 b with
    | Or.inl hlt₂ => by
      have : 0 > a * b := Int.mul_neg_of_neg_of_pos hgt₁ hlt₂
      rw [h] at this
      exact absurd this (lt_irrefl _)
    | Or.inr (Or.inl heq₂) => Or.inr heq₂.symm
    | Or.inr (Or.inr hgt₂) => by
      have : 0 < a * b := Int.mul_pos_of_neg_of_neg hgt₁ hgt₂
      rw [h] at this
      exact absurd this (lt_irrefl _)
#align int.eq_zero_or_eq_zero_of_mul_eq_zero Int.eq_zero_or_eq_zero_of_mul_eq_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9e8950383f77099dc47506ee3e2bf488984424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
