# mem_range_map_iff_coeffs_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a48909a0-05ce-bcaa-8430-5e6c9d7e9cef",
  "kind": "lemma",
  "lexical_name": "mem_range_map_iff_coeffs_subset",
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
  "slug": "mem-range-map-iff-coeffs-subset--73d91edeb6625780af5964f9",
  "source": {
    "blob": "e3415bd1944628128bec1d8d3f86e52132e60427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 514,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant4be1d19cce04d3996fde58ecd72fc92cdcb88b229663d19c919556d0ad11c72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73d91edeb6625780af5964f91f9cf9c0735c59839aed4fa6ca8360208b3eecc7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant4be1d19cce04d3996fde58ecd72fc92cdcb88b229663d19c919556d0ad11c72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a48909a0-05ce-bcaa-8430-5e6c9d7e9cef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_range_map_iff_coeffs_subset {f : R →+* S₁} {x : MvPolynomial σ S₁} :
    x ∈ Set.range (MvPolynomial.map f) ↔ (x.coeffs : Set _) ⊆ .range f := by
  classical
  refine ⟨fun hx ↦ ?_, fun hx ↦ ?_⟩
  · obtain ⟨p, rfl⟩ := hx
    exact subset_trans (coe_coeffs_map f p) (by simp)
  · induction x using induction_on'' with
    | C a =>
      by_cases h : a = 0
      · subst h
        exact ⟨0, by simp⟩
      · simp only [coeffs_C, h, reduceIte, Finset.coe_singleton, Set.singleton_subset_iff] at hx
        obtain ⟨b, rfl⟩ := hx
        exact ⟨C b, by simp⟩
    | mul_X p n ih =>
      rw [coeffs_mul_X] at hx
      obtain ⟨q, rfl⟩ := ih hx
      exact ⟨q * X n, by simp⟩
    | monomial_add a s p ha hs hp ih =>
      rw [coeffs_add (disjoint_support_monomial ha hs)] at hx
      simp only [Finset.coe_union, Set.union_subset_iff] at hx
      obtain ⟨q, hq⟩ := ih hx.1
      obtain ⟨u, hu⟩ := hp hx.2
      exact ⟨q + u, by simp [hq, hu]⟩

/-- If `f : S₁ →ₐ[R] S₂` is a morphism of `R`-algebras, then so is `MvPolynomial.map f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant4be1d19cce04d3996fde58ecd72fc92cdcb88b229663d19c919556d0ad11c72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant4be1d19cce04d3996fde58ecd72fc92cdcb88b229663d19c919556d0ad11c72b.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3415bd1944628128bec1d8d3f86e52132e60427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
