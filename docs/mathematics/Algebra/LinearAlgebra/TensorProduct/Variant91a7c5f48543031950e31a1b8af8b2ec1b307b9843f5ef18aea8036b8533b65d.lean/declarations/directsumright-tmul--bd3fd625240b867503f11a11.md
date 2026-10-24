# directSumRight_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8497235efa56a6d531674ea8ff1310176cabc67e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a17ba66-4d84-732c-b814-e13e22ad5d0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a66d881b-9bdc-f188-378c-e05d2b8583d0",
  "kind": "lemma",
  "lexical_name": "directSumRight_tmul",
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
  "slug": "directsumright-tmul--bd3fd625240b867503f11a11",
  "source": {
    "blob": "8497235efa56a6d531674ea8ff1310176cabc67e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 146,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd3fd625240b867503f11a11b6e22e87dfd92a3237d6a5fd80176a9793351afc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66d881b-9bdc-f188-378c-e05d2b8583d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma directSumRight_tmul (m : M₁') (n : ⨁ i, M₂ i) (i : ι₂) :
    directSumRight R S M₁' M₂ (m ⊗ₜ[R] n) i = m ⊗ₜ[R] (n i) := by
  suffices (DirectSum.component S ι₂ _ i).restrictScalars R ∘ₗ
      (directSumRight R S M₁' M₂).toLinearMap.restrictScalars R ∘ₗ
        (TensorProduct.mk R M₁' (⨁ i, M₂ i) m) =
          (TensorProduct.mk R M₁' (M₂ i) m) ∘ₗ (DirectSum.component R ι₂ M₂ i) by
    simpa using! LinearMap.congr_fun this n
  ext j n
  by_cases hj : j = i
  · subst hj; simp
  · simp [DirectSum.component.of, hj]

variable (S₀ : Type*) [CommSemiring S₀] [Algebra R S₀] [Algebra S₀ S]
  [Module S₀ M₁'] [IsScalarTower R S₀ M₁'] [IsScalarTower S₀ S M₁']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant91a7c5f48543031950e31a1b8af8b2ec1b307b9843f5ef18aea8036b8533b65d.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8497235efa56a6d531674ea8ff1310176cabc67e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
