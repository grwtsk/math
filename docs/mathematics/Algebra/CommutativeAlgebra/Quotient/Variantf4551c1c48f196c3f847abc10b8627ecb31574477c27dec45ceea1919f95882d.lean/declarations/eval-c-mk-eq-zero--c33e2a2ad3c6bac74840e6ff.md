# eval₂_C_mk_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05896661c7d7f09dd73e3cc95cce5967a4481bd3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:526a41b9-18a6-c665-874c-5178731a6e89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26a212fa-48dd-75a4-06cb-8d2cda1cadb0",
  "kind": "theorem",
  "lexical_name": "eval₂_C_mk_eq_zero",
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
  "slug": "eval-c-mk-eq-zero--c33e2a2ad3c6bac74840e6ff",
  "source": {
    "blob": "05896661c7d7f09dd73e3cc95cce5967a4481bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c33e2a2ad3c6bac74840e6ff7f479c820390f7d4fe1063ffd1ec14e06cb036ae",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a212fa-48dd-75a4-06cb-8d2cda1cadb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval₂_C_mk_eq_zero {I : Ideal R} :
    ∀ f ∈ (map (C : R →+* R[X]) I : Ideal R[X]), eval₂RingHom (C.comp (Quotient.mk I)) X f = 0 := by
  intro a ha
  rw [← sum_monomial_eq a]
  dsimp
  rw [eval₂_sum]
  refine Finset.sum_eq_zero fun n _ => ?_
  dsimp
  rw [eval₂_monomial (C.comp (Quotient.mk I)) X]
  refine mul_eq_zero_of_left (Polynomial.ext fun m => ?_) (X ^ n)
  rw [RingHom.comp_apply, coeff_C]
  by_cases h : m = 0
  · simpa [h] using Quotient.eq_zero_iff_mem.2 ((mem_map_C_iff.1 ha) n)
  · simp [h]

/-- If `I` is an ideal of `R`, then the ring polynomials over the quotient ring `I.quotient` is
isomorphic to the quotient of `R[X]` by the ideal `map C I`,
where `map C I` contains exactly the polynomials whose coefficients all lie in `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05896661c7d7f09dd73e3cc95cce5967a4481bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
