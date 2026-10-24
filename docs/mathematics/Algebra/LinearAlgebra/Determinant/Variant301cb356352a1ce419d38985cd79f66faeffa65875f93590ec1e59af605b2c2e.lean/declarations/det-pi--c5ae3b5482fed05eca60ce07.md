# det_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99debd313cd81ba4ac265cb7b6b52225d4b906bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:185dcebb-f105-6f9a-35a2-26c0d754251b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:780f1b9a-bf36-887b-abf9-c715411777a9",
  "kind": "theorem",
  "lexical_name": "det_pi",
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
  "slug": "det-pi--c5ae3b5482fed05eca60ce07",
  "source": {
    "blob": "99debd313cd81ba4ac265cb7b6b52225d4b906bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 348,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5ae3b5482fed05eca60ce078817dd23dc40d771681fbad63efbc95d7de415f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:780f1b9a-bf36-887b-abf9-c715411777a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_pi [Module.Free R M] [Module.Finite R M] (f : ι → M →ₗ[R] M) :
    (LinearMap.pi (fun i ↦ (f i).comp (LinearMap.proj i))).det = ∏ i, (f i).det := by
  classical
  let b := Module.Free.chooseBasis R M
  let B := (Pi.basis (fun _ : ι ↦ b)).reindex <|
    (Equiv.sigmaEquivProd _ _).trans (Equiv.prodComm _ _)
  simp_rw [← LinearMap.det_toMatrix B, ← LinearMap.det_toMatrix b]
  have : ((LinearMap.toMatrix B B) (LinearMap.pi fun i ↦ f i ∘ₗ LinearMap.proj i)) =
      Matrix.blockDiagonal (fun i ↦ LinearMap.toMatrix b b (f i)) := by
    ext ⟨i₁, i₂⟩ ⟨j₁, j₂⟩
    unfold B
    simp_rw [LinearMap.toMatrix_apply', Matrix.blockDiagonal_apply, Basis.coe_reindex,
      Function.comp_apply, Basis.repr_reindex_apply, Equiv.symm_trans_apply, Equiv.prodComm_symm,
      Equiv.prodComm_apply, Equiv.sigmaEquivProd_symm_apply, Prod.swap_prod_mk, Pi.basis_apply,
      Pi.basis_repr, LinearMap.pi_apply, LinearMap.coe_comp, Function.comp_apply,
      LinearMap.toMatrix_apply', LinearMap.coe_proj, Function.eval, Pi.single_apply]
    split_ifs with h
    · rw [h]
    · simp only [map_zero, Finsupp.coe_zero, Pi.zero_apply]
  rw [this, Matrix.det_blockDiagonal]

end LinearMap


namespace LinearEquiv

/-- On a `LinearEquiv`, the domain of `LinearMap.det` can be promoted to `Rˣ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99debd313cd81ba4ac265cb7b6b52225d4b906bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
