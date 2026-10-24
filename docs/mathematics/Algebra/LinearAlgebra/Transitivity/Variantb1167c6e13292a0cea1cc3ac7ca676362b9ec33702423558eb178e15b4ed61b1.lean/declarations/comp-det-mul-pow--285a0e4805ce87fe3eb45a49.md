# comp_det_mul_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0575dfb6-4f1a-7c81-50a3-a7f7191ab9e2",
  "kind": "theorem",
  "lexical_name": "comp_det_mul_pow",
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
  "slug": "comp-det-mul-pow--285a0e4805ce87fe3eb45a49",
  "source": {
    "blob": "42d663dda904b3e3a6d1ce15b2bfb6aeaf238716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:285a0e4805ce87fe3eb45a49bb2e9202f7158a5952b8ac35904e94bb9caa383c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0575dfb6-4f1a-7c81-50a3-a7f7191ab9e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_det_mul_pow :
    ((M.map f).comp m m n n R).det * (f (M k k)).det ^ (Fintype.card m - 1) =
      (f (M k k)).det * (((mulAuxMatBlock).map f).comp _ _ n n R).det := by
  trans (((M * auxMat M k).map f).comp m m n n R).det
  · simp_rw [← f.mapMatrix_apply, ← compRingEquiv_apply, map_mul, det_mul, f.mapMatrix_apply,
      compRingEquiv_apply, ((auxMat_blockTriangular M k).map f).comp.det_fintype, Fintype.prod_Prop,
      comp_toSquareBlock (b := (· ≠ k)), det_reindex_self, map_toSquareBlock,
      auxMat_toSquareBlock_eq, auxMat_toSquareBlock_ne, smul_one_eq_diagonal, ← diagonal_one,
      diagonal_map (map_zero _), comp_diagonal, det_reindex_self]
    simp
  · simp_rw [((mul_auxMat_blockTriangular M k).map f).comp.det_fintype, Fintype.prod_Prop,
      comp_toSquareBlock (b := (· = k)), det_reindex_self, map_toSquareBlock,
      mul_auxMat_toSquareBlock_eq, smul_one_eq_diagonal,
      diagonal_map (map_zero _), comp_diagonal, det_reindex_self]
    simp

variable {M f} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42d663dda904b3e3a6d1ce15b2bfb6aeaf238716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
