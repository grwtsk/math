# pointwiseDistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a92a7ac38862fca2befabffffcd33b37b068a3ba7bc1016245fb987aff80911c",
  "kind": "def",
  "lexical_name": "pointwiseDistribMulAction",
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
  "slug": "pointwisedistribmulaction--3937d2ebc59b24a2b4ed27ba",
  "source": {
    "blob": "f8f9f6daf5da630f9380d0ab8c70ab8ce3cafc79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 201,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3937d2ebc59b24a2b4ed27ba509beefa1af5212b4d6c794af03a370f46ee9a99",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a92a7ac38862fca2befabffffcd33b37b068a3ba7bc1016245fb987aff80911c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def pointwiseDistribMulAction : DistribMulAction α (Submodule R M)
    where
  smul a S := S.map (DistribMulAction.toLinearMap R M a : M →ₗ[R] M)
  one_smul S :=
    (congr_arg (fun f : Module.End R M => S.map f) (LinearMap.ext <| one_smul α)).trans S.map_id
  mul_smul _a₁ _a₂ S :=
    (congr_arg (fun f : Module.End R M => S.map f) (LinearMap.ext <| mul_smul _ _)).trans
      (S.map_comp _ _)
  smul_zero _a := map_bot _
  smul_add _a _S₁ _S₂ := map_sup _ _ _
#align submodule.pointwise_distrib_mul_action Submodule.pointwiseDistribMulAction

scoped[Pointwise] attribute [instance] Submodule.pointwiseDistribMulAction

open Pointwise

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f9f6daf5da630f9380d0ab8c70ab8ce3cafc79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
