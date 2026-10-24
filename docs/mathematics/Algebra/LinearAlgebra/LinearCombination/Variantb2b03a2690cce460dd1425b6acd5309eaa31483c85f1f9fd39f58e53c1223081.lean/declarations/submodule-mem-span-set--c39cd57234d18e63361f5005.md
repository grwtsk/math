# Submodule.mem_span_set'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31b32215a0b6e8e2773ba55e45ca9336f03db9ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ac45919-93a5-3a31-4eb1-990284f38818",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee86640c-fe9d-d593-7bb5-8ae407ea5a0f",
  "kind": "lemma",
  "lexical_name": "Submodule.mem_span_set'",
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
  "slug": "submodule-mem-span-set--c39cd57234d18e63361f5005",
  "source": {
    "blob": "31b32215a0b6e8e2773ba55e45ca9336f03db9ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 497,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantb2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c39cd57234d18e63361f50053ca46905c6a669867dcd268738ee471e3bd20fd1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearCombination/Variantb2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee86640c-fe9d-d593-7bb5-8ae407ea5a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.mem_span_set' {m : M} {s : Set M} :
    m ∈ Submodule.span R s ↔ ∃ (n : ℕ) (f : Fin n → R) (g : Fin n → s),
      ∑ i, f i • (g i : M) = m := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · rcases mem_span_set.1 h with ⟨c, cs, rfl⟩
    have A : c.support ≃ Fin c.support.card := Finset.equivFin _
    refine ⟨_, fun i ↦ c (A.symm i), fun i ↦ ⟨A.symm i, cs (A.symm i).2⟩, ?_⟩
    rw [Finsupp.sum, ← Finset.sum_coe_sort c.support]
    exact Fintype.sum_equiv A.symm _ (fun j ↦ c j • (j : M)) (fun i ↦ rfl)
  · rintro ⟨n, f, g, rfl⟩
    exact Submodule.sum_mem _ (fun i _ ↦ Submodule.smul_mem _ _ (Submodule.subset_span (g i).2))

/-- The span of a subset `s` is the union over all `n` of the set of linear combinations of at most
`n` terms belonging to `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearCombination/Variantb2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantb2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31b32215a0b6e8e2773ba55e45ca9336f03db9ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
