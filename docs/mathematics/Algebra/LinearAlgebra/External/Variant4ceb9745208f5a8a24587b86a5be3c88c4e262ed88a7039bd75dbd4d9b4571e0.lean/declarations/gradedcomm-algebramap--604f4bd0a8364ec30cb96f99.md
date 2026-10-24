# gradedComm_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59b892f70e82e6acceb4f84faf0f2939dbd6c004",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46a60bc7-f251-3b1c-c2de-5b2c7d1a6337",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53a7a9f5-5720-5988-8df3-71453d716913",
  "kind": "theorem",
  "lexical_name": "gradedComm_algebraMap",
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
  "slug": "gradedcomm-algebramap--604f4bd0a8364ec30cb96f99",
  "source": {
    "blob": "59b892f70e82e6acceb4f84faf0f2939dbd6c004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 167,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:604f4bd0a8364ec30cb96f99d3ec151bc2491db358095a0131b1820cab284c17",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53a7a9f5-5720-5988-8df3-71453d716913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedComm_algebraMap [DirectSum.GSemiring 𝒜] [DirectSum.GSemiring ℬ]
    [DirectSum.GAlgebra R 𝒜] [DirectSum.GAlgebra R ℬ] (r : R) :
    gradedComm R 𝒜 ℬ (algebraMap R _ r) = algebraMap R _ r :=
  (gradedComm_algebraMap_tmul R 𝒜 ℬ r 1).trans (Algebra.TensorProduct.algebraMap_apply' r).symm

end gradedComm

variable [DirectSum.GRing 𝒜] [DirectSum.GRing ℬ]
variable [DirectSum.GAlgebra R 𝒜] [DirectSum.GAlgebra R ℬ]

open TensorProduct (assoc map) in
/-- The multiplication operation for tensor products of externally `ι`-graded algebras. -/
noncomputable irreducible_def gradedMul :
    letI AB := DirectSum _ 𝒜 ⊗[R] DirectSum _ ℬ
    letI : Module R AB := TensorProduct.leftModule
    AB →ₗ[R] AB →ₗ[R] AB := by
  refine TensorProduct.curry ?_
  refine map (LinearMap.mul' R (⨁ i, 𝒜 i)) (LinearMap.mul' R (⨁ i, ℬ i)) ∘ₗ ?_
  refine (assoc R _ _ _).symm.toLinearMap ∘ₗ .lTensor _ ?_ ∘ₗ (assoc R _ _ _).toLinearMap
  refine (assoc R _ _ _).toLinearMap ∘ₗ .rTensor _ ?_ ∘ₗ (assoc R _ _ _).symm.toLinearMap
  exact (gradedComm _ _ _).toLinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b892f70e82e6acceb4f84faf0f2939dbd6c004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
