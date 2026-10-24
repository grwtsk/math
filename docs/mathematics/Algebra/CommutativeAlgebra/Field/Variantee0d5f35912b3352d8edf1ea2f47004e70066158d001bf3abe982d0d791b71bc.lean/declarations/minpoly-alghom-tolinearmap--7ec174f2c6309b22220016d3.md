# minpoly_algHom_toLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ffb0d4b-d4ac-f603-ede7-3ffca1a23bd4",
  "kind": "lemma",
  "lexical_name": "minpoly_algHom_toLinearMap",
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
  "slug": "minpoly-alghom-tolinearmap--7ec174f2c6309b22220016d3",
  "source": {
    "blob": "e0707c831e6951196dacbd8cf8257a0a45c285e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 332,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ec174f2c6309b22220016d32807d0b7222eac87468d291103f537aaddc9e066",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ffb0d4b-d4ac-f603-ede7-3ffca1a23bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma minpoly_algHom_toLinearMap (σ : L →ₐ[K] L) (hσ : IsOfFinOrder σ) :
    minpoly K σ.toLinearMap = X ^ (orderOf σ) - C 1 := by
  have : orderOf σ = orderOf (AlgEquiv.algHomUnitsEquiv _ _ hσ.unit) := by
    rw [← MonoidHom.coe_coe, orderOf_injective, ← orderOf_units, IsOfFinOrder.val_unit]
    exact (AlgEquiv.algHomUnitsEquiv K L).injective
  rw [this, ← minpoly_algEquiv_toLinearMap]
  · apply congr_arg
    ext
    simp
  · rwa [← orderOf_pos_iff, ← this, orderOf_pos_iff]

end AlgHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0707c831e6951196dacbd8cf8257a0a45c285e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
