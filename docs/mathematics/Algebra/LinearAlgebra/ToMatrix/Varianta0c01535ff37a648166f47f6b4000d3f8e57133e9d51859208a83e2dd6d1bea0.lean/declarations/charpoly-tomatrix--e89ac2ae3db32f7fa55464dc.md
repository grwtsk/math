# charpoly_toMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0314d43-4e7a-ceef-d276-9bddbf3cbbc1",
  "kind": "theorem",
  "lexical_name": "charpoly_toMatrix",
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
  "slug": "charpoly-tomatrix--e89ac2ae3db32f7fa55464dc",
  "source": {
    "blob": "c3bff81f13176e462041dff5e8d012efe996cb65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToMatrix/Varianta0c01535ff37a648166f47f6b4000d3f8e57133e9d51859208a83e2dd6d1bea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e89ac2ae3db32f7fa55464dca825214f7e2a567375a992b67f3f7962763a3ea5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToMatrix/Varianta0c01535ff37a648166f47f6b4000d3f8e57133e9d51859208a83e2dd6d1bea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0314d43-4e7a-ceef-d276-9bddbf3cbbc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem charpoly_toMatrix {ι : Type w} [DecidableEq ι] [Fintype ι] (b : Basis ι R M) :
    (toMatrix b b f).charpoly = f.charpoly := by
  let A := toMatrix b b f
  let b' := chooseBasis R M
  let ι' := ChooseBasisIndex R M
  let A' := toMatrix b' b' f
  let e := Basis.indexEquiv b b'
  let φ := reindexLinearEquiv R R e e
  let φ₁ := reindexLinearEquiv R R e (Equiv.refl ι')
  let φ₂ := reindexLinearEquiv R R (Equiv.refl ι') (Equiv.refl ι')
  let φ₃ := reindexLinearEquiv R R (Equiv.refl ι') e
  let P := b.toMatrix b'
  let Q := b'.toMatrix b
  have hPQ : C.mapMatrix (φ₁ P) * C.mapMatrix (φ₃ Q) = 1 := by
    rw [RingHom.mapMatrix_apply, RingHom.mapMatrix_apply, ← Matrix.map_mul,
      reindexLinearEquiv_mul R R, Basis.toMatrix_mul_toMatrix_flip,
      reindexLinearEquiv_one, ← RingHom.mapMatrix_apply, RingHom.map_one]
  calc
    A.charpoly = (reindex e e A).charpoly := (charpoly_reindex _ _).symm
    _ = det (scalar ι' X - C.mapMatrix (φ A)) := rfl
    _ = det (scalar ι' X - C.mapMatrix (φ (P * A' * Q))) := by
      rw [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix]
    _ = det (scalar ι' X - C.mapMatrix (φ₁ P * φ₂ A' * φ₃ Q)) := by
      rw [reindexLinearEquiv_mul, reindexLinearEquiv_mul]
    _ = det (scalar ι' X - C.mapMatrix (φ₁ P) * C.mapMatrix A' * C.mapMatrix (φ₃ Q)) := by simp
    _ = det (scalar ι' X * C.mapMatrix (φ₁ P) * C.mapMatrix (φ₃ Q) -
          C.mapMatrix (φ₁ P) * C.mapMatrix A' * C.mapMatrix (φ₃ Q)) := by
      rw [Matrix.mul_assoc ((scalar ι') X), hPQ, Matrix.mul_one]
    _ = det (C.mapMatrix (φ₁ P) * scalar ι' X * C.mapMatrix (φ₃ Q) -
          C.mapMatrix (φ₁ P) * C.mapMatrix A' * C.mapMatrix (φ₃ Q)) := by simp
    _ = det (C.mapMatrix (φ₁ P) * (scalar ι' X - C.mapMatrix A') * C.mapMatrix (φ₃ Q)) := by
      rw [← Matrix.sub_mul, ← Matrix.mul_sub]
    _ = det (C.mapMatrix (φ₁ P)) * det (scalar ι' X - C.mapMatrix A') * det (C.mapMatrix (φ₃ Q)) :=
      by rw [det_mul, det_mul]
    _ = det (C.mapMatrix (φ₁ P)) * det (C.mapMatrix (φ₃ Q)) * det (scalar ι' X - C.mapMatrix A') :=
      by ring
    _ = det (scalar ι' X - C.mapMatrix A') := by
      rw [← det_mul, hPQ, det_one, one_mul]
    _ = f.charpoly := rfl
#align linear_map.charpoly_to_matrix LinearMap.charpoly_toMatrix

end Basic

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToMatrix/Varianta0c01535ff37a648166f47f6b4000d3f8e57133e9d51859208a83e2dd6d1bea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToMatrix/Varianta0c01535ff37a648166f47f6b4000d3f8e57133e9d51859208a83e2dd6d1bea0.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3bff81f13176e462041dff5e8d012efe996cb65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
