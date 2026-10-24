# matrix_eq_sum_std_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42b50a8def79d33c1755221689992881582b94b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24e4afbd-f60a-86f8-f647-be78cfb661ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a9affc4-5bc0-4794-7e56-468ca92390bc",
  "kind": "theorem",
  "lexical_name": "matrix_eq_sum_std_basis",
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
  "slug": "matrix-eq-sum-std-basis--3218d0fabbecaf25c619ebc0",
  "source": {
    "blob": "42b50a8def79d33c1755221689992881582b94b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3218d0fabbecaf25c619ebc0ef169d3a46caa64bea7c33f6c136a0ff96c2b058",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a9affc4-5bc0-4794-7e56-468ca92390bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrix_eq_sum_std_basis [Fintype m] [Fintype n] (x : Matrix m n α) :
    x = ∑ i : m, ∑ j : n, stdBasisMatrix i j (x i j) := by
  ext i j; symm
  iterate 2 rw [Finset.sum_apply]
  -- Porting note: was `convert`
  refine (Fintype.sum_eq_single i ?_).trans ?_; swap
  · -- Porting note: `simp` seems unwilling to apply `Fintype.sum_apply`
    simp only [stdBasisMatrix]
    rw [Fintype.sum_apply, Fintype.sum_apply]
    simp
  · intro j' hj'
    -- Porting note: `simp` seems unwilling to apply `Fintype.sum_apply`
    simp only [stdBasisMatrix]
    rw [Fintype.sum_apply, Fintype.sum_apply]
    simp [hj']
#align matrix.matrix_eq_sum_std_basis Matrix.matrix_eq_sum_std_basis

-- TODO: tie this up with the `Basis` machinery of linear algebra
-- this is not completely trivial because we are indexing by two types, instead of one
-- TODO: add `std_basis_vec`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant410179d4fbba3b66125aa75b590acbf8f99bd2599bf83eb3e3deea8458e3dd04.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42b50a8def79d33c1755221689992881582b94b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
