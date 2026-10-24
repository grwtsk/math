# Algebra.TensorProduct.map_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae212e71cf37d916051d32dfb64acce667287ba8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 606,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07a04e38-182c-21ef-8efe-7af00e02799d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d66a672-e63a-0b9d-17c1-10253d624a6f",
  "kind": "theorem",
  "lexical_name": "Algebra.TensorProduct.map_ker",
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
  "slug": "algebra-tensorproduct-map-ker--9933aa13452e12e6cf0ff141",
  "source": {
    "blob": "ae212e71cf37d916051d32dfb64acce667287ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 606,
    "path": "GRWTSK/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9933aa13452e12e6cf0ff141bb8971ad5f1c109a1883df42add6207ae1a0bfdc",
  "verification": {
    "reference": "docs/verification/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d66a672-e63a-0b9d-17c1-10253d624a6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.TensorProduct.map_ker (hf : Function.Surjective f) (hg : Function.Surjective g) :
    RingHom.ker (map f g) =
      (RingHom.ker f).map (Algebra.TensorProduct.includeLeft : A →ₐ[R] A ⊗[R] C) ⊔
        (RingHom.ker g).map (Algebra.TensorProduct.includeRight : C →ₐ[R] A ⊗[R] C) := by
  -- rewrite map f g as the composition of two maps
  have : map f g = (map f (AlgHom.id R D)).comp (map (AlgHom.id S A) g) := ext rfl rfl
  rw [this]
  -- this needs some rewriting to RingHom
  -- TODO: can `RingHom.comap_ker` take an arbitrary `RingHomClass`, rather than just `RingHom`?
  simp only [AlgHom.ker_coe, AlgHom.comp_toRingHom]
  rw [← RingHom.comap_ker]
  simp only [← AlgHom.ker_coe]
  -- apply one step of exactness
  rw [← Algebra.TensorProduct.lTensor_ker _ hg, RingHom.ker_eq_comap_bot (map (AlgHom.id R A) g)]
  rw [← Ideal.comap_map_of_surjective (map (AlgHom.id R A) g) (LinearMap.lTensor_surjective A hg)]
  -- apply the other step of exactness
  rw [Algebra.TensorProduct.rTensor_ker _ hf]
  apply congr_arg₂ _ rfl
  simp only [AlgHom.coe_ideal_map, Ideal.map_map]
  rw [← AlgHom.comp_toRingHom, Algebra.TensorProduct.map_comp_includeLeft]
  rfl

end Algebras
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae212e71cf37d916051d32dfb64acce667287ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
