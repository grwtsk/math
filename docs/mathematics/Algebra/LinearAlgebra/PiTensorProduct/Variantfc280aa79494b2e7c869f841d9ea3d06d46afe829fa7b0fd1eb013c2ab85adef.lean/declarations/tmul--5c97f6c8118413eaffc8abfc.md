# tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bea8d983e38b557e73bbc0b68e685840b667e8e2e14ae54a81a83b136dcdc45c",
  "kind": "def",
  "lexical_name": "tmul",
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
  "slug": "tmul--5c97f6c8118413eaffc8abfc",
  "source": {
    "blob": "83d5919086a85cd4a94e72f9290d6fe3ce94e71e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 594,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c97f6c8118413eaffc8abfcc1cd040ca33ef903e312ad1387c6bc461e971340",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bea8d983e38b557e73bbc0b68e685840b667e8e2e14ae54a81a83b136dcdc45c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 594–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tmul : ((⨂[R] _ : ι, M) ⊗[R] ⨂[R] _ : ι₂, M) →ₗ[R] ⨂[R] _ : Sum ι ι₂, M :=
  TensorProduct.lift
    { toFun := fun a ↦
        PiTensorProduct.lift <|
          PiTensorProduct.lift (MultilinearMap.currySumEquiv R _ _ M _ (tprod R)) a
      map_add' := fun a b ↦ by simp only [LinearEquiv.map_add, LinearMap.map_add]
      map_smul' := fun r a ↦ by
        simp only [LinearEquiv.map_smul, LinearMap.map_smul, RingHom.id_apply] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean#L594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83d5919086a85cd4a94e72f9290d6fe3ce94e71e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
