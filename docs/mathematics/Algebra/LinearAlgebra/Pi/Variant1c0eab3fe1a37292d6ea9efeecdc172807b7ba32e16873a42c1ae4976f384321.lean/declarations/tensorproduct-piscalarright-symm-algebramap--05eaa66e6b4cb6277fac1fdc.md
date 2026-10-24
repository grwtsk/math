# TensorProduct.piScalarRight_symm_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daaea45e-8c3a-e296-0dda-ff1e4a08b3dd",
  "kind": "theorem",
  "lexical_name": "TensorProduct.piScalarRight_symm_algebraMap",
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
  "slug": "tensorproduct-piscalarright-symm-algebramap--05eaa66e6b4cb6277fac1fdc",
  "source": {
    "blob": "df3d0bb95bffe8fab9c6bdc984b060ff19cded00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 114,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant1c0eab3fe1a37292d6ea9efeecdc172807b7ba32e16873a42c1ae4976f384321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05eaa66e6b4cb6277fac1fdc56a8a11319c8f4f2c7529991eced2da1f2c0e16e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant1c0eab3fe1a37292d6ea9efeecdc172807b7ba32e16873a42c1ae4976f384321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daaea45e-8c3a-e296-0dda-ff1e4a08b3dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TensorProduct.piScalarRight_symm_algebraMap
    (R : Type*) [CommSemiring R] (S : Type*) [CommSemiring S] [Algebra R S]
    (ι : Type*) [Fintype ι] [DecidableEq ι]
    {N : Type*} [Semiring N] [Algebra R N] [Module S N] [IsScalarTower R S N]
    (x : ι → R) :
    (TensorProduct.piScalarRight R S N ι).symm (algebraMap _ _ x) = 1 ⊗ₜ[R] x := by
  simp [Algebra.algebraMap_eq_smul_one, Pi.smul_def', LinearEquiv.symm_apply_eq,
    piScalarRight_apply, piScalarRightHom_tmul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant1c0eab3fe1a37292d6ea9efeecdc172807b7ba32e16873a42c1ae4976f384321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant1c0eab3fe1a37292d6ea9efeecdc172807b7ba32e16873a42c1ae4976f384321.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3d0bb95bffe8fab9c6bdc984b060ff19cded00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
