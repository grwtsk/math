# wittPolynomial_vars_subset

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
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16f88181-2630-c8d4-f058-6af571b0dd48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1e3943a-5df9-db3a-79b2-4f6f778689dd",
  "kind": "theorem",
  "lexical_name": "wittPolynomial_vars_subset",
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
  "slug": "wittpolynomial-vars-subset--dc42330e0efb3a3b10a3aec9",
  "source": {
    "blob": "5f71011e1b8fe0b6d6daea881fdd2b091b0cea3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 174,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc42330e0efb3a3b10a3aec981442b144575abd881ce3fb6b1588feb82a658a5",
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

Occurrence: `result:e1e3943a-5df9-db3a-79b2-4f6f778689dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittPolynomial_vars_subset (n : ℕ) : (wittPolynomial p R n).vars ⊆ range (n + 1) := by
  rw [← map_wittPolynomial p (Int.castRingHom R), ← wittPolynomial_vars p ℤ]
  apply vars_map

end PPrime

end

/-!

## Witt polynomials as a basis of the polynomial algebra

If `p` is invertible in `R`, then the Witt polynomials form a basis
of the polynomial algebra `MvPolynomial ℕ R`.
The polynomials `xInTermsOfW` give the coordinate transformation in the backwards direction.
-/


/-- The `xInTermsOfW p R n` is the polynomial on the basis of Witt polynomials
that corresponds to the ordinary `X n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb421d19666973da01aedc78dc486ec250d4454b7a0efdcef2ece9382ea66b94e.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f71011e1b8fe0b6d6daea881fdd2b091b0cea3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
