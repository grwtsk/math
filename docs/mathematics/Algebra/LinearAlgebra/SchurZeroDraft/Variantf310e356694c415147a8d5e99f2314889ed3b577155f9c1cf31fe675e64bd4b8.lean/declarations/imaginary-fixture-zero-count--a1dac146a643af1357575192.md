# imaginary_fixture_zero_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e997df2712ca975312660201fcdbf5871dfd1dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58076a45-cd2f-2e74-797e-3220e1eda91a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4236639e-0de3-33a2-6a06-fd02cf048bd4",
  "kind": "theorem",
  "lexical_name": "imaginary_fixture_zero_count",
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
  "slug": "imaginary-fixture-zero-count--a1dac146a643af1357575192",
  "source": {
    "blob": "6e997df2712ca975312660201fcdbf5871dfd1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1dac146a643af13575751925084f880634b1aee54974a7365ddf016fb2e8d45",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4236639e-0de3-33a2-6a06-fd02cf048bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imaginary_fixture_zero_count :
    Fintype.card {i //
      (full_isHermitian (1 : Matrix (Fin 1) (Fin 1) ℂ) imaginaryCoupling 1
        Matrix.isHermitian_one Matrix.isHermitian_one).eigenvalues i = 0} = 1 := by
  rw [zero_count_schur _ _ _ Matrix.isHermitian_one Matrix.isHermitian_one,
    zero_count_eq_dim_sub_rank]
  rw [imaginary_schur_zero, imaginary_reduced_diagonal]
  rw [Matrix.rank_diagonal]
  have hc : Fintype.card {i : Fin 1 ⊕ Fin 1 //
      Sum.elim (fun _ : Fin 1 => (0 : ℂ)) (fun _ : Fin 1 => (1 : ℂ)) i ≠ 0} = 1 := by
    rw [Fintype.card_congr (Equiv.subtypeSum (p := fun i : Fin 1 ⊕ Fin 1 =>
      Sum.elim (fun _ : Fin 1 => (0 : ℂ)) (fun _ : Fin 1 => (1 : ℂ)) i ≠ 0))]
    simp
  rw [hc]
  simp

#print axioms imaginary_schur_zero
#print axioms imaginary_reduced_diagonal
#print axioms imaginary_fixture_zero_count
#print axioms shear_det
#print axioms exact_congruence
#print axioms full_isHermitian
#print axioms reduced_isHermitian
#print axioms zero_count_schur
#print axioms zero_count_schur_posDef
end ContinuousResearch.SchurZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variantf310e356694c415147a8d5e99f2314889ed3b577155f9c1cf31fe675e64bd4b8.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e997df2712ca975312660201fcdbf5871dfd1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
