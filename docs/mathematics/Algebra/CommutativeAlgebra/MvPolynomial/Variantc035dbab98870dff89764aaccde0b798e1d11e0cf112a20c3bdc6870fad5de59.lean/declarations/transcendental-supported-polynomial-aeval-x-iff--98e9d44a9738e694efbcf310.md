# transcendental_supported_polynomial_aeval_X_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01ffaff8-6767-ca8c-57c7-c8b69e5dba23",
  "kind": "theorem",
  "lexical_name": "transcendental_supported_polynomial_aeval_X_iff",
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
  "slug": "transcendental-supported-polynomial-aeval-x-iff--98e9d44a9738e694efbcf310",
  "source": {
    "blob": "55807e4f80b20b29e3e907e2354d2a3df3c34293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 83,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e9d44a9738e694efbcf31050723a3f57e5442a70c3d3a4e2a95b107fa00451",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01ffaff8-6767-ca8c-57c7-c8b69e5dba23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transcendental_supported_polynomial_aeval_X_iff
    [Nontrivial R] {i : σ} {s : Set σ} {f : R[X]} :
    Transcendental (supported R s) (Polynomial.aeval (X i : MvPolynomial σ R) f) ↔
    i ∉ s ∧ Transcendental R f := by
  refine ⟨fun h ↦ ⟨?_, ?_⟩, fun ⟨h, hf⟩ ↦ transcendental_supported_polynomial_aeval_X R h hf⟩
  · rw [Transcendental] at h
    contrapose! h
    refine isAlgebraic_algebraMap (⟨Polynomial.aeval (X i) f, ?_⟩ : supported R s)
    exact Algebra.adjoin_mono (Set.singleton_subset_iff.2 (Set.mem_image_of_mem _ h))
      (Polynomial.aeval_mem_adjoin_singleton _ _)
  · rw [← transcendental_polynomial_aeval_X_iff R i]
    refine h.restrictScalars fun _ _ heq ↦ MvPolynomial.C_injective σ R ?_
    simp_rw [← MvPolynomial.algebraMap_eq]
    exact congr($(heq).1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantc035dbab98870dff89764aaccde0b798e1d11e0cf112a20c3bdc6870fad5de59.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55807e4f80b20b29e3e907e2354d2a3df3c34293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
