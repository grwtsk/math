# hasSMul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1de15480f27d6d4fbfe8ddce433cb7f3b652e5ff065aa93b0836676560686c78",
  "kind": "instance",
  "lexical_name": "hasSMul'",
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
  "slug": "hassmul--e049ddc6fb4920ee5b6e2304",
  "source": {
    "blob": "83d5919086a85cd4a94e72f9290d6fe3ce94e71e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 235,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e049ddc6fb4920ee5b6e2304fe84977d4aa37a9a9ad9bf9e06b209fe77c5c825",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1de15480f27d6d4fbfe8ddce433cb7f3b652e5ff065aa93b0836676560686c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasSMul' : SMul R₁ (⨂[R] i, s i) :=
  ⟨fun r ↦
    liftAddHom (fun f : R × ∀ i, s i ↦ tprodCoeff R (r • f.1) f.2)
      (fun r' f i hf ↦ by simp_rw [zero_tprodCoeff' _ f i hf])
      (fun f ↦ by simp [zero_tprodCoeff]) (fun r' f i m₁ m₂ ↦ by simp [add_tprodCoeff])
      (fun r' r'' f ↦ by simp [add_tprodCoeff', mul_add]) fun z f i r' ↦ by
      simp [smul_tprodCoeff, mul_smul_comm]⟩
#align pi_tensor_product.has_smul' PiTensorProduct.hasSMul'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantfc280aa79494b2e7c869f841d9ea3d06d46afe829fa7b0fd1eb013c2ab85adef.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83d5919086a85cd4a94e72f9290d6fe3ce94e71e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
