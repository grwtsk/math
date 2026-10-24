# endVecAlgEquivMatrixEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7624bf0c4f308a0596a76dd3754e68b2dc7d5214beb537d8a499fd948b0ceefd",
  "kind": "def",
  "lexical_name": "endVecAlgEquivMatrixEnd",
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
  "slug": "endvecalgequivmatrixend--42897075e446ff395430711e",
  "source": {
    "blob": "f34c0630f913e221d1aa2781e637e2f5e4616fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1041,
    "line": 1030,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42897075e446ff395430711ebf08d2d954451401d60206b95bed2508a6ef62e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7624bf0c4f308a0596a76dd3754e68b2dc7d5214beb537d8a499fd948b0ceefd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1030–1041.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endVecAlgEquivMatrixEnd :
    Module.End A (ι → M) ≃ₐ[R] Matrix ι ι (Module.End A M) where
  __ := endVecRingEquivMatrixEnd ι A M
  commutes' r := by
    ext
    simp only [endVecRingEquivMatrixEnd, RingEquiv.toEquiv_eq_coe, Module.algebraMap_end_eq_smul_id,
      Equiv.toFun_as_coe, EquivLike.coe_coe, RingEquiv.coe_mk, Equiv.coe_fn_mk,
      LinearMap.smul_apply, id_coe, id_eq, Pi.smul_apply, Pi.single_apply, smul_ite, smul_zero,
      LinearMap.coe_mk, AddHom.coe_mk, algebraMap_matrix_apply]
    split_ifs <;> rfl

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean#L1030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34c0630f913e221d1aa2781e637e2f5e4616fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
