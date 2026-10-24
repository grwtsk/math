# iterate_derivative_X_pow_eq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf660a76a393947aa69c8343243d3d817fb5941",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a45808ad-033f-e749-a026-d92c9a36518f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15154f37-3046-1730-d66f-7470996a0804",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_X_pow_eq_smul",
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
  "slug": "iterate-derivative-x-pow-eq-smul--a663cdffc9d9a4fe7c7515ad",
  "source": {
    "blob": "fbf660a76a393947aa69c8343243d3d817fb5941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 510,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a663cdffc9d9a4fe7c7515ad4f7cb158217670e50b3f4bfb1f65f8115f84fdf5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15154f37-3046-1730-d66f-7470996a0804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_X_pow_eq_smul (n : ℕ) (k : ℕ) :
    derivative^[k] (X ^ n : R[X]) = (Nat.descFactorial n k : R) • X ^ (n - k) := by
  rw [iterate_derivative_X_pow_eq_C_mul n k, smul_eq_C_mul]
set_option linter.uppercaseLean3 false in
#align polynomial.iterate_derivative_X_pow_eq_smul Polynomial.iterate_derivative_X_pow_eq_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf660a76a393947aa69c8343243d3d817fb5941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
