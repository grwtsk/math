# CuspForm.equivCuspFormSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6d99c9636c48367921d33cde4fd783ec6ee7545e110c4e723440bf8101062fc",
  "kind": "def",
  "lexical_name": "CuspForm.equivCuspFormSubmodule",
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
  "slug": "cuspform-equivcuspformsubmodule--ebb3b84b66a9f483ab231840",
  "source": {
    "blob": "744d39b463246f970727dc9dfeb8df2d8f7fb191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebb3b84b66a9f483ab231840c022f5ecb4c83141f2e64b53747b8d92a7d697a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6d99c9636c48367921d33cde4fd783ec6ee7545e110c4e723440bf8101062fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CuspForm.equivCuspFormSubmodule (Γ : Subgroup (GL (Fin 2) ℝ)) (k : ℤ) [Γ.HasDetOne] :
    CuspForm Γ k ≃ₗ[ℂ] cuspFormSubmodule Γ k :=
  LinearEquiv.ofInjective CuspForm.toModularFormₗ CuspForm.toModularFormₗ_injective

/-- The underlying modular form (via `toModularFormₗ`) of a `CuspForm` is itself a cusp form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variant8d01a7e010fd1c7a4eac62a0b81851c26d11817f99f2758036a5999194bd2305.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744d39b463246f970727dc9dfeb8df2d8f7fb191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
