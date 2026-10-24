# instCoalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36ea1a3f023859a5bee7b0d142fc265b06214ea5bcfe51d41520226d60307d58",
  "kind": "instance",
  "lexical_name": "instCoalgebra",
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
  "slug": "instcoalgebra--951adcb985be718a6c7432d7",
  "source": {
    "blob": "8f5ad04638c8c2700143e6a42993e0762412bfe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 126,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:951adcb985be718a6c7432d79a4f321a8729500ee5648fe1908876a834805c4a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36ea1a3f023859a5bee7b0d142fc265b06214ea5bcfe51d41520226d60307d58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCoalgebra : Coalgebra S (A ⊗[R] B) where
  coassoc := coassoc (R := R)
  rTensor_counit_comp_comul := by
    ext x y
    convert!
      congr((TensorProduct.lid S _).symm
        (TensorProduct.lid _ _ $(rTensor_counit_comul (R := S) x) ⊗ₜ[R]
          TensorProduct.lid _ _ $(rTensor_counit_comul (R := R) y)))
    · dsimp
      hopf_tensor_induction comul (R := S) x with x₁ x₂
      hopf_tensor_induction comul (R := R) y with y₁ y₂
      apply (TensorProduct.lid S _).injective
      dsimp
      rw [tmul_smul, smul_assoc, one_smul, smul_tmul']
    · dsimp
      simp only [one_smul]
  lTensor_counit_comp_comul := by
    ext x y
    convert!
      congr((TensorProduct.rid S _).symm
        (TensorProduct.rid _ _ $(lTensor_counit_comul (R := S) x) ⊗ₜ[R]
          TensorProduct.rid _ _ $(lTensor_counit_comul (R := R) y)))
    · dsimp
      hopf_tensor_induction comul (R := S) x with x₁ x₂
      hopf_tensor_induction comul (R := R) y with y₁ y₂
      apply (TensorProduct.rid S _).injective
      dsimp
      rw [tmul_smul, smul_assoc, one_smul, smul_tmul']
    · dsimp
      simp only [one_smul]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante0620dae207ddfe7ea117745cbd660f4c6f39aa579a2b3ead744c0a121049f9e.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f5ad04638c8c2700143e6a42993e0762412bfe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
