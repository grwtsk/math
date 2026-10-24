# iterate_derivative_U_eval_one_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e51d5a2321ab17ff93507d577a4688980e17edad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1066,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3300eb7-9a61-6b72-8d6b-d2726e65a2ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07e11ee7-dbd4-cecd-ede3-505567584e98",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_U_eval_one_dvd",
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
  "slug": "iterate-derivative-u-eval-one-dvd--522406439a42363ddfe25347",
  "source": {
    "blob": "e51d5a2321ab17ff93507d577a4688980e17edad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1070,
    "line": 1066,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variantd96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:522406439a42363ddfe253470b9e9ec594fea6d70f896b7860d9f307deabd723",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Chebyshev/Variantd96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07e11ee7-dbd4-cecd-ede3-505567584e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1066–1070.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_U_eval_one_dvd (n : ℤ) (k : ℕ) :
    ((∏ l ∈ Finset.range k, (2 * l + 3) : ℕ) : 𝔽) ∣
      ((∏ l ∈ Finset.range k, ((n + 1) ^ 2 - (l + 1) ^ 2) : ℤ) * (n + 1)) :=
  dvd_of_mul_right_eq _ <| iterate_derivative_U_eval_one n k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Chebyshev/Variantd96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variantd96b7c3731abd5f2bafa577f8f31901feb94ad84037f2ec9c71513fa374d258e.lean#L1066).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51d5a2321ab17ff93507d577a4688980e17edad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
