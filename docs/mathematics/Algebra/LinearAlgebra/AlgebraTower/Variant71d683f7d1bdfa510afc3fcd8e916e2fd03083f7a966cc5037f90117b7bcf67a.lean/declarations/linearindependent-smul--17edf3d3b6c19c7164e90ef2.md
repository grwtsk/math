# linearIndependent_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2402c90b7efb9ebcbf607eba67187fc1ac039d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:847edeba-2c6d-4333-4cf7-c62e0402d3ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a99af5be-e2fa-8760-b3c1-4d529f93ae9e",
  "kind": "theorem",
  "lexical_name": "linearIndependent_smul",
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
  "slug": "linearindependent-smul--17edf3d3b6c19c7164e90ef2",
  "source": {
    "blob": "e2402c90b7efb9ebcbf607eba67187fc1ac039d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17edf3d3b6c19c7164e90ef24c8f77a1839d2cfb86713d416dad9a56b3aef210",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a99af5be-e2fa-8760-b3c1-4d529f93ae9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_smul {ι : Type v₁} {b : ι → S} {ι' : Type w₁} {c : ι' → A}
    (hb : LinearIndependent R b) (hc : LinearIndependent S c) :
    LinearIndependent R fun p : ι × ι' => b p.1 • c p.2 := by
  rw [linearIndependent_iff'] at hb hc; rw [linearIndependent_iff'']; rintro s g hg hsg ⟨i, k⟩
  by_cases hik : (i, k) ∈ s
  · have h1 : ∑ i in s.image Prod.fst ×ˢ s.image Prod.snd, g i • b i.1 • c i.2 = 0 := by
      rw [← hsg]
      exact
        (Finset.sum_subset Finset.subset_product fun p _ hp =>
            show g p • b p.1 • c p.2 = 0 by rw [hg p hp, zero_smul]).symm
    rw [Finset.sum_product_right] at h1
    simp_rw [← smul_assoc, ← Finset.sum_smul] at h1
    exact hb _ _ (hc _ _ h1 k (Finset.mem_image_of_mem _ hik)) i (Finset.mem_image_of_mem _ hik)
  exact hg _ hik
#align linear_independent_smul linearIndependent_smul

/-- `Basis.SMul (b : Basis ι R S) (c : Basis ι S A)` is the `R`-basis on `A`
where the `(i, j)`th basis vector is `b i • c j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2402c90b7efb9ebcbf607eba67187fc1ac039d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
