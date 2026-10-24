# coe_liftLie_eq_lift_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feae8615-b8e4-e263-bb33-588c90854e83",
  "kind": "theorem",
  "lexical_name": "coe_liftLie_eq_lift_coe",
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
  "slug": "coe-liftlie-eq-lift-coe--a29cbd5a481b8d8843cf1f43",
  "source": {
    "blob": "6ccdaf001a6adc160cb13ab277b0d9bbe149c2d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 126,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a29cbd5a481b8d8843cf1f43b95f4d7b568cb5323d1ee971d0c53c766d9f4c1a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feae8615-b8e4-e263-bb33-588c90854e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_liftLie_eq_lift_coe (f : M →ₗ⁅R,L⁆ N →ₗ[R] P) :
    ⇑(liftLie R L M N P f) = lift R L M N P f := by
  suffices (liftLie R L M N P f : M ⊗[R] N →ₗ[R] P) = lift R L M N P f by
    rw [← this, LieModuleHom.coe_toLinearMap]
  ext m n
  simp only [liftLie, LinearEquiv.trans_apply, LieModuleEquiv.coe_to_linearEquiv,
    coe_linearMap_maxTrivLinearMapEquivLieModuleHom, coe_maxTrivEquiv_apply,
    coe_linearMap_maxTrivLinearMapEquivLieModuleHom_symm]
#align tensor_product.lie_module.coe_lift_lie_eq_lift_coe TensorProduct.LieModule.coe_liftLie_eq_lift_coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ccdaf001a6adc160cb13ab277b0d9bbe149c2d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
