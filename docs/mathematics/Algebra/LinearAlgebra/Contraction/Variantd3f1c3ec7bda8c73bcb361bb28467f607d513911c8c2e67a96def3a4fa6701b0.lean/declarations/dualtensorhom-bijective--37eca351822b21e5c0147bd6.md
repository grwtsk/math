# dualTensorHom_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e972fc1-c2c8-d8f8-cab4-a327e476bc32",
  "kind": "lemma",
  "lexical_name": "dualTensorHom_bijective",
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
  "slug": "dualtensorhom-bijective--37eca351822b21e5c0147bd6",
  "source": {
    "blob": "db5a82030de808236dbf310af5c2ed4a0f46c4bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 277,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variantd3f1c3ec7bda8c73bcb361bb28467f607d513911c8c2e67a96def3a4fa6701b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37eca351822b21e5c0147bd6dc2fa456084aea0b872285dc1767b52f5ee8bae5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variantd3f1c3ec7bda8c73bcb361bb28467f607d513911c8c2e67a96def3a4fa6701b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e972fc1-c2c8-d8f8-cab4-a327e476bc32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dualTensorHom_bijective : Function.Bijective (dualTensorHom R M N) := by
  obtain ⟨n, f, g, -, -, eq⟩ := Finite.exists_comp_eq_id_of_projective R M
  refine ⟨.of_comp (f := f.lcomp R N) ?_, .of_comp (g := g.dualMap.rTensor N) ?_⟩
  · rw [← coe_comp, ← dualTensorHom_comp_rTensor_dualMap, coe_comp,
      ← coe_dualTensorHomEquivOfBasis (Pi.basisFun ..)]
    refine (EquivLike.injective _).comp (injective_of_comp_eq_id _ (rTensor _ g.dualMap) ?_)
    simp [← rTensor_comp, dualMap_comp_dualMap g f, eq]
  · rw [← coe_comp, dualTensorHom_comp_rTensor_dualMap, coe_comp,
      ← coe_dualTensorHomEquivOfBasis (Pi.basisFun ..)]
    refine (surjective_of_comp_eq_id (f.lcomp R N) _ ?_).comp (EquivLike.surjective _)
    ext φ x
    exact congr(φ ($eq x))

variable (R M N) in
/-- If `M` is finite projective, the natural map $M^* ⊗ N → Hom(M, N)$ is an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variantd3f1c3ec7bda8c73bcb361bb28467f607d513911c8c2e67a96def3a4fa6701b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variantd3f1c3ec7bda8c73bcb361bb28467f607d513911c8c2e67a96def3a4fa6701b0.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db5a82030de808236dbf310af5c2ed4a0f46c4bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
