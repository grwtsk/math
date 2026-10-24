# S_eq_X_mul_S_add_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84b40afe9386e017fb0055c0de2fadd0fd687dbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 516,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58af4df1-d61b-04f4-0075-5605bf61c806",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ee9407e-5c67-a93c-ffba-bfc1bb7acb4c",
  "kind": "theorem",
  "lexical_name": "S_eq_X_mul_S_add_C",
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
  "slug": "s-eq-x-mul-s-add-c--f37e5b9758df31585b2a7a4e",
  "source": {
    "blob": "84b40afe9386e017fb0055c0de2fadd0fd687dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 516,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variantd9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f37e5b9758df31585b2a7a4e79e4de98edec96a613eb399f714a1c10bde9f694",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Chebyshev/Variantd9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ee9407e-5c67-a93c-ffba-bfc1bb7acb4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem S_eq_X_mul_S_add_C (n : ℤ) : 2 * S R (n + 1) = X * S R n + C R (n + 1) := by
  induction n using Polynomial.Chebyshev.induct with
  | zero => simp [two_mul]
  | one => simp [S_two, C_two]; ring
  | add_two n ih1 ih2 =>
    have h₁ := S_add_two R (n + 1)
    have h₂ := S_add_two R n
    have h₃ := C_add_two R (n + 1)
    linear_combination (norm := ring_nf) -h₃ - (X:R[X]) * h₂ + 2 * h₁ + (X:R[X]) * ih1 - ih2
  | neg_add_one n ih1 ih2 =>
    have h₁ := S_add_two R (-n - 1)
    have h₂ := S_add_two R (-n)
    have h₃ := C_add_two R (-n)
    linear_combination (norm := ring_nf) -h₃ + 2 * h₂ - (X:R[X]) * h₁ - ih2 + (X:R[X]) * ih1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Chebyshev/Variantd9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variantd9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b40afe9386e017fb0055c0de2fadd0fd687dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
