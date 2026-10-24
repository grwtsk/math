# exists_cartanMatrix_mul_diagaonal_posDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5613416a-2b8f-6f31-3a18-fe756212fd21",
  "kind": "lemma",
  "lexical_name": "exists_cartanMatrix_mul_diagaonal_posDef",
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
  "slug": "exists-cartanmatrix-mul-diagaonal-posdef--7459cacb66b4beca88a07f2c",
  "source": {
    "blob": "eac0bb40458667cb33d16a720fd997c79f95aefd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 202,
    "path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7459cacb66b4beca88a07f2c71c3ceabfd9c60f67dba39f881b5b847d8de9dc3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5613416a-2b8f-6f31-3a18-fe756212fd21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_cartanMatrix_mul_diagaonal_posDef [DecidableEq ι] [P.IsRootSystem] :
    ∃ d : b.support → ℤ, (∀ i, 0 < d i) ∧ (b.cartanMatrix * diagonal d).PosDef := by
  have _i : Fintype ι := Fintype.ofFinite ι
  set d : b.support → ℤ := fun i ↦ P.RootFormIn ℤ (P.rootSpanMem ℤ i) (P.rootSpanMem ℤ i) with hd
  refine ⟨d, fun i ↦ ?_, ?_⟩
  · rw [hd, ← posRootForm_eq]
    exact RootPositiveForm.zero_lt_posForm_apply_root _ _
  · rw [cartanMatrix_mul_diagonal_eq]
    refine Matrix.PosDef.smul ?_ two_pos
    have aux : (P.posRootForm ℤ).posForm.IsSymm := by
      simpa only [posRootForm_eq, LinearMap.BilinForm.isSymm_iff] using P.rootFormIn_isSymm ℤ
    rw [← LinearMap.BilinForm.posDef_toQuadraticMap_iff_matrix _ _ aux]
    simpa using P.posRootForm_rootFormIn_posDef ℤ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variantfe59cd6ab4e05ff9a582b48107eb293efc56c3dd6044ec9e277af26cca1e7701.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eac0bb40458667cb33d16a720fd997c79f95aefd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
