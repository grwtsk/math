# mutationMatrix_mulVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfc30f916371ab9ca9bd483b46f8c357e017517e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:824681b6-f28e-3bd1-5bb0-07d2cfc12881",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3c87046-313d-6219-2037-ed334804ccd8",
  "kind": "theorem",
  "lexical_name": "mutationMatrix_mulVec",
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
  "slug": "mutationmatrix-mulvec--1e6940862850b7af463c03f6",
  "source": {
    "blob": "cfc30f916371ab9ca9bd483b46f8c357e017517e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 11,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6940862850b7af463c03f6f591dcd31bcd5284448c4f8d339083efcdc57218",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3c87046-313d-6219-2037-ed334804ccd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutationMatrix_mulVec {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (i : Fin n) (x : Population n) : (mutationMatrix A i).mulVec x = mutate A i x := by
  funext j
  by_cases h : j = i
  · subst j
    simp only [mutationMatrix, Matrix.mulVec, Matrix.updateRow_self, mutate]
    change (∑ k, (if k = i then -1 else A i k) * x k) =
      -x i + ∑ k ∈ Finset.univ.erase i, A i k * x k
    rw [← Finset.sum_erase_add _ _ (Finset.mem_univ i)]
    have hs : (∑ k ∈ Finset.univ.erase i, (if k = i then -1 else A i k) * x k) =
        ∑ k ∈ Finset.univ.erase i, A i k * x k := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [if_neg (Finset.mem_erase.mp hk).1]
    rw [hs]
    simp
    ring
  · simp [mutationMatrix, Matrix.updateRow_apply, h, mutate, Matrix.mulVec,
      dotProduct, Matrix.one_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixCalculus/Variant03390fe44736ec77b51513744b42096e5ebe4f8d1b3e1e1f32682b03505f5243.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc30f916371ab9ca9bd483b46f8c357e017517e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
