# wittPolynomial_eq_sum_C_mul_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f71011e1b8fe0b6d6daea881fdd2b091b0cea3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd941cf8-fb0f-4227-a373-2894a214d8c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31404b21-5b6a-21f0-d72f-50be6a4cb5ce",
  "kind": "theorem",
  "lexical_name": "wittPolynomial_eq_sum_C_mul_X_pow",
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
  "slug": "wittpolynomial-eq-sum-c-mul-x-pow--df9527e902e8ea75f3b77be3",
  "source": {
    "blob": "5f71011e1b8fe0b6d6daea881fdd2b091b0cea3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 83,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df9527e902e8ea75f3b77be35b17480be63cb5e1703e06c410428f391e41e902",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31404b21-5b6a-21f0-d72f-50be6a4cb5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittPolynomial_eq_sum_C_mul_X_pow (n : ℕ) :
    wittPolynomial p R n = ∑ i ∈ range (n + 1), C ((p : R) ^ i) * X i ^ p ^ (n - i) := by
  apply sum_congr rfl
  rintro i -
  rw [monomial_eq, Finsupp.prod_single_index]
  rw [pow_zero]

/-! We set up notation locally to this file, to keep statements short and comprehensible.
This allows us to simply write `W n` or `W_ ℤ n`. -/


-- Notation with ring of coefficients explicit
set_option quotPrecheck false in
@[inherit_doc]
scoped[Witt] notation "W_" => wittPolynomial p

-- Notation with ring of coefficients implicit
set_option quotPrecheck false in
@[inherit_doc]
scoped[Witt] notation "W" => wittPolynomial p _

open scoped Witt

/-! The first observation is that the Witt polynomial doesn't really depend on the coefficient ring.
If we map the coefficients through a ring homomorphism, we obtain the corresponding Witt polynomial
over the target ring. -/
section

variable {R} {S : Type*} [CommRing S]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f71011e1b8fe0b6d6daea881fdd2b091b0cea3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
