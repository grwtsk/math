# affineSpan_eq_top_of_toMatrix_left_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1320ca151c05a668dda0f4813c8415ef9e5c16ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7caa7a3-000e-a348-7000-7cf599315230",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cd1fbe2-78f5-086a-7fff-e41db0631343",
  "kind": "theorem",
  "lexical_name": "affineSpan_eq_top_of_toMatrix_left_inv",
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
  "slug": "affinespan-eq-top-of-tomatrix-left-inv--8c475f63a9517481832867de",
  "source": {
    "blob": "1320ca151c05a668dda0f4813c8415ef9e5c16ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c475f63a9517481832867dea1ddbe204cbe61dd78429a5d721e76e16913ea87",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cd1fbe2-78f5-086a-7fff-e41db0631343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSpan_eq_top_of_toMatrix_left_inv [Finite ι] [Fintype ι'] [DecidableEq ι]
    [Nontrivial k] (p : ι' → P) {A : Matrix ι ι' k} (hA : A * b.toMatrix p = 1) :
    affineSpan k (range p) = ⊤ := by
  cases nonempty_fintype ι
  suffices ∀ i, b i ∈ affineSpan k (range p) by
    rw [eq_top_iff, ← b.tot, affineSpan_le]
    rintro q ⟨i, rfl⟩
    exact this i
  intro i
  have hAi : ∑ j, A i j = 1 := by
    calc
      ∑ j, A i j = ∑ j, A i j * ∑ l, b.toMatrix p j l := by simp
      _ = ∑ j, ∑ l, A i j * b.toMatrix p j l := by simp_rw [Finset.mul_sum]
      _ = ∑ l, ∑ j, A i j * b.toMatrix p j l := by rw [Finset.sum_comm]
      _ = ∑ l, (A * b.toMatrix p) i l := rfl
      _ = 1 := by simp [hA, Matrix.one_apply]
  have hbi : b i = Finset.univ.affineCombination k p (A i) := by
    apply b.ext_elem
    intro j
    rw [b.coord_apply, Finset.univ.map_affineCombination _ _ hAi,
      Finset.univ.affineCombination_eq_linear_combination _ _ hAi]
    change _ = (A * b.toMatrix p) i j
    simp_rw [hA, Matrix.one_apply, @eq_comm _ i j]
  rw [hbi]
  exact affineCombination_mem_affineSpan hAi p

variable [Fintype ι] (b₂ : AffineBasis ι k P)

/-- A change of basis formula for barycentric coordinates.

See also `AffineBasis.toMatrix_inv_vecMul_toMatrix`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant5b41845152393f43c28d919a66322cf3178ec8a9cb108796ea7ad82fdd762e56.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1320ca151c05a668dda0f4813c8415ef9e5c16ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
