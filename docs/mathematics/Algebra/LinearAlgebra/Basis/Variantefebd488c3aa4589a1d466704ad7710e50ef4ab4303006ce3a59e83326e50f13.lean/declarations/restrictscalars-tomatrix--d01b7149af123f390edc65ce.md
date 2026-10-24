# restrictScalars_toMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dbdbe7d-bf4e-edc4-64bd-81e930a1f062",
  "kind": "theorem",
  "lexical_name": "restrictScalars_toMatrix",
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
  "slug": "restrictscalars-tomatrix--d01b7149af123f390edc65ce",
  "source": {
    "blob": "c38e864d6fd53b999e7533a3e7edadc68f8dece7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d01b7149af123f390edc65ceeff82b81a3fd56ab770441a9bd81e173521630b0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dbdbe7d-bf4e-edc4-64bd-81e930a1f062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictScalars_toMatrix [Fintype ι] [DecidableEq ι] {S : Type*} [CommRing S] [Nontrivial S]
    [Algebra R₂ S] [Module S M₂] [IsScalarTower R₂ S M₂] [IsDomain R₂] [IsTorsionFree R₂ S]
    (b : Basis ι S M₂) (v : ι → span R₂ (Set.range b)) :
    (algebraMap R₂ S).mapMatrix ((b.restrictScalars R₂).toMatrix v) =
      b.toMatrix (fun i ↦ (v i : M₂)) := by
  ext
  rw [RingHom.mapMatrix_apply, Matrix.map_apply, Basis.toMatrix_apply,
    Basis.restrictScalars_repr_apply, Basis.toMatrix_apply]

end Module.Basis

section MulLinearMapToMatrix

variable {N : Type*} [AddCommMonoid N] [Module R N]
variable (b : Basis ι R M) (b' : Basis ι' R M) (c : Basis κ R N) (c' : Basis κ' R N)
variable (f : M →ₗ[R] N)

open LinearMap

section Fintype

/-- A generalization of `LinearMap.toMatrix_id`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c38e864d6fd53b999e7533a3e7edadc68f8dece7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
