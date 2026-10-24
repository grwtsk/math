# _root_.GRWTSK.Algebra.LinearAlgebra.MatrixVecMulBilin.Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.LinearMap.restrictScalars_toMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:997f2e5d-3361-4a47-319d-02cf16bd3fac",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.MatrixVecMulBilin.Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.LinearMap.restrictScalars_toMatrix",
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
  "slug": "root-grwtsk-algebra-linearalgebra-matrixvecmulbilin-variant9aefbf5b4504a--c7b9da02871174f08929e987",
  "source": {
    "blob": "909c5ecabc3fe926ea1529c2918cab4ae1347a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1022,
    "line": 1008,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7b9da02871174f08929e987a24ffb70801013e4af6f3e3c82b68f4ffb7d25e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:997f2e5d-3361-4a47-319d-02cf16bd3fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1008–1022.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.MatrixVecMulBilin.Variant9aefbf5b4504a069dd6ad05d5a1c8e5a0d7ba9ca5ff9317f360b25cee806b1cd.LinearMap.restrictScalars_toMatrix (f : M →ₗ[A] M) :
    (f.restrictScalars R).toMatrix (bA.smulTower' bM) (bA.smulTower' bM) =
      ((f.toMatrix bM bM).map (leftMulMatrix bA)).comp _ _ _ _ _ := by
  ext; simp [toMatrix, Algebra.leftMulMatrix_apply,
    Basis.smulTower'_repr, Basis.smulTower'_apply, mul_comm]

end Lmul

section LmulTower

variable {R S T : Type*} [CommSemiring R] [CommSemiring S] [Semiring T]
variable [Algebra R S] [Algebra S T] [Algebra R T] [IsScalarTower R S T]
variable {m n : Type*} [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
variable (b : Basis m R S) (c : Basis n S T)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean#L1008).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `909c5ecabc3fe926ea1529c2918cab4ae1347a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
