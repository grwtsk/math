# baseChange_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8622b1321fb2eb0fc803f2a90666823bca7ca69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 571,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b3b7d1b543e88f5d93134ebb66a6ee20edd952a6ceebbd07a1bafa0651b8d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b091880-b659-c8aa-2f86-a73cdbff6263",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8704d6d-b130-ffbb-c7b1-f538e7815de0",
  "kind": "lemma",
  "lexical_name": "baseChange_span",
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
  "slug": "basechange-span--6bdd69d769ac28f4a2ab8054",
  "source": {
    "blob": "d8622b1321fb2eb0fc803f2a90666823bca7ca69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 571,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant45b3b7d1b543e88f5d93134ebb66a6ee20edd952a6ceebbd07a1bafa0651b8d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bdd69d769ac28f4a2ab80547476e2d926650294245e2b7293f92f3174e79420",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variant45b3b7d1b543e88f5d93134ebb66a6ee20edd952a6ceebbd07a1bafa0651b8d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8704d6d-b130-ffbb-c7b1-f538e7815de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_span (s : Set M) :
    (span R s).baseChange A = span A (TensorProduct.mk R A M 1 '' s) := by
  simp only [baseChange, map_coe]
  refine le_antisymm (span_le.mpr ?_) (span_mono <| Set.image_subset _ subset_span)
  rintro - ⟨m : M, hm : m ∈ span R s, rfl⟩
  apply span_induction (p := fun m' _ ↦ (1 : A) ⊗ₜ[R] m' ∈ span A (TensorProduct.mk R A M 1 '' s))
    (hx := hm)
  · intro m hm
    exact subset_span ⟨m, hm, rfl⟩
  · simp
  · intro m₁ m₂ _ _ hm₁ hm₂
    rw [tmul_add]
    exact Submodule.add_mem _ hm₁ hm₂
  · intro r m' _ hm'
    rw [tmul_smul, ← one_smul A ((1 : A) ⊗ₜ[R] m'), ← smul_assoc]
    exact smul_mem _ (r • 1) hm'

end Submodule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variant45b3b7d1b543e88f5d93134ebb66a6ee20edd952a6ceebbd07a1bafa0651b8d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variant45b3b7d1b543e88f5d93134ebb66a6ee20edd952a6ceebbd07a1bafa0651b8d7.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8622b1321fb2eb0fc803f2a90666823bca7ca69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
