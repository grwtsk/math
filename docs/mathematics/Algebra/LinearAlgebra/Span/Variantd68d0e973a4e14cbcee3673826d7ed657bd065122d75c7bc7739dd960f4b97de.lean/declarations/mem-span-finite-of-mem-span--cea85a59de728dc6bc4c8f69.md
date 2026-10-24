# mem_span_finite_of_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6b4415b3be762e3b779b42c608e391ce93a9b2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 713,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa0d5e6b-eb7c-7f2e-0398-675ecc9bded1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bd16b43-00c9-2c55-61b1-aa3d66736555",
  "kind": "theorem",
  "lexical_name": "mem_span_finite_of_mem_span",
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
  "slug": "mem-span-finite-of-mem-span--cea85a59de728dc6bc4c8f69",
  "source": {
    "blob": "b6b4415b3be762e3b779b42c608e391ce93a9b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 737,
    "line": 713,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cea85a59de728dc6bc4c8f69fe40a19913c0f82cdaad73f0026c489171beb740",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bd16b43-00c9-2c55-61b1-aa3d66736555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–737.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_finite_of_mem_span {S : Set M} {x : M} (hx : x ∈ span R S) :
    ∃ T : Finset M, ↑T ⊆ S ∧ x ∈ span R (T : Set M) := by
  classical
  refine' span_induction hx (fun x hx => _) _ _ _
  · refine' ⟨{x}, _, _⟩
    · rwa [Finset.coe_singleton, Set.singleton_subset_iff]
    · rw [Finset.coe_singleton]
      exact Submodule.mem_span_singleton_self x
  · use ∅
    simp
  · rintro x y ⟨X, hX, hxX⟩ ⟨Y, hY, hyY⟩
    refine' ⟨X ∪ Y, _, _⟩
    · rw [Finset.coe_union]
      exact Set.union_subset hX hY
    rw [Finset.coe_union, span_union, mem_sup]
    exact ⟨x, hxX, y, hyY, rfl⟩
  · rintro a x ⟨T, hT, h2⟩
    exact ⟨T, hT, smul_mem _ _ h2⟩
#align submodule.mem_span_finite_of_mem_span Submodule.mem_span_finite_of_mem_span

end

variable {M' : Type*} [AddCommMonoid M'] [Module R M'] (q₁ q₁' : Submodule R M')

/-- The product of two submodules is a submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6b4415b3be762e3b779b42c608e391ce93a9b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
