# typeBEquivSo'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:562eeb8bb0fb988b9367d8e5298fc4585e1e2f700316ff3774afbdafb79d8f55",
  "kind": "def",
  "lexical_name": "typeBEquivSo'",
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
  "slug": "typebequivso--52eeb752e14b16b67c341104",
  "source": {
    "blob": "f6fb5099ba2d0fc18e9d770cde71f7f227afb4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 375,
    "path": "GRWTSK/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52eeb752e14b16b67c3411040e397fbcf45ca55fed2d8c20b7347c355e924611",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:562eeb8bb0fb988b9367d8e5298fc4585e1e2f700316ff3774afbdafb79d8f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typeBEquivSo' [Invertible (2 : R)] : typeB l R ≃ₗ⁅R⁆ so' (Sum Unit l) l R := by
  apply (skewAdjointMatricesLieSubalgebraEquiv (JB l R) (PB l R) (by infer_instance)).trans
  symm
  apply
    (skewAdjointMatricesLieSubalgebraEquivTranspose (indefiniteDiagonal (Sum Unit l) l R)
        (Matrix.reindexAlgEquiv _ (Equiv.sumAssoc PUnit l l)) (Matrix.transpose_reindex _ _)).trans
  apply LieEquiv.ofEq
  ext A
  rw [jb_transform, ← val_unitOfInvertible (2 : R), ← Units.smul_def, LieSubalgebra.mem_coe,
    LieSubalgebra.mem_coe, mem_skewAdjointMatricesLieSubalgebra_unit_smul]
  simp [indefiniteDiagonal_assoc, S]
#align lie_algebra.orthogonal.type_B_equiv_so' LieAlgebra.Orthogonal.typeBEquivSo'

end Orthogonal

end LieAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Classical/Varianta00b95eefdb1a8d0a77fca8cb063d007847085436bf78ccf96dd97625000b6b8.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6fb5099ba2d0fc18e9d770cde71f7f227afb4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
