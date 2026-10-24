# toLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9b5a181745df7fb858e5fa7b5dbfb98e71e67d536b1a59f1e8a94cac3d8254b",
  "kind": "def",
  "lexical_name": "toLinearEquiv",
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
  "slug": "tolinearequiv--c8d21477ee785389ab9da7a2",
  "source": {
    "blob": "20dd747150cda5fd394ed662f8a92714a2c10b7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8d21477ee785389ab9da7a2b532c4c1a4c7044121fc21fe865b15b93b871ca1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9b5a181745df7fb858e5fa7b5dbfb98e71e67d536b1a59f1e8a94cac3d8254b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toLinearEquiv [DecidableEq n] (A : Matrix n n R) (hA : IsUnit A.det) :
    M ≃ₗ[R] M where
  __ := toLin b b A
  toFun := toLin b b A
  invFun := toLin b b A⁻¹
  left_inv x := by
    simp_rw [← LinearMap.comp_apply, ← Matrix.toLin_mul b b b, Matrix.nonsing_inv_mul _ hA,
      toLin_one, LinearMap.id_apply]
  right_inv x := by
    simp_rw [← LinearMap.comp_apply, ← Matrix.toLin_mul b b b, Matrix.mul_nonsing_inv _ hA,
      toLin_one, LinearMap.id_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variant9be615ae0d0d028a6df10e6421f68ebc4c443ea3d0b00a19c4efd4b935b6c4dc.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20dd747150cda5fd394ed662f8a92714a2c10b7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
