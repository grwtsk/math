# lTensorHomEquivHomLTensor_toLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0761cc1d-a045-1e8a-9e53-e106b4dfec79",
  "kind": "theorem",
  "lexical_name": "lTensorHomEquivHomLTensor_toLinearMap",
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
  "slug": "ltensorhomequivhomltensor-tolinearmap--8cf4dc5303dbc318a2d11c50",
  "source": {
    "blob": "965d155bef25f4160989b036aa2e99aeef378675",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 222,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf4dc5303dbc318a2d11c50294b0764d127d2aef4ffc837b5a58d62e2cf3718",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0761cc1d-a045-1e8a-9e53-e106b4dfec79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lTensorHomEquivHomLTensor_toLinearMap :
    (lTensorHomEquivHomLTensor R M P Q).toLinearMap = lTensorHomToHomLTensor R M P Q := by
  let e := congr (LinearEquiv.refl R P) (dualTensorHomEquiv R M Q)
  have h : Function.Surjective e.toLinearMap := e.surjective
  refine (cancel_right h).1 ?_
  ext f q m
  simp only [e, lTensorHomEquivHomLTensor, dualTensorHomEquiv, LinearEquiv.comp_coe, compr₂_apply,
    mk_apply, LinearEquiv.coe_coe, LinearEquiv.trans_apply, congr_tmul, LinearEquiv.refl_apply,
    dualTensorHomEquivOfBasis_apply, dualTensorHomEquivOfBasis_symm_cancel_left, leftComm_tmul,
    dualTensorHom_apply, coe_comp, Function.comp_apply, lTensorHomToHomLTensor_apply, tmul_smul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965d155bef25f4160989b036aa2e99aeef378675` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
