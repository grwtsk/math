# det_kroneckerMapBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cfbbd38bef87748a48b8d2982fed3c6cf31ca39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f48fc1a-6ec8-554b-ca23-622642f9b8f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:384ebe4b-b0c0-9860-8563-c97357c5b91f",
  "kind": "theorem",
  "lexical_name": "det_kroneckerMapBilinear",
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
  "slug": "det-kroneckermapbilinear--6f5a419f20d6e71d98d1101d",
  "source": {
    "blob": "4cfbbd38bef87748a48b8d2982fed3c6cf31ca39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f5a419f20d6e71d98d1101de1e12cc281fbb45803660056937f3026b219d073",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:384ebe4b-b0c0-9860-8563-c97357c5b91f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_kroneckerMapBilinear [CommSemiring R] [Fintype m] [Fintype n] [DecidableEq m]
    [DecidableEq n] [NonAssocSemiring α] [NonAssocSemiring β] [CommRing γ] [Module R α] [Module R β]
    [Module R γ]
    (f : α →ₗ[R] β →ₗ[R] γ) (h_comm : ∀ a b a' b', f (a * b) (a' * b') = f a a' * f b b')
    (A : Matrix m m α) (B : Matrix n n β) :
    det (kroneckerMapBilinear f A B) =
      det (A.map fun a => f a 1) ^ Fintype.card n * det (B.map fun b => f 1 b) ^ Fintype.card m :=
  calc
    det (kroneckerMapBilinear f A B) =
        det (kroneckerMapBilinear f A 1 * kroneckerMapBilinear f 1 B) := by
      rw [← kroneckerMapBilinear_mul_mul f h_comm, Matrix.mul_one, Matrix.one_mul]
    _ = det (blockDiagonal fun (_ : n) => A.map fun a => f a 1) *
        det (blockDiagonal fun (_ : m) => B.map fun b => f 1 b) := by
      rw [det_mul, ← diagonal_one, ← diagonal_one, kroneckerMapBilinear_apply_apply,
        kroneckerMap_diagonal_right _ fun _ => _, kroneckerMapBilinear_apply_apply,
        kroneckerMap_diagonal_left _ fun _ => _, det_reindex_self]
      · intro; exact LinearMap.map_zero₂ _ _
      · intro; exact map_zero _
    _ = _ := by simp_rw [det_blockDiagonal, Finset.prod_const, Finset.card_univ]

end KroneckerMap

/-! ### Specialization to `Matrix.kroneckerMap (*)` -/


section Kronecker

open Matrix

/-- The Kronecker product. This is just a shorthand for `kroneckerMap (*)`. Prefer the notation
`⊗ₖ` rather than this definition. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cfbbd38bef87748a48b8d2982fed3c6cf31ca39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
