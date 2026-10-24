# functionField_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:241a866b-31fa-8d74-e615-5fc1b6d1d993",
  "kind": "theorem",
  "lexical_name": "functionField_iff",
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
  "slug": "functionfield-iff--ca00ce3bb38ee80756024cd4",
  "source": {
    "blob": "34e82fdd1d362400a56ab4797f1c759a84038993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 70,
    "path": "GRWTSK/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca00ce3bb38ee80756024cd4b811aa704ac600f83ef18b67e256dce5353347bc",
  "verification": {
    "reference": "docs/verification/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:241a866b-31fa-8d74-e615-5fc1b6d1d993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem functionField_iff (Fqt : Type*) [Field Fqt] [Algebra Fq[X] Fqt]
    [IsFractionRing Fq[X] Fqt] [Algebra (RatFunc Fq) F] [Algebra Fqt F] [Algebra Fq[X] F]
    [IsScalarTower Fq[X] Fqt F] [IsScalarTower Fq[X] (RatFunc Fq) F] :
    FunctionField Fq F ↔ FiniteDimensional Fqt F := by
  let e := IsLocalization.algEquiv Fq[X]⁰ (RatFunc Fq) Fqt
  have : ∀ (c) (x : F), e c • x = c • x := by
    intro c x
    rw [Algebra.smul_def, Algebra.smul_def]
    congr
    refine' congr_fun (f := fun c => algebraMap Fqt F (e c)) _ c -- Porting note: Added `(f := _)`
    refine' IsLocalization.ext (nonZeroDivisors Fq[X]) _ _ _ _ _ _ _ <;> intros <;>
      simp only [AlgEquiv.map_one, RingHom.map_one, AlgEquiv.map_mul, RingHom.map_mul,
        AlgEquiv.commutes, ← IsScalarTower.algebraMap_apply]
  constructor <;> intro h
  · let b := FiniteDimensional.finBasis (RatFunc Fq) F
    exact FiniteDimensional.of_fintype_basis (b.mapCoeffs e this)
  · let b := FiniteDimensional.finBasis Fqt F
    refine' FiniteDimensional.of_fintype_basis (b.mapCoeffs e.symm _)
    intro c x; convert (this (e.symm c) x).symm; simp only [e.apply_symm_apply]
#align function_field_iff functionField_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e82fdd1d362400a56ab4797f1c759a84038993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
